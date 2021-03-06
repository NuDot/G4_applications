//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
// $Id$
//
/// \file Sphere1SteppingAction.cc
/// \brief Implementation of the Sphere1SteppingAction class

#include "Sphere1SteppingAction.hh"

#include "Sphere1EventAction.hh" //use this to access the fake reco vertex

#include "Sphere1DetectorConstruction.hh"

#include "G4Step.hh"
#include "G4RunManager.hh"
#include "G4UnitsTable.hh"
//#include "G4ParticleDefinition.hh"
#include "G4ParticleTypes.hh"
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#include <G4OpBoundaryProcess.hh> //***



Sphere1SteppingAction* Sphere1SteppingAction::fgInstance = 0;

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

Sphere1SteppingAction* Sphere1SteppingAction::Instance()
{
// Static acces function via G4RunManager 

  return fgInstance;
}      

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

Sphere1SteppingAction::Sphere1SteppingAction()
: G4UserSteppingAction(),
  fVolume(0),
  fEnergy(0.),
  fPE(0),
  fForwardHit(0),
  fBackwardHit(0)
{ 
  fgInstance = this;

  //open file for the photon hit positions
  hit_positions_file.open("output/photon_hits.txt",std::ios::app);
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

Sphere1SteppingAction::~Sphere1SteppingAction()
{ 
  fgInstance = 0;
  hit_positions_file.close();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void Sphere1SteppingAction::UserSteppingAction(const G4Step* step)
{
  // get volume of the current step
  G4LogicalVolume* volume 
    = step->GetPreStepPoint()->GetTouchableHandle()
      ->GetVolume()->GetLogicalVolume();
      
  // check if we are in scoring volume
  if (volume == fVolume ) 
   {
     // collect energy and track length step by step
     G4double edep = step->GetTotalEnergyDeposit();
     fEnergy += edep;
   }



  // code from Peter Gumplinger (G4 forum) to get the Status of G4OpBoundaryProcess
  G4Material* m1 =  step->GetPreStepPoint()->GetPhysicalVolume()->GetLogicalVolume()->GetMaterial();
  G4Material* m2 =  step->GetPostStepPoint()->GetPhysicalVolume()->GetLogicalVolume()->GetMaterial(); 

  G4OpBoundaryProcessStatus status = Undefined;

  if(m1!=m2){
    G4ProcessManager* pm =   step->GetTrack()->GetDefinition()->GetProcessManager();
    G4int nprocesses = pm->GetProcessListLength();
    G4ProcessVector* pv = pm->GetProcessList();
    for(G4int i=0;i<nprocesses;i++){
      if((*pv)[i]->GetProcessName()=="OpBoundary"){
        G4OpBoundaryProcess* boundary = (G4OpBoundaryProcess*)(*pv)[i];
        status=boundary->GetStatus();
        //G4cout << "The boundary status is: " << status << G4endl; 
        //break;
      }
    }
  }
  // end of P.Gumplinger's code

  // if photon hits the sphere this code is executed: retrieve info about the photon hit and store it to a file
  if(step->GetTrack()->GetDefinition() == G4OpticalPhoton::OpticalPhotonDefinition())
    {
      G4LogicalVolume* volume2
        = step->GetPostStepPoint()->GetTouchableHandle()
        ->GetVolume()->GetLogicalVolume(); 
      if (volume2 == fVolume ) 
        {           

          //G4cout << "*****************************************************************************" << G4endl;  
          //G4cout << "Track status: " << step->GetTrack()->GetTrackStatus() << G4endl; 
          //G4cout << "Is good for tracking: " << step->GetTrack()->IsGoodForTracking() << G4endl;
          //G4cout << "*****************************************************************************" << G4endl;
          G4int process;
           
        if(step->GetTrack()->GetCreatorProcess())
          {       
          //get the creator process
          if(step->GetTrack()->GetCreatorProcess()->GetProcessName()=="Cerenkov")
            { process=1; }
          else if(step->GetTrack()->GetCreatorProcess()->GetProcessName()=="Scintillation") 
            { process=0; }
          else
            {
               G4cout << "Warning: An optical photon hit the sphere which was not created by either Scintillation or Cerenkov. The creator process is " << step->GetTrack()->GetCreatorProcess()->GetProcessName() << G4endl;
              process=-1;
            }
          }
        else {G4cout << "No Creator Process. Probably the photon which hit the sphere is the primary particle." << G4endl;}  
          //const G4ThreeVector & position = step->GetTrack()->GetPosition(); This is an idealization, in reality one can not determine the exact hit point of the photon on the photodetector
          G4double x_hit=step->GetTrack()->GetPosition().getX();
          G4double y_hit=step->GetTrack()->GetPosition().getY();
          G4double z_hit=step->GetTrack()->GetPosition().getZ();

          //get the true position of the original e-
          G4double x_true=Sphere1EventAction::Instance()->GetTrueVertex_X();
          G4double y_true=Sphere1EventAction::Instance()->GetTrueVertex_Y();
          G4double z_true=Sphere1EventAction::Instance()->GetTrueVertex_Z();

          //coordinate system and angle conventions: The center of the coordinate system is at the event's true (or reconstructed) vertex. The x,y,z axes orientation is specified by Geant4. We define a vector V which points from the vertex to the PMT hit position. Theta is the polar angle (measured relative to the z axis), Phi is the azimuthal angle which is 0 when the vector is in the x,z plane and 90 deg. when the vector is in the y,z plane.It goes from -180 degree to 180 degree (vector in -y direction has phi=-90 deg.) The original neutrinos are in z direction (for now). 

          //calulate the angle between the original neutrino momentum direction (Note: hardcoded to be (0,0,1)) and the photon hit
          G4double cos_theta = (z_hit-z_true)/std::sqrt((x_hit-x_true)*(x_hit-x_true) + (y_hit-y_true)*(y_hit-y_true) + (z_hit-z_true)*(z_hit-z_true));

          // use the fake vertex now.  
          G4double x_fake=Sphere1EventAction::Instance()->GetFakeRecoVertex_X();
          G4double y_fake=Sphere1EventAction::Instance()->GetFakeRecoVertex_Y();
          G4double z_fake=Sphere1EventAction::Instance()->GetFakeRecoVertex_Z();

          G4double cos_theta_reco = (z_hit-z_fake)/std::sqrt((x_hit-x_fake)*(x_hit-x_fake)+(y_hit-y_fake)*(y_hit-y_fake)+(z_hit-z_fake)*(z_hit-z_fake));
          //calculate polar and azimuthal angles using the fake vertex:  
          G4double theta_reco=acos(cos_theta_reco);  //polar (angle with respect to the z axis).

         
          G4double phi_reco=atan2( (y_hit-y_fake), (x_hit-x_fake) );
          //G4cout << "cos_theta_reco= " << cos_theta_reco << ", theta_reco= " << theta_reco << ", phi_reco= " << phi_reco << G4endl; 
 
          //get the energy(wavelength) of the photon
          G4double photon_energy=step->GetTrack()->GetDynamicParticle()->GetKineticEnergy();
          G4double photon_wavelength=1.2398*0.001/photon_energy;
 
          //get the global time (=time since the event was started) for the photon hits
          G4double photon_hittime=step->GetTrack()->GetGlobalTime();
          
          G4int det=0;
          G4bool det_coverage=false;

          //apply additional simple time smearing due to vertex reco uncertainty
          //time_after_PMT=neutrinotexRecoSpread(time_after_PMT);
          //apply TTS of PMT: 

          G4double time_after_PMT=photon_hittime;
          time_after_PMT=ApplyTransitTimeSpread(time_after_PMT);

          //returns 1 if photon hits the 22% covered by PMT
          det_coverage=ApplyCoverage();


          if(status==SpikeReflection)
            {
              //G4cout << "The photon is reflected and not recorded as a hit. The status is: " << status << G4endl;
            }
          if(status==Absorption)
            {
              //G4cout << "The photon is absorbed but not detected (including QE of PMTs). The status is: " << status << G4endl;                   
            }
          if(status==Detection)
            {

              det=1; //det is set to one if photon makes a PE!
              //G4cout << "The photon is absorbed and detected (including QE of PMTs) if coverage is 1. The status is: " << status << G4endl;                       
            }


          //calculate the TOF corrected time for each hit. TTS has already been applied. 
          G4double photon_hittime_corrected = CorrectHitTime(photon_hittime,x_hit,y_hit,z_hit);
          G4double time_after_PMT_corrected = CorrectHitTime(time_after_PMT,x_hit,y_hit,z_hit);



           //if the photon creates a PE (coverage included) and if the time cut is satisfied we count forward and backward hits. 
           // Note that this can be counted afterwards from photon_hits.txt but not event-by-event. Implement proper event-by-event readout later.
           if(det_coverage ==1 && det==1)
                {
                  //G4cout << "The photon hit a PMT (coverage included and created a PE (QE of PMT included). We set the PEcreation to 1. The status is: " << status << G4endl;
                  fPE+=1;
                  //? 
                  if(time_after_PMT_corrected<5.84)
                    {
                      if(cos_theta_reco>0) // forward hit: cos_theta_reco > 0. 
                        {
                          fForwardHit+=1;
                        }
                      else fBackwardHit+=1;
                    }   
                }
            
          //get a copy of the active event ID (there is probably a much more elegant way to get the event from here, this is just my solution)
          G4int eventID = Sphere1EventAction::Instance()->GetCopyOfEventID();
          //write hit info to file
          hit_positions_file << x_hit << " " << y_hit << " " << z_hit << " " << cos_theta << " " << photon_wavelength << " " << photon_hittime  << " " << det << " " << time_after_PMT << " " << det_coverage << " " << photon_hittime_corrected  << " " << time_after_PMT_corrected << " " << cos_theta_reco << " " << theta_reco << " " << phi_reco << " " << process << " " << eventID << "\n";        
  
        }
             
    }
  return;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void Sphere1SteppingAction::Reset()
{
  fEnergy = 0.;
  fPE=0;
  fForwardHit = 0;
  fBackwardHit = 0;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4double Sphere1SteppingAction::ApplyVertexRecoSpread(G4double time_in)
{  
   //? not used anymore
   G4double time_out = time_in + G4RandGauss::shoot(0.,0.59); //29.98 cm/ns divided by n(404nm)=1.462 is the effective speed of light (n at center of gravity for detected photons) if we have a 12cm vertex resolution this corresponds to 0.59ns. This is a very simple model since the timeshift depends on the PMT position relative to the bias direction of the vertex-reco. We will replace this later with a better model.  

   //G4cout << "The fake reco vertex is (x,y,z)= (" << Sphere1EventAction::Instance()->GetFakeRecoVertex_X() <<"," << Sphere1EventAction::Instance()->GetFakeRecoVertex_Y() << "," << Sphere1EventAction::Instance()->GetFakeRecoVertex_Z() << ")." << G4endl;
   return time_out; 
}  

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4double Sphere1SteppingAction::ApplyTransitTimeSpread(G4double true_time)
{

  //for now we just apply a gaussian smearing with the transit time spread as sigma. 
  //Later one can implement asymmetric TTS and Pre-, After- and Late Pulses 
  //?
  G4double detection_time = true_time + G4RandGauss::shoot(0.,0.1);  
  //KamLAND 17 inch PMTs only, 3.0 is the FWHM, 1.28ns is the sigma (Nucl. Phys. B 87 (2000) 312
  //new hybrid PMTs have TTS=0.7ns, 0.299ns is the sigma (FWHM)
  //LAPPD :100ps now, they can maybe do 10ps soon and 1ps is the dream.


  //G4cout << "G4UniformRand()= " << G4UniformRand() << "  photon_hittime= " << true_time << G4endl;
  // 0.0427 (sigma) or 0.10 (FWHM). This 100ps TTS is for the LAPPDs, they can maybe do 10ps soon and 1ps is the dream. 
  return detection_time; 
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4bool Sphere1SteppingAction::ApplyCoverage()
{
  G4bool hit_PMT=false;
  //?
  if(G4UniformRand()<0.22) // photocathode coverage 22% (KamLAND 17inch PMTs only) hardcoded for now. 
    {
      hit_PMT=true; 
    }
  return hit_PMT;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4double Sphere1SteppingAction::CorrectHitTime(G4double time_in, G4double x_hit, G4double y_hit, G4double z_hit)
{

  G4double x_fake=Sphere1EventAction::Instance()->GetFakeRecoVertex_X();
  G4double y_fake=Sphere1EventAction::Instance()->GetFakeRecoVertex_Y();
  G4double z_fake=Sphere1EventAction::Instance()->GetFakeRecoVertex_Z();
  
  /* 
  //just for debugging: use true vertex here
  G4double x_fake=Sphere1EventAction::Instance()->GetTrueVertex_X();
  G4double y_fake=Sphere1EventAction::Instance()->GetTrueVertex_Y();
  G4double z_fake=Sphere1EventAction::Instance()->GetTrueVertex_Z();
  */

  G4double distance = sqrt((x_hit-x_fake)*(x_hit-x_fake) + (y_hit-y_fake)*(y_hit-y_fake) + (z_hit-z_fake)*(z_hit-z_fake));
  //G4double t_correction = distance/(299.8/1.6) - 6500./(299.8/1.6);  //1.462 is the refractive index at lambda = 396.76 nm, group velocity -> 1.531 is the effective refractive index
  //?
  G4double t_correction = distance/(299.8/1.5284) - 1150./(299.8/1.5284); //This neff=1.5231 corresponds to the mean lambda 392.6 which create PEs if the attenuation length is infinite.  1.5284 corresponds to 408.1 nm after smoothing of n(lambda). 408.1nm is the mean lambda for both scint. and cerenkov after absorption and QE application. 
  G4double time_out = time_in - t_correction;
  
  return time_out;

}

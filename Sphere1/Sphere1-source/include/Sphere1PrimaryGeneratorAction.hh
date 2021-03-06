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
/// \file Sphere1PrimaryGeneratorAction.hh
/// \brief Definition of the Sphere1PrimaryGeneratorAction class

#ifndef Sphere1PrimaryGeneratorAction_h
#define Sphere1PrimaryGeneratorAction_h 1

#include "G4VUserPrimaryGeneratorAction.hh"
#include "G4ParticleGun.hh"
#include "G4HEPEvtInterface.hh"
#include "globals.hh"

class G4ParticleGun;
class G4VPrimaryGenerator;

class G4Event;
class Sphere1DetectorConstruction;


/// The primary generator action class with particle gun.
///
/// The default kinematic is a 6 MeV gamma, randomly distribued 
/// in front of the phantom across 80% of the (X,Y) phantom size.

class Sphere1PrimaryGeneratorAction : public G4VUserPrimaryGeneratorAction
{
  public:
    Sphere1PrimaryGeneratorAction();    
    virtual ~Sphere1PrimaryGeneratorAction();

    // static access method
    static const Sphere1PrimaryGeneratorAction* Instance();

    // method from the base class
    virtual void GeneratePrimaries(G4Event*);         
  
    // method to access particle gun
    const G4ParticleGun* GetParticleGun() const { return fParticleGun; }

    void SetOptPhotonPolar();
    void SetOptPhotonPolar(G4double angle);
  
  private:
    static Sphere1PrimaryGeneratorAction* fgInstance;
   
    G4ParticleGun*  fParticleGun; // pointer a to G4 gun class
    G4VPrimaryGenerator* HEPEvt;

};

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#endif



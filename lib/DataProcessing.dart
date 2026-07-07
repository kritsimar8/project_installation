

class Ampere {
double? newAmp;
 double? oldAmp;

   Ampere({this.newAmp, this.oldAmp});
}

class DPressure{
double? newDPress;
double? oldDPress;

  DPressure({this.newDPress, this.oldDPress});
}

class SPressure{
double? newSPress;
double? oldSPress;

SPressure({this.newSPress, this.oldSPress});

} 

class InTemp{
double? newInTemp;
double? oldInTemp;

InTemp({this.newInTemp, this.oldInTemp});
}

class OutTemp{
double? newOutTemp;
double? oldOutTemp; 

OutTemp({this.newOutTemp, this.oldOutTemp});
}

class SuctionTemp{
double? newSTemp; 
double? oldSTemp; 

  SuctionTemp({this.newSTemp, this.oldSTemp});

}

class MyWeight{
  double TotalWeight;
  double consumedWt;

  MyWeight({required this.TotalWeight, required this.consumedWt});
}


class CFMIn {
double oldCfm;
double NewCfm;

CFMIn({required this.oldCfm, required this.NewCfm});
}

class CFMOut {
  double oldCfm; 
  double NewCfm;

  CFMOut ({required this.oldCfm, required this.NewCfm});
}

class AmbientTemp{
  double? ambientTemp;

  AmbientTemp({required this.ambientTemp});
}

class GasFlow{
  double? oldState;
  double? newState;

  GasFlow ({required this.oldState, required this.newState});
}
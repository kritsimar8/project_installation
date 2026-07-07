import 'package:installation_project/DataProcessing.dart';
import 'package:installation_project/checking.dart';

class AmpereValue {
  Ampere AmpereVal = Ampere(oldAmp: 1, newAmp: -.15);
  double? prevAmp;
  double? currentAmp;
  bool introCheck = false;

  void UpdateAmpValues(double AmpValFromMqtt) {
    if (introCheck == false) {
      prevAmp = 1.0;
      introCheck = true;
    } else {
      prevAmp = currentAmp;
    }

    currentAmp = AmpValFromMqtt;

    AmpereVal = Ampere(oldAmp: prevAmp, newAmp: currentAmp);
  }
}

class PressureValues {
  SPressure SucPressure = SPressure(oldSPress: -120, newSPress: 120);
  DPressure DisPressure = DPressure(oldDPress: -120, newDPress: 120);
  bool introcheck = false;

  double? prevSPress;
  double? prevDPress;

  double? currentSPress;
  double? currentDPress;
  MyIndicators SPressIndicator = MyIndicators(
    IndicatorNo: 5,
    isAboveThreshold: true,
  );
  MyIndicators DPressIndicator = MyIndicators(
    IndicatorNo: 5,
    isAboveThreshold: true,
  );

  void UpdatePressurevalues(double SPressFromMqtt, double DPressFromMqtt) {
    if (introcheck == false) {
      prevSPress = prevDPress = -120;

      introcheck = true;
    } else {
      prevSPress = currentSPress;
      prevDPress = currentDPress;
    }
    currentSPress = SPressFromMqtt;
    currentDPress = DPressFromMqtt;
    SPressIndicator.isAboveThreshold = SPressFromMqtt > 0 ? true : false;
    DPressIndicator.isAboveThreshold = DPressFromMqtt > 0 ? true : false;
    SPressIndicator.IndicatorNo = ((SPressFromMqtt / 24).round()).abs();
    DPressIndicator.IndicatorNo = ((DPressFromMqtt / 24).round()).abs();

    SucPressure = SPressure(oldSPress: prevSPress, newSPress: currentSPress);
    DisPressure = DPressure(oldDPress: prevDPress, newDPress: currentDPress);
  }
}

class TemperatureValues {
  double? prevSTemp;
  double? prevInTemp;
  double? prevOutTemp;

  double? currentSTemp;
  double? currentInTemp;
  double? currentOutTemp;
  double? currentambientTemp;
  bool introCheck = false;
  MyIndicators InTempIndicator = MyIndicators(
    IndicatorNo: 5,
    isAboveThreshold: true,
  );
  MyIndicators OutTempIndicator = MyIndicators(
    IndicatorNo: 5,
    isAboveThreshold: true,
  );

  SuctionTemp STemp = SuctionTemp(oldSTemp: 1, newSTemp: 2.0);
  InTemp InTemperature = InTemp(oldInTemp: -120, newInTemp: 120);
  OutTemp OutTemperature = OutTemp(oldOutTemp: -120, newOutTemp: 120);
  AmbientTemp AmbientTempVal = AmbientTemp(ambientTemp:0);

  void UpdateTempValues(
    double STempFromMqtt,
    double InTempFromMqtt,
    double OutTempFromMqtt,
    double AmbTempFromMqtt
  ) {
    if (introCheck == false) {
      prevSTemp = 1.0;
      prevInTemp = prevOutTemp = -120;

      introCheck = true;
    } else {
      prevSTemp = currentSTemp;
      prevInTemp = currentInTemp;
      prevOutTemp = currentOutTemp;
    }
    currentSTemp = STempFromMqtt;
    currentInTemp = InTempFromMqtt;
    currentOutTemp = OutTempFromMqtt;
    currentambientTemp = AmbTempFromMqtt;
    InTempIndicator.IndicatorNo = ((InTempFromMqtt / 24).round()).abs();
    OutTempIndicator.IndicatorNo = ((OutTempFromMqtt / 24).round()).abs();
    InTempIndicator.isAboveThreshold = InTempFromMqtt > 0 ? true : false;
    OutTempIndicator.isAboveThreshold = OutTempFromMqtt > 0 ? true : false;

    STemp = SuctionTemp(oldSTemp: prevSTemp, newSTemp: currentSTemp);
    InTemperature = InTemp(oldInTemp: prevInTemp, newInTemp: currentInTemp);
    OutTemperature = OutTemp(
      oldOutTemp: prevOutTemp,
      newOutTemp: currentOutTemp,
    );
    AmbientTempVal = AmbientTemp(ambientTemp:currentambientTemp);
  }
}

class WeightsValue {
  double? currentTotWt;
  double? currentConsWt;

  MyWeight weightsData = MyWeight(TotalWeight: 100, consumedWt: 100);

  void UpdateWeightsValue(double TotWtFromMqtt, double ConsWtFromMqtt) {
    currentTotWt = ((TotWtFromMqtt / 10).ceil() / 10);
    currentConsWt = ((ConsWtFromMqtt / 10).ceil() / 10);

    weightsData = MyWeight(
      TotalWeight: currentTotWt!,
      consumedWt: currentConsWt!,
    );
  }
}

class CFMValues {
  double? prevCfmIn;
  double? prevCfmOut;
  double? currentCfmIn;
  double? currentCfmOut;
  bool introCheck = false;

  CFMIn CfmInVal = CFMIn(oldCfm: 6, NewCfm: 6);
  CFMOut CfmOutval = CFMOut(oldCfm: 6, NewCfm: 6);

  void UpdateCfmValues(double InDataFromMqtt, double OutDataFromMqtt) {
    if(introCheck == false){
      prevCfmIn = prevCfmOut =6; 

      introCheck = true;
    }else{
      prevCfmIn = currentCfmIn;
      prevCfmOut = currentCfmOut;
    }


   currentCfmIn = InDataFromMqtt;
   currentCfmOut = OutDataFromMqtt;

   CfmInVal = CFMIn(oldCfm:prevCfmIn!, NewCfm:currentCfmIn!);
   CfmOutval = CFMOut(oldCfm:prevCfmOut!, NewCfm:currentCfmOut!);
  }
}


class HumidityValue{
  int? HumVal ;


  void UpdateHumidity(double HumDataFromMqtt){
    HumVal = HumDataFromMqtt.round();
  }
}


class GasIndicator{
  double? prevIndicator=0; 
  double? currentIndicator; 
  bool introCheck = false;
  GasFlow myGasFlow = GasFlow(oldState: 0,newState:60);


  void UpdateGasIndicator(double GasIndFromMqtt) {

    if (introCheck == false){
      prevIndicator = 0;
      introCheck = true;
    }else{
      prevIndicator = currentIndicator;
    }
    currentIndicator = GasIndFromMqtt;
    myGasFlow = GasFlow(oldState:prevIndicator, newState:currentIndicator);
    

  }


}
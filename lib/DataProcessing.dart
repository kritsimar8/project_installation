class dataProcessing{

 

  
  // getters would be there on which selector will work in widgets which will animate the gauges. Of Type Values 

  int initialVal = 0;
  void MqttData(Ampere AmpVal){
    if (initialVal ==0){
      //Normal animation 
    }else{
      // data received fromm mqtt would be animated
    }
  }

}


class Ampere {
int? NewAmp;
 int? OldAmp;

   Ampere({this.NewAmp, this.OldAmp});
}

// class TimePass {
//   Ampere? lalu;


//   crazyFunc(){
   
//   lalu = Ampere(NewAmp: 'hello', OldAmp: 'bie');
//     print(lalu?.NewAmp);
//   }
// }
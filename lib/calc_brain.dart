import 'dart:math';
class CalcBrain{
  CalcBrain({this.height,this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calcBMI(){
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >= 25.0){
      return 'ዘረጦ';
    }else if(_bmi >= 18.5){
      return 'ጤናማ';
    }else{
      return 'ደቃቃ';
    }
  }
  String getStr(){
    if(_bmi >= 25.0){
      return 'አረ አንዳንዴም ከእራቷ ቅነስ ለኔ ብጤው';
    }else if(_bmi>= 18.5){
      return 'ማይመጣ መስሎዎት እንዳይጋደሙ ወጣብለው ዙጥ ዙጥ';
    }else{
      return 'እረ ቤተሰብ አያሰድቡ አሁን ምግብ ጠፍቶ ነው';
    }
  }
}
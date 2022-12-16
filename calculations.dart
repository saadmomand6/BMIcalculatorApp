
//import 'dart:math';


class Bmibrain {
  final int weight;
  final int height;

  Bmibrain( this.height,  this.weight);

  late final double _bmi;

  String calculate() {
     _bmi = (weight / height / height) * 10000;
   // _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

   getresult() {
    if(_bmi<18.5){
      return 'Underweight';
    }else if(_bmi>=18.5 && _bmi<=24.5){
      return 'Normal weight';
    }else if(_bmi>24.5) {
      return 'Over weight';

    }
  }
  getadvice() {
    if(_bmi<18.5){
      return 'You have lower then normal body weight! try to eat more';
    }else if(_bmi>=18.5 && _bmi<=24.5){
      return 'You have a normal body weight good job';
    }else if(_bmi>24.5) {
      return 'You have higher weight! try to do more exercise';

    }
  }
}
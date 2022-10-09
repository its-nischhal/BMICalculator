import 'dart:math';
class CalculatorBrain{

  final int height;
  final int weight;
  late double bmi;
  CalculatorBrain({required this.height ,required this.weight});
  String calculateBMI() {
    bmi = (weight / pow(height / 100, 2));
    return bmi.toStringAsFixed(1);
  }
  String getResult(){
    bmi = (weight / pow(height / 100, 2));
    if(bmi>=25){
      return 'OverWeight';
    }
    else if(bmi>18.5){
      return 'Normal';
    }
    else{
      return 'UnderWeight';
    }
  }
  String getInterpretation() {
    bmi = (weight / pow(height / 100, 2));
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    else if (bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!!';
    }
    else{
      return 'You have a lower than normal body weight. You can eat a bit more';
    }
  }
}
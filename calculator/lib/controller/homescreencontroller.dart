import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Homescreecontroller extends GetxController{
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
var sum=0.0;
void applyOp({required String op}) {
    
      final b = double.tryParse(num2.text.trim());
      final a = double.tryParse(num1.text.trim());
      var result=0.0;
      switch (op) {
        case '+':
          result = a! + b!;
          break;
        case '-':
          result = a! - b!;
          break;
        case '*':
          result = a! * b!;
          break;
        case '/':
          result = a! / b!;
          break;
        default:
          throw Exception('Invalid operator');
      }
      sum=result;
      update();
   }


}
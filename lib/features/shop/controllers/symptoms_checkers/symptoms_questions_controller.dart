import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_app/features/shop/screens/symptoms_result/symptoms_result_screen.dart';

enum ResultLevel { low, mid, high }

class SymptomsQuestionsController extends GetxController{
  static SymptomsQuestionsController get instance => Get.find();

  final questions = <String>[
    'Have you been feeling unusual tiredness or weakness lately?',
    'Have you noticed easy bruising or bleeding?',
    'Have you noticed bloating or abdominal swelling?',
    'Have you had a blood transfusion or organ transplant (especially years ago)?',
    'Have your stools been pale or clay-colored?',
    'Have you noticed yellowing of your eyes or skin (jaundice)?',
    'Have you been experiencing itchy skin without a clear cause?',
    'Have you been feeling nauseous or vomiting?',
    'Have you noticed a loss of appetite?',
    'Is your urine darker than usual?',
  ].obs;

  final currentIndex = 0.obs;
  late RxList<bool?> answers;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    answers = List<bool?>.filled(questions.length, null).obs;
  }

  int get totalScore {
    return answers.where((a) => a == true).length;
  }

  /// Result category
  ResultLevel get resultLevel {
    if (totalScore <= 3) {
      return ResultLevel.low;
    } else if (totalScore <= 5) {
      return ResultLevel.mid;
    } else {
      return ResultLevel.high;
    }
  }

  double get progress {
    return (currentIndex.value + 1) / questions.length;
  }

  // void selectAnswer (bool value){
  //   answers[currentIndex.value] = value;
  // }

  void selectAnswer(bool? value) {
    if (value == null) return;
    answers[currentIndex.value] = value;
  }

  void nextQuestion(){
    if(currentIndex.value < questions.length - 1){
      currentIndex.value ++;
    } else {
      Get.snackbar(
        'Done',
        'Here is your result',
        backgroundColor: Colors.blue[400],
        duration: Duration(seconds: 5),
        //colorText: MyColors.darkBlue
      );
      Get.to(SymptomsResultScreen());
    }
  }


}
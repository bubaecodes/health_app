import 'package:get/get.dart';
import 'package:health_app/features/shop/models/health_tips/health_tips_model.dart';
import 'package:health_app/utils/constants/image_strings.dart';

class HealthTipsController extends GetxController{
  static HealthTipsController get instance => Get.find();

  final items = <HealthTipsModel>[
    HealthTipsModel(image: MyImages.homeHealthCareLogo2, text: 'Diet & Nutrition'),
    HealthTipsModel(image: MyImages.homeTodoLogo, text: 'Liver Check Modules'),
    HealthTipsModel(image: MyImages.homeSafeSex, text: 'Practice Safe Sex'),
    HealthTipsModel(image: MyImages.homeHealthCareLogo1, text: 'Modern Hygiene'),
  ].obs;
}
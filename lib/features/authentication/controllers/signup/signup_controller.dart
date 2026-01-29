import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  final isPasswordVisible = false.obs;
  final isPrivacyChecked = false.obs;

  void openWebsite(String link) async {
    final Uri url = Uri.parse(link);

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      Get.snackbar('Error', 'Could not open link');
    }
  }

}
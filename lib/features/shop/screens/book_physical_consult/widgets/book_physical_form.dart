import 'package:flutter/material.dart';
import 'package:health_app/utils/constants/colors.dart';

class BookPhysicalForm extends StatelessWidget {
  const BookPhysicalForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenWidth * 0.127,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Enter reason for visit',
          hintStyle: TextStyle(
            fontSize: 14,
            fontFamily: 'Quicksand',
            fontVariations: [FontVariation('wght', 400)],
            color: isDark ? Colors.grey[500] : MyColors.darkBlue,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: MyColors.darkBlue, width: 0.2),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';
import 'package:whatsapp_clone/constants/constants.dart';

class CallsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppTextDisplay(
        translation: AppStrings.callsPagePlaceholder,
        textStyle: AppTextStyles.pagePlaceholder,
      ),
    );
  }
}

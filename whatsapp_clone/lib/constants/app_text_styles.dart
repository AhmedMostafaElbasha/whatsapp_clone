import 'package:flutter/material.dart';
import 'package:whatsapp_clone/constants/constants.dart';

class AppTextStyles {
  static TextStyle get pagePlaceholder {
    return TextStyle(fontSize: 20.0);
  }

  static TextStyle get senderName {
    return TextStyle(fontWeight: FontWeight.bold);
  }

  static TextStyle get messageDeliveryTime {
    return TextStyle(
      color: AppColors.grey,
      fontSize: 14.0,
    );
  }

  static TextStyle get deliveredMessage {
    return TextStyle(
      color: AppColors.grey,
      fontSize: 15.0,
    );
  }

  static TextStyle get viewedUpdates {
    return TextStyle(
      color: AppColors.grey,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get userStatus {
    return TextStyle(fontWeight: FontWeight.bold);
  }
}

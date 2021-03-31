import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/data/data.dart';
import 'package:whatsapp_clone/constants/constants.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';

class ChatItem extends StatelessWidget {
  final Chat chat;

  ChatItem(this.chat);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: ScreenUtil().setHeight(10),
        ),
        ListTile(
          leading: CircleAvatar(
            foregroundColor: Theme.of(context).primaryColor,
            backgroundColor: AppColors.grey,
            backgroundImage: NetworkImage(chat.imageUrl),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTextDisplay(
                text: chat.name,
                textStyle: AppTextStyles.senderName,
              ),
              AppTextDisplay(
                text: chat.time,
                textStyle: AppTextStyles.messageDeliveryTime,
              ),
            ],
          ),
          subtitle: Container(
            child: Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(5),
              ),
              child: AppTextDisplay(
                text: chat.message,
                textStyle: AppTextStyles.deliveredMessage,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

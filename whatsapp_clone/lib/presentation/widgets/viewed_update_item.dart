import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';
import 'package:whatsapp_clone/constants/constants.dart';

class ViewedUpdateItem extends StatelessWidget {
  final ViewedUpdate viewedUpdate;

  ViewedUpdateItem(this.viewedUpdate);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(viewedUpdate.imageUrl),
      ),
      title: AppTextDisplay(
        text: viewedUpdate.contactName,
        textStyle: AppTextStyles.userStatus,
      ),
      subtitle: AppTextDisplay(
        text: viewedUpdate.date,
      ),
      onTap: () => Navigator.pushNamed(context, AppRoutes.storyVuew),
    );
  }
}

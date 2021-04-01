import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsapp_clone/constants/constants.dart';
import 'package:whatsapp_clone/data/data.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.extraLightShadeGrey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _myStatusListTile(),
            _viewedUpdatesListTitle(),
            Container(
              height: ScreenUtil().screenHeight * 0.7,
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(8),
                vertical: ScreenUtil().setHeight(8),
              ),
              color: AppColors.white,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ViewedUpdateItem(viewedUpdates[index]);
                },
                itemCount: viewedUpdates.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _viewedUpdatesListTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(8),
        vertical: ScreenUtil().setHeight(8),
      ),
      child: AppTextDisplay(
        translation: AppStrings.viewedUpdates,
        textStyle: AppTextStyles.viewedUpdates,
      ),
    );
  }

  Card _myStatusListTile() {
    return Card(
      color: AppColors.white,
      elevation: 0.0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(8),
          vertical: ScreenUtil().setHeight(8),
        ),
        child: ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://s3.amazonaws.com/wll-community-production/images/no-avatar.png',
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 1.0,
                child: Container(
                  height: ScreenUtil().setHeight(20),
                  width: ScreenUtil().setWidth(20),
                  child: Icon(
                    AppIcons.add,
                    color: AppColors.white,
                    size: 15,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          title: AppTextDisplay(
            translation: AppStrings.myStatus,
            textStyle: AppTextStyles.userStatus,
          ),
          subtitle: AppTextDisplay(
            translation: AppStrings.tapToAddStatusUpdate,
          ),
        ),
      ),
    );
  }
}

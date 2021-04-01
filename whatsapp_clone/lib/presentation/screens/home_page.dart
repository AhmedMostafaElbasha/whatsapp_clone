import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:whatsapp_clone/constants/constants.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';
import 'package:whatsapp_clone/utilities/utilities.dart';
import 'package:camera/camera.dart';

class HomePage extends StatefulWidget {
   final List<CameraDescription> cameras;

   HomePage({this.cameras});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTextDisplay(text: 'WhatsApp'),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.white,
          tabs: [
            Tab(
              icon: Icon(AppIcons.camera),
            ),
            Tab(
              text: AppLocalizations.of(context).translate(AppStrings.chatsTab),
            ),
            Tab(
              text:
                  AppLocalizations.of(context).translate(AppStrings.statusTab),
            ),
            Tab(
              text: AppLocalizations.of(context).translate(AppStrings.callsTab),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(5)),
            child: GestureDetector(
              child: Icon(AppIcons.search),
              onTap: () {},
            ),
          ),
          GestureDetector(
            child: Icon(AppIcons.moreVertical),
            onTap: () {},
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(cameras: widget.cameras),
          ChatsPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
      floatingActionButton: showFab
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(
                AppIcons.message,
                color: AppColors.white,
              ),
            )
          : null,
    );
  }
}

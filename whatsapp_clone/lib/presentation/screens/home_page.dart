import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';
import 'package:whatsapp_clone/constants/constants.dart';
import 'package:whatsapp_clone/presentation/presentation.dart';
import 'package:whatsapp_clone/utilities/utilities.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  bool showFab = true;

  @override
  void initState() {
    // TODO: implement initState
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
          IconButton(
            icon: Icon(AppIcons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(AppIcons.moreVertical),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

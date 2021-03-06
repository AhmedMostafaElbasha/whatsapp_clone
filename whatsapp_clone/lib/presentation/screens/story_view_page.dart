import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:whatsapp_clone/constants/constants.dart';

class StoryViewPage extends StatelessWidget {
  StoryController _storyController = StoryController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: _storyController,
        inline: false,
        repeat: false,
        onComplete: () => Navigator.pop(context),
      ),
    );
  }

  List<StoryItem> get storyItems {
    return [
      StoryItem.text(
        title: '''If you do not make time for your wellness,
you will be forced to make time for your illness.
#ReadThatAgain''',
        backgroundColor: AppColors.red,
      ),
      StoryItem.pageImage(
        url:
            'https://images.unsplash.com/photo-1541233349642-6e425fe6190e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
        controller: _storyController,
      ),
      StoryItem.pageImage(
        url: 'https://techcrunch.com/wp-content/uploads/2015/08/safe_image.gif',
        controller: _storyController,
        imageFit: BoxFit.contain,
      ),
    ];
  }
}

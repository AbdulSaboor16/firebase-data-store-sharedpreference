import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:story_view/story_view.dart';

class StoryScreen extends StatelessWidget {
  final StoryController controller;
  final List<StoryItem> StoryItems;
  const StoryScreen({
    super.key,
    required this.controller,
    required this.StoryItems,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        controller:  controller,
        onStoryShow: (s){
          print(s);
        },
        onComplete: (){
          print("complete");
          Navigator.pop(context);
        },
        onVerticalSwipeComplete: (direction){
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        },
        storyItems: StoryItems,
      ),
    );
  }
}
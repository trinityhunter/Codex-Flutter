import 'package:flutter/material.dart';
import 'package:instagram/Accounts.dart';
import 'package:instagram/ProfilePage.dart';
import 'package:instagram/main.dart';
import 'package:story/story_image.dart';
import 'package:story/story_page_view.dart';

class StoryPage extends StatefulWidget {
  final String imgUrl;

  final String name;

  final UserModel userModel;

  final List<Accounts> accounts;

  const StoryPage(
      {super.key,
      required this.imgUrl,
      required this.name,
      required this.userModel,
      required this.accounts});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;

  @override
  void initState() {
    super.initState();
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.resume);
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
        itemBuilder: (context, pageIndex, storyIndex) {
          final user = widget.accounts[pageIndex];
          final story = widget.userModel.stories[storyIndex];
          return Stack(
            children: [
              Positioned.fill(
                child: Container(color: Colors.black),
              ),
              Positioned.fill(
                child: StoryImage(
                  key: ValueKey(story.imageUrl),
                  imageProvider: AssetImage(
                    user.imgUrl,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44, left: 8),
                child: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(user.imgUrl),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      user.name,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        gestureItemBuilder: (context, pageIndex, storyIndex) {
          return Stack(children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  color: Colors.white,
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            // if (pageIndex == 0)
            // Center(
            //   child: ElevatedButton(
            //     child: const Text('show modal bottom sheet'),
            //     onPressed: () async {
            //       indicatorAnimationController.value =
            //           IndicatorAnimationCommand.pause;
            //       await showModalBottomSheet(
            //         context: context,
            //         builder: (context) => SizedBox(
            //           height: MediaQuery.of(context).size.height / 2,
            //           child: Padding(
            //             padding: const EdgeInsets.all(24),
            //             child: Text(
            //               'Look! The indicator is now paused\n\n'
            //               'It will be coutinued after closing the modal bottom sheet.',
            //               style: Theme.of(context).textTheme.headlineSmall,
            //               textAlign: TextAlign.center,
            //             ),
            //           ),
            //         ),
            //       );
            //       indicatorAnimationController.value =
            //           IndicatorAnimationCommand.resume;
            //     },
            //   ),
            // ),
          ]);
        },
        indicatorAnimationController: indicatorAnimationController,
        initialStoryIndex: (pageIndex) {
          // if (pageIndex == 0) {
          //   return 1;
          // }
          return 0;
        },
        pageLength: widget.accounts.length,
        storyLength: (int pageIndex) {
          // return sampleUsers[pageIndex].stories.length;
          return widget.accounts[pageIndex].userModel.stories.length;
        },
        onPageLimitReached: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

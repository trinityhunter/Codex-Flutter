import 'dart:math';

import 'package:flutter/material.dart';
import 'package:reels_viewer/reels_viewer.dart';

class Reelspage extends StatefulWidget {
  const Reelspage({super.key});

  @override
  State<Reelspage> createState() => _ReelspageState();
}

class _ReelspageState extends State<Reelspage> {
  List<ReelModel> reelsList = [
    ReelModel(
        'https://assets.mixkit.co/videos/preview/mixkit-tree-with-yellow-flowers-1173-large.mp4',
        'Darshan Patil',
        likeCount: 2000,
        isLiked: true,
        musicName: 'In the name of Love',
        reelDescription: "Life is better when you're laughing.",
        profileUrl:
            'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
        commentList: [
          ReelCommentModel(
            comment: 'Nice...',
            userProfilePic:
                'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
            userName: 'Darshan',
            commentTime: DateTime.now(),
          ),
          ReelCommentModel(
            comment: 'Superr...',
            userProfilePic:
                'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
            userName: 'Darshan',
            commentTime: DateTime.now(),
          ),
          ReelCommentModel(
            comment: 'Great...',
            userProfilePic:
                'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
            userName: 'Darshan',
            commentTime: DateTime.now(),
          ),
        ]),
    ReelModel(
      'https://assets.mixkit.co/videos/preview/mixkit-father-and-his-little-daughter-eating-marshmallows-in-nature-39765-large.mp4',
      'Rahul',
      musicName: 'In the name of Love',
      reelDescription: "Life is better when you're laughing.",
      profileUrl:
          'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
    ),
    ReelModel(
      'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
      'Rahul',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ReelsViewer(
      reelsList: reelsList,
      appbarTitle: 'Instagram Reels',
      onShare: (url) {
        print('Shared reel url ==> $url');
      },
      onLike: (url) {
        print('Liked reel url ==> $url');
      },
      onFollow: () {
        print('======> Clicked on follow <======');
      },
      onComment: (comment) {
        print('Comment on reel ==> $comment');
      },
      onClickMoreBtn: () {
        print('======> Clicked on more option <======');
      },
      onClickBackArrow: () {
        print('======> Clicked on back arrow <======');
        Navigator.pop(context);
      },
      onIndexChanged: (index) {
        print('======> Current Index ======> $index <========');
      },
      showProgressIndicator: true,
      showVerifiedTick: true,
      showAppbar: true,
    );
  }
}

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../../core/constance/images/images_assets.dart';
import '../../../widget/post.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        PostCard(
          username: 'John Doe',
          profileImage: profile1,
          timestamp: 'Just now',
          content:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        ),
        PostCard(
          username: 'Jane Smith',
          profileImage: profile2,
          timestamp: '2 hrs ago',
          content:
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        ),
        PostCard(
          username: 'Benjamin loise',
          profileImage: profile3,
          timestamp: '3 hrs ago',
          content:
              "Enjoying a beautiful day at the beach with friends! ☀️🏖️ #BeachLife #FriendsForever",
        ),
        PostCard(
          username: 'Alexander jo',
          profileImage: profile4,
          timestamp: '5 hrs ago',
          content:
              'Excited to announce the launch of my new website! Check it out and let me know what you think. 🚀💻 #WebsiteLaunch #NewBeginnings',
        ),
        PostCard(
          username: 'Matthew jane',
          profileImage: profile5,
          timestamp: '6 hrs ago',
          content:
              "Had an amazing time exploring the vibrant streets of Tokyo. The food, culture, and people here are incredible! 🗼🌸 #TravelDiaries #TokyoAdventures",
        ),

        // Add more post cards here...
      ],
    );
  }
}

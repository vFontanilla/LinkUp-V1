import 'package:flutter/material.dart';
import 'package:link_up_v1/widgets/feed_card.dart';

class FeedItem {
  final String username;
  final String handle;
  final String time;
  final String title;
  final String description;
  final String location;
  final String image1;
  final String image2;

  const FeedItem({
    required this.username,
    required this.handle,
    required this.time,
    required this.title,
    required this.description,
    required this.location,
    required this.image1,
    required this.image2,
  });
}

class HomeFeedScreen extends StatelessWidget {
  const HomeFeedScreen({super.key});

  final List<FeedItem> feedData = const [
    FeedItem(
      username: 'Alin Sublin',
      handle: '@alinsublin12',
      time: '1h ago',
      title: 'Achievement Unlocked for me!',
      description: 'Started my day with a 60-min walk and lemon water. Small steps = big changes!',
      location: 'Jakarta, Indonesia',
      image1: 'assets/images/1.png',
      image2: 'assets/images/1.png',
    ),
    FeedItem(
      username: 'Mariana Jalerina',
      handle: '@rianarjln',
      time: '3h ago',
      title: 'Work Session in Afternoon',
      description: 'Just finished my evening stretch. My back says thank you',
      location: 'Manila, Philippines',
      image1: 'assets/images/2.png',
      image2: 'assets/images/3.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: feedData.length,
        itemBuilder: (context, index) {
          final item = feedData[index];
          return Column(
            children: [
              FeedCard(
                username: item.username,
                handle: item.handle,
                time: item.time,
                title: item.title,
                description: item.description,
                location: item.location,
                image1: item.image1,
                image2: item.image2,
              ),
              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}

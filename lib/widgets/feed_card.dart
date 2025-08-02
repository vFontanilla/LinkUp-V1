import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {
  final String username;
  final String handle;
  final String time;
  final String title;
  final String description;
  final String location;
  final String image1;
  final String image2;

  const FeedCard({
    super.key,
    required this.username,
    required this.handle,
    required this.time,
    required this.title,
    required this.description,
    required this.location,
    required this.image1,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage('assets/images/deflogo.jpg')),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username, style: const TextStyle(fontWeight: FontWeight.bold)),
                    Text('$handle · $time', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                  ],
                ),
                const Spacer(),
                TextButton(onPressed: () {}, child: const Text('Follow')),
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
              ],
            ),
            const SizedBox(height: 8),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(description),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(child: Image.asset(image1, height: 120, fit: BoxFit.cover)),
                const SizedBox(width: 8),
                Expanded(child: Image.asset(image2, height: 120, fit: BoxFit.cover)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.location_on, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(location, style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

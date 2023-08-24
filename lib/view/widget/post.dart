// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  final String username;
  final String profileImage;
  final String timestamp;
  final String content;

  const PostCard({
    super.key,
    required this.username,
    required this.profileImage,
    required this.timestamp,
    required this.content,
  });

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  int likes = 0;

  void likePost() {
    setState(() {
      likes++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(widget.profileImage),
            ),
            title: Text(
              widget.username,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(widget.timestamp),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.content),
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: likePost,
              ),
              Text('$likes'),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {
                  // Add comment functionality
                },
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {
                  // Add share functionality
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

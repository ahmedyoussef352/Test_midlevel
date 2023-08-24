// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../core/constance/colors/colors.dart';

class PostItem extends StatelessWidget {
  String title;
  String body;
  PostItem({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurStyle: BlurStyle.inner,
            color: yellow.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            body,
            style: TextStyle(color: grey.shade500, wordSpacing: 2),
          ),
        ),
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        onTap: () {
          // Handle tap on the list item
        },
      ),
    );
  }
}

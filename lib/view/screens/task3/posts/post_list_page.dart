// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/data/auth_service/crud.dart';
import 'package:task1/view/widget/post_task3.dart';
import '../../../../core/constance/colors/colors.dart';
import '../../../../data/models/post_model.dart';
import '../../../components/componenets.dart';

class PostListPage extends StatefulWidget {
  const PostListPage({super.key});

  @override
  _PostListPageState createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  List<Post> posts = [];
  Crud crud = Crud();

  @override
  void initState() {
    super.initState();
    crud.fetchPosts().then((fetchedPosts) {
      setState(() {
        posts = fetchedPosts;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
        elevation: 0,
        title: const Text('Posts'),
      ),
      body: posts.isEmpty
          ? showLoadingIndicator()
          : ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                Post post = posts[index];
                return PostItem(title: post.title, body: post.body);
              },
            ),
    );
  }
}

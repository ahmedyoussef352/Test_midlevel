import 'package:flutter/material.dart';

import '../../../../core/constance/colors/colors.dart';
import 'profile/profile.dart';
import 'home_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  child: TabBar(
                    labelColor: blue,
                    unselectedLabelColor: grey,
                    tabs: [
                      Tab(
                        text: 'Home',
                        icon: Icon(
                          Icons.home,
                          size: 30.0,
                          color: blue,
                        ),
                      ),
                      Tab(
                        text: 'Profile',
                        icon: Icon(
                          Icons.person,
                          size: 30.0,
                          color: blue,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    HomeTab(),
                    ProfileInfo(),
                  ],
                )),
              ],
            ),
          ),
        ));
  }
}

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/view/screens/task1/login/login_screen.dart';
import 'package:task1/view/screens/task2/counter/counter_screen.dart';
import 'package:task1/view/screens/task2/shooping_cart/shopping_cart_page.dart';
import 'package:task1/view/screens/task3/posts/post_list_page.dart';
import 'package:task1/view/screens/task3/weather/weather_page.dart';

import 'core/constance/colors/colors.dart';
import 'core/provider/counter_provider.dart';

void main() {
  runApp(const Task1());
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class Task2Part1 extends StatelessWidget {
  const Task2Part1({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        title: 'Counter App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: blue,
        ),
        home: const CounterScreen(),
      ),
    );
  }
}

class Task2Part2 extends StatelessWidget {
  const Task2Part2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShoppingCartPage(),
    );
  }
}

class Task3Part1 extends StatelessWidget {
  const Task3Part1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Posts',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PostListPage(),
    );
  }
}

class Task3Part2 extends StatelessWidget {
  const Task3Part2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WeatherPage(),
    );
  }
}

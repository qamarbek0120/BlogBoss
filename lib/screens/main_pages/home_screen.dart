import 'package:boss_blog/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 32),
          width: double.infinity,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.black,
              ),
            ),
            color: kBackgroundColor,
          ),
          child: Row(),
        ),
      ),
    );
  }
}

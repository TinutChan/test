import 'package:flutter/material.dart';
import 'package:homework/widgets/custom_tabbar.dart';

class BorrowScreen extends StatelessWidget {
  const BorrowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'BOOK LENDING',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: StandardTabBarPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

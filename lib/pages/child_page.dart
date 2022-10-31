import 'package:flutter/material.dart';
import 'package:homework/models/book_lendingmodel.dart';
import 'package:homework/widgets/custom_cardwidget.dart';

class ChildPage extends StatelessWidget {
  const ChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: ListView(
        padding: const EdgeInsets.only(right: 10),
        shrinkWrap: true,
        children: Book_LendingModel.map((e) {
          return CustomCardWidget(
            image: e.image,
            title: e.title,
            subtitle: e.subtitle,
            year: e.year,
            onPressed: () {},
          );
        }).toList(),
      ),
    );
  }
}

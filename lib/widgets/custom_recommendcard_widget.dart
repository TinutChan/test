import 'package:flutter/material.dart';

class CustomRecommendCardWidget extends StatelessWidget {
  const CustomRecommendCardWidget(
      {super.key,
      this.image,
      this.title,
      this.subtitle,
      this.year,
      this.onPressed});

  final String? image;
  final String? title;
  final String? subtitle;
  final String? year;
  final GestureTapCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7.0),
      padding: const EdgeInsets.all(8.0),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 8,
            blurStyle: BlurStyle.solid,
            offset: Offset(0.5, 0.5),
            spreadRadius: 0.16,
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 15.0),
            height: 150,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage('$image'),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$title'),
                Text('$subtitle'),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$year'),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber),
                      onPressed: onPressed,
                      child: Row(
                        children: const [
                          Text(
                            ('Borrow'),
                          ),
                          Icon(Icons.double_arrow_rounded)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:homework/models/book_recommend_model.dart';
import 'package:homework/widgets/custom_recommendcard_widget.dart';

import '../widgets/custom_icon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> listImg = [
    'assets/images/badman.jpg',
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'ENJOY READING',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.only(left: 10.0),
                decoration: BoxDecoration(
                  color: const Color(0xffdee2e6).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for books',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(0.3, 0),
                        color: Colors.grey,
                        spreadRadius: 2)
                  ],
                ),
                width: double.infinity,
                child: CarouselSlider.builder(
                  itemCount: listImg.length,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      listImg[itemIndex],
                      fit: BoxFit.cover,
                    ),
                  ),
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 0.9,
                    aspectRatio: 1.0,
                    initialPage: 0,
                    height: 150,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0.5, 0),
                      blurRadius: 8,
                      spreadRadius: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CustomIconWidget(
                      icons: Icons.library_books,
                      title: 'book',
                    ),
                    CustomIconWidget(
                      icons: Icons.favorite,
                      title: 'reading',
                    ),
                    CustomIconWidget(
                      icons: Icons.public,
                      title: 'square',
                    ),
                    CustomIconWidget(
                      icons: Icons.grid_view,
                      title: 'more',
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  'RECOMMEND',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.only(right: 10),
                  shrinkWrap: true,
                  children: RecommendBookModel.map((e) {
                    return CustomRecommendCardWidget(
                      image: e.image,
                      title: e.title,
                      subtitle: e.subtitle,
                      year: e.year,
                      onPressed: () {},
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

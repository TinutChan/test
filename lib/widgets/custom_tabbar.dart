import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/custom_tab_bar.dart';
import 'package:flutter_custom_tab_bar/indicator/custom_indicator.dart';
import 'package:flutter_custom_tab_bar/indicator/standard_indicator.dart';
import 'package:flutter_custom_tab_bar/transform/color_transform.dart';
import 'package:flutter_custom_tab_bar/transform/scale_transform.dart';
import 'package:homework/pages/child_page.dart';

class StandardTabBarPage extends StatefulWidget {
  const StandardTabBarPage({Key? key}) : super(key: key);

  @override
  _StandardTabBarPageState createState() => _StandardTabBarPageState();
}

class _StandardTabBarPageState extends State<StandardTabBarPage> {
  final int pageCount = 4;
  final PageController _controller = PageController();

  final List _page = ['Child', 'Human', 'Education', 'Science'];

  final CustomTabBarController _tabBarController = CustomTabBarController();

  @override
  void initState() {
    super.initState();
  }

  Widget getTabbarChild(BuildContext context, int index) {
    return TabBarItem(
      index: index,
      transform: ScaleTransform(
        maxScale: 1.3,
        transform: ColorsTransform(
          normalColor: Colors.black,
          highlightColor: Colors.black,
          builder: (context, color) {
            return Container(
              padding: const EdgeInsets.all(2),
              alignment: Alignment.center,
              constraints: const BoxConstraints(minWidth: 70),
              child: (Text(
                '${_page[index]}',
                style: TextStyle(
                  fontSize: 16,
                  color: color,
                ),
              )),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomTabBar(
            tabBarController: _tabBarController,
            height: 35,
            itemCount: pageCount,
            builder: getTabbarChild,
            indicator: StandardIndicator(
              width: 20,
              height: 3,
              color: Colors.yellow,
            ),
            pageController: _controller,
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pageCount,
              itemBuilder: (context, index) {
                return const ChildPage();
              },
            ),
          ),
        ],
      ),
    );
  }
}

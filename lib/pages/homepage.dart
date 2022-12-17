import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uitemplate/components/bottombar.dart';
import 'package:uitemplate/theme/glass_box.dart';

import '../components/appbar.dart';
import '../components/tabbar.dart';
import '../tabs/recent_tab.dart';
import '../tabs/top_tab.dart';
import '../tabs/trending_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _searchButtonTapped() {}
  List tabOptions = const [
    ['Recent', RecentTab()],
    ['Trending', TrendingTab()],
    ['Top', TopTab()],
  ];

  //bottom Nav Bar Navigation
  int _currentBottomIndex = 0;
  void _handleBottomIndexChange(int? index){
    setState(() {
      _currentBottomIndex = index!;

    });
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

        length: tabOptions.length,
        child: Scaffold(
          bottomNavigationBar: GlassBox(
            child: MyBottomBar(
              index: _currentBottomIndex,
              onTap: _handleBottomIndexChange,
            ),
          ),
          backgroundColor: Colors.grey[300],
          extendBody: true,
          body: ListView(
            children: [
              MyAppBar(
                title: 'Live Request',
                onTap: _searchButtonTapped,
              ),
              SizedBox(
                height: 600,
                child: MyTabBar(
                  tabOptions: tabOptions,
                ),
              ),
            ],
          ),

    ),
    );
  }
}

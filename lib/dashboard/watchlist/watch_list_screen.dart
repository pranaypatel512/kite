import 'package:flutter/material.dart';

import '../../widgets/empty_widget.dart';

class WatchlistScreen extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Tab 1'),
    Tab(text: 'Tab 2'),
    Tab(text: 'Tab 3'),
    Tab(text: 'Tab 4'),
    Tab(text: 'Tab 5'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Column(
        children: [
          TabBar(tabs: myTabs),
          Expanded(
            child: TabBarView(
              children: myTabs.map((Tab tab) {
                return WatchlistTabContent(tabTitle: tab.text!);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class WatchlistTabContent extends StatelessWidget {
  final String tabTitle;

  const WatchlistTabContent({super.key, required this.tabTitle});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/empty_state.svg';

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Search',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        Expanded(
          child:
    EmptyStateWidget(title: 'No Data Available',
    subTitle:'Try adding items to your $tabTitle.' ,assetName: assetName,),
        ),
      ],
    );
  }
}

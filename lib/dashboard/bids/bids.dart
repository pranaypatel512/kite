import 'package:flutter/material.dart';

import '../../widgets/empty_widget.dart';

class BidsScreen extends StatelessWidget {
  final List<Tab> bidsTabs = <Tab>[
    const Tab(text: 'Auctions'),
    const Tab(text: 'IPO'),
    const Tab(text: 'Govt. Securities'),
  ];

  BidsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: bidsTabs.length,
      child:  Column(
          children: [
           TabBar(tabs: bidsTabs),
         Expanded(
           child: TabBarView(
            children: bidsTabs.map((Tab tab) {
              return BidsTabContent(tabTitle: tab.text!);
            }).toList(),
                   ),
         ),
    ]));
  }
}

class BidsTabContent extends StatelessWidget {
  final String tabTitle;

  const BidsTabContent({super.key, required this.tabTitle});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/empty_state.svg';
    return EmptyStateWidget(title: 'No $tabTitle Bids',
      subTitle:'You don\'t have any $tabTitle bids at the moment.' ,assetName: assetName,);
  }
}

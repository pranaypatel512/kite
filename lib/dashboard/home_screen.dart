import 'package:flutter/material.dart';
import 'package:kite/dashboard/portfolio/portfolio.dart';
import 'package:kite/dashboard/profile/account.dart';
import 'package:kite/dashboard/watchlist/watch_list_screen.dart';

import 'bids/bids.dart';
import 'orders/orders_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  String _title = "Watchlist";

  final List<Widget> _screens = [
    WatchlistScreen(),
    OrdersScreen(),
    PortfolioScreen(),
    BidsScreen(),
    const AccountScreen(),
  ];

  final List<String> _titles = [
    "Watchlist",
    "Orders",
    "Portfolio",
    "Bids",
    "Account",
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _title = _titles[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_title)),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: "Watchlist"),
          BottomNavigationBarItem(icon: Icon(Icons.book_rounded), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.cases_outlined), label: "Portfolio"),
          BottomNavigationBarItem(icon: Icon(Icons.hardware_outlined), label: "Bids"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "Account"),
        ],
      ),
    );
  }
}



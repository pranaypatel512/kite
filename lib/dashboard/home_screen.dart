import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kite/dashboard/portfolio/portfolio.dart';
import 'package:kite/dashboard/profile/account.dart';
import 'package:kite/dashboard/watchlist/watch_list_screen.dart';
import 'package:kite/theme/app_colors.dart';

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
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: AppColors.azure,
        unselectedItemColor: AppColors.white,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/bookmark.svg",
                colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),),
              activeIcon: SvgPicture.asset("assets/bookmark.svg",
                colorFilter: const ColorFilter.mode(AppColors.azure, BlendMode.srcIn),),
              label: "Watchlist"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/book.svg",
                colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),),
              activeIcon: SvgPicture.asset("assets/book.svg",
                colorFilter: const ColorFilter.mode(AppColors.azure, BlendMode.srcIn),),
              label: "Orders"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/briefcase.svg",
                colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),),
              activeIcon: SvgPicture.asset("assets/briefcase.svg",
                colorFilter: const ColorFilter.mode(AppColors.azure, BlendMode.srcIn),),
              label: "Portfolio"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/bids.svg",
                colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),),
              activeIcon: SvgPicture.asset("assets/bids.svg",
                colorFilter: const ColorFilter.mode(AppColors.azure, BlendMode.srcIn),),
              label: "Bids"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/user_icon.svg",
                colorFilter: const ColorFilter.mode(AppColors.white, BlendMode.srcIn),),
              activeIcon: SvgPicture.asset("assets/user_icon.svg",
                colorFilter: const ColorFilter.mode(AppColors.azure, BlendMode.srcIn),),
              label: "Account"),
        ],
      ),
    );
  }
}



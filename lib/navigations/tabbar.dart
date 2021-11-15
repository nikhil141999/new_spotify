import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_spotify/views/home_view.dart';
import 'package:new_spotify/views/library.dart';
import 'package:new_spotify/views/profile.dart';
import 'package:new_spotify/views/search_view.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            this._selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music), label: "Your library"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: Stack(
        children: [
          renderview(
            0,
            HomeView(),
          ),
          renderview(
            1,
            SearchView(),
          ),
          renderview(
            2,
            LibraryView(),
          ),
          renderview(
            3,
            ProfileView(),
          ),
        ],
      ),
    );
  }

  Widget renderview(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}

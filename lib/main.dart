import 'package:flutter/material.dart';
import 'package:spotify/pages/home.dart';
import 'package:spotify/pages/search.dart';

void main() {
  runApp(HomePage());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: [HOME_PAGE(), SEARCH_PAGE()],
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black12, Colors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            iconSize: 30,
            selectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w800,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w800,
            ),
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Головна"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Пошук"),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: "Моя бібліотека",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.contactless_sharp),
                label: "Premium",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "Створити"),
            ],
          ),
        ),
      ),
    );
  }
}

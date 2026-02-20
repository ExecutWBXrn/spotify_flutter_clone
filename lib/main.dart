import 'package:flutter/material.dart';
import 'package:spotify/pages/home.dart';
import 'package:spotify/pages/search.dart';
import 'pages/mylibra.dart';
import 'package:spotify/pages/premium.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter _router;

  final String initialLocation = '/home';

  final _shellKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      initialLocation: initialLocation,
      routes: [
        ShellRoute(
          navigatorKey: _shellKey,
          builder: (context, state, child) {
            return HomePage(child: child);
          },
          routes: [
            GoRoute(path: '/home', builder: (context, state) => HOME_PAGE()),
            GoRoute(
              path: '/search',
              builder: (context, state) => SEARCH_PAGE(),
            ),
            GoRoute(
              path: '/library',
              builder: (context, state) => MY_LIBRARY(),
            ),
            GoRoute(path: '/premium', builder: (context, state) => PREMIUM()),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(theme: ThemeData.dark(), routerConfig: _router);
  }
}

class HomePage extends StatelessWidget {
  final Widget child;

  const HomePage({super.key, required this.child});

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/search')) {
      return 1;
    }
    if (location.startsWith('/library')) {
      return 2;
    }
    if (location.startsWith('/premium')) {
      return 3;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/search');
        break;
      case 2:
        context.go('/library');
        break;
      case 3:
        context.go('/premium');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Premium'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobseeker/src/pages/home.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const MyHomePage(),
        const Scaffold(
          body: Center(
            child: Text("File here"),
          ),
        ),
        const Scaffold(
          body: Center(
            child: Text("bookmark here"),
          ),
        ),
        const Scaffold(
          body: Center(
            child: Text("Chat here"),
          ),
        ),
        const Scaffold(
          body: Center(
            child: Text("Profile here"),
          ),
        ),
      ][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xffea3323),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        elevation: 25,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Foundation.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.file_text),
            label: "File",
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.bookmark),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Entypo.chat),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(MaterialIcons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

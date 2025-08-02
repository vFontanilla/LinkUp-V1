import 'package:flutter/material.dart';
import 'homefeed_screen.dart';     // Your existing home feed screen
import 'event_creation_screen.dart'; // Create this screen
import 'profile_screen.dart';       // Create this screen

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<String> _titles = [
    'Public Events',
    'Create Event',
    'Profile',
  ];

  final List<Widget> _screens = [
    const HomeFeedScreen(),
    const EventCreationScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(64.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            leading: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = 2; // Navigate to Profile tab
                });
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0), // Additional padding inside avatar
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/deflogo.jpg'),
                ),
              ),
            ),
            
            title: Text(
              _titles[_selectedIndex],
              style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),

            backgroundColor: const Color(0xFF4C8D85),
            centerTitle: true,

            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_none, color: Colors.white, size: 30),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),

      body: _screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFF4C8D85),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

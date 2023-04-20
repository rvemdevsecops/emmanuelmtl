import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:emmanuelmtl/pages/church_screen.dart';
import 'package:emmanuelmtl/pages/live_screen.dart';
import 'package:emmanuelmtl/pages/connect_screen.dart';
import 'package:emmanuelmtl/pages/give_screen.dart';
import 'package:emmanuelmtl/pages/more_screen.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hasCallSupport = false;
  Future<void>? _launched;
  String _phone = '';

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    ChurchScreen(),
    LiveScreen(),
    ConnectScreen(),
    GiveScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Uri fbtoLaunch =
        Uri(scheme: 'https', host: 'www.facebook.com', path: 'EmmanuelChurch/');
    final Uri instatoLaunch = Uri(
        scheme: 'https', host: 'www.instagram.com', path: 'emmanuel.church/');
    final Uri yttoLaunch = Uri(
        scheme: 'https', host: 'www.youtube.com', path: '@emmanuelchurchmtl/');
    final Uri churchWebsite =
        Uri(scheme: 'https', host: 'www.emmanuelmtl.com', path: '/');
    return Scaffold(
      drawer: Drawer(
        //backgroundColor: Color(0xFF0A0E21),
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Image.asset('images/emmanuel-logo.png'),
              //Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.my_location,
                color: Colors.black,
              ),
              title: Text(
                'Times & Location',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle_rounded,
                color: Colors.black,
              ),
              title: Text(
                'My Account',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notes,
                color: Colors.black,
              ),
              title: Text(
                'Notes',
                style: TextStyle(color: Colors.black, fontSize: 20.0),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => setState(() {
                    _launched = _launchInBrowser(fbtoLaunch);
                  }),
                  child: Icon(
                    Icons.facebook,
                    color: Colors.black,
                    size: 50.0,
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    _launched = _launchInBrowser(instatoLaunch);
                  }),
                  child: Image(
                    image: AssetImage('images/icons8-instagram-48.png'),
                  ),
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    _launched = _launchInBrowser(yttoLaunch);
                  }),
                  child: Image(
                    image: AssetImage('images/icons8-youtube-48.png'),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => setState(() {
                _launched = _launchInBrowser(churchWebsite);
              }),
              child: Text('Church Website'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset('images/emmanuel-original.png'),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.church),
            label: 'Church',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video),
            label: 'Live',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.connect_without_contact_rounded),
            label: 'Connect',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Give',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_rounded),
            label: 'Mountain',
          ),
        ],
      ),
    );
  }
}

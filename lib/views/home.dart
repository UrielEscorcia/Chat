import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './chats.dart';
import './profile.dart';

class HomeView extends StatefulWidget {
    @override
    _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
    int _currentIndex = 0;
    final List<Widget> _pages = [
        ChatsView(),
        ProfileView()
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _pages[_currentIndex],
            bottomNavigationBar: new BottomNavigationBar( 
                currentIndex: _currentIndex,
                type: BottomNavigationBarType.fixed,
                items: [
                    BottomNavigationBarItem(
                        icon: new Icon(FontAwesomeIcons.comments),
                        title: new Text('Messages'),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(FontAwesomeIcons.flushed),
                        title: Text('Profile')
                    )
                ],
                onTap: (int index){
                    setState(() {
                        _currentIndex = index;                      
                    });
                },
                fixedColor: Theme.of(context).accentColor,
            ),
        );
    }
}
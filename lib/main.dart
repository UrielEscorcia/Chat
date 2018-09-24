import 'package:flutter/material.dart';
import './views/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
        return new MaterialApp(
            title: 'Chat App',
            theme: ThemeData(
                primaryColor: Colors.white,
                accentColor: Color(0xFF9CC2BF),
                primaryIconTheme: Theme.of(context).primaryIconTheme.copyWith(
                    color: Color(0xFF9CC2BF)
                ),
                accentIconTheme: Theme.of(context).accentIconTheme.copyWith(
                    color: Colors.blue
                ),
                primaryTextTheme: Theme.of(context).primaryTextTheme.apply(bodyColor: Color(0xFF9CC2BF))
            ),
            home: HomeView(),
        );
    }

}


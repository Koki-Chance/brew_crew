import 'package:flutter/material.dart';
import 'package:brew_crew/models/brew.dart';

class BrewTile extends StatelessWidget {

  // create brew to access to individual object called "brew"
  final Brew brew;

  // constructor which takes values from return called "BrewTile" in _BrewListState class
  BrewTile({ this.brew });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.brown[brew.strength],
            // coffee cup icon
            backgroundImage: AssetImage('assets/coffee_icon.png'),
          ),
          title: Text(brew.name),
          subtitle: Text('Takes ${brew.sugars} sugar(s)'),
        ),
      ),
    );
  }
}


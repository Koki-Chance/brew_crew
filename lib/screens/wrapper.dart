import 'package:brew_crew/screens/authenticate/authenticate.dart';
import 'package:brew_crew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:brew_crew/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // < > の中身は受け取りたい値の種類を指定する箇所
    final user = Provider.of<User>(context);
    print(user);

    // return either Home or Authenticate widget
    return Authenticate();  
  }
}
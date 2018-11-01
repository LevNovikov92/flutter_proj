import 'package:flutter/material.dart';
import 'package:flutter_proj/domain/adviser.profile.dart';

class AdviserProfileScreen extends StatelessWidget {
  final AdviserProfile profile;

  AdviserProfileScreen(this.profile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("${profile.getFullName()} Profile screen")),
    );
  }

}
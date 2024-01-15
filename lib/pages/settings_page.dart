import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings Page'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Settings Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ProfileApp extends StatefulWidget {
  @override
  _ProfileAppState createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  User? user;

  @override
  void initState() {
    super.initState();
    _retrieveUser();
  }

  Future<void> _retrieveUser() async {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (mounted) {
        setState(() {
          this.user = user;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
        backgroundColor: Color(0xFFFD641D),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              size: 100,
              color: Color(0xFFFD641D), 
            ),
            SizedBox(height: 20),
            Text(
              user?.email ?? 'Not signed in',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
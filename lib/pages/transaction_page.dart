import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Page'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Transaction Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Page'),
      ),
      body: const Center(
        child: Text(
          'Welcome to the Payment Page!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
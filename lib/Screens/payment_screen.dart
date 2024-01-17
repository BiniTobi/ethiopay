import 'package:flutter/material.dart';
import 'package:ethiopay/models/bill.dart';
import 'package:ethiopay/models/receipt.dart';
import 'package:ethiopay/Screens/receipt_screen.dart';
import 'package:ethiopay/services/api_client.dart';

class PaymentScreen extends StatefulWidget {
  final Bill bill;

  PaymentScreen({required this.bill});

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _isLoading = false;

  Future<void> _processPayment() async {
    setState(() {
      _isLoading = true;
    });

    // Simulating API call delay
    await Future.delayed(Duration(seconds: 3));

    // Simulating successful payment
    final receipt = Receipt(
      paymentId: '123456',
      amount: widget.bill.amount,
      currency: 'ETB',
      timestamp: DateTime.now(),
    );

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ReceiptScreen(receipt: receipt),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : ElevatedButton(
                onPressed: _processPayment,
                child: Text('Pay ETB ${widget.bill.amount.toStringAsFixed(2)}'),
              ),
      ),
    );
  }
}
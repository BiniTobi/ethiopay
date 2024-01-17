import 'package:flutter/material.dart';
import 'package:ethiopay/models/receipt.dart';
import 'package:ethiopay/utils/file_utils.dart';

class ReceiptScreen extends StatelessWidget {
  final Receipt receipt;

  ReceiptScreen({required this.receipt});

  Future<void> _downloadReceipt(BuildContext context) async {
    await saveReceiptImage(receipt); // Function to save receipt image to device

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Receipt downloaded successfully!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Payment Successful!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Payment ID: ${receipt.paymentId}',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Amount: ${receipt.amount} ${receipt.currency}',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Timestamp: ${receipt.timestamp}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _downloadReceipt(context),
              child: Text('Download Receipt'),
            ),
          ],
        ),
      ),
    );
  }
}
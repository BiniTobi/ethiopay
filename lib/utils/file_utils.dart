import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:ethiopay/models/receipt.dart';

Future<void> saveReceiptImage(Receipt receipt) async {
  final content =
      'Payment ID: ${receipt.paymentId}\nAmount: ${receipt.amount} ${receipt.currency}\nTimestamp: ${receipt.timestamp}';

  final directory = await getTemporaryDirectory();
  final file = File('${directory.path}/receipt.txt');

  await file.writeAsString(content);
}
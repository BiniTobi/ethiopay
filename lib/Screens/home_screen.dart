import 'package:flutter/material.dart';
import 'package:ethiopay/models/bill.dart';
import 'package:ethiopay/Screens/payment_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Bill> bills = [];

  @override
  void initState() {
    super.initState();
    // Initialize bills with default values
    bills = [
      Bill(
        id: 1,
        title: 'Electricity Bill',
        amount: 0.0,
        dueDate: DateTime.now().add(Duration(days: 7)),
      ),
      Bill(
        id: 2,
        title: 'Water Bill',
        amount: 0.0,
        dueDate: DateTime.now().add(Duration(days: 5)),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Payment'),
      ),
      body: ListView.builder(
        itemCount: bills.length,
        itemBuilder: (context, index) {
          final bill = bills[index];
          return ListTile(
            title: Text(bill.title),
            subtitle: Text('Amount: ETB ${bill.amount.toStringAsFixed(2)}'),
            onTap: () async {
              final double? enteredAmount = await showDialog(
                context: context,
                builder: (BuildContext context) {
                  double? amount;
                  return AlertDialog(
                    title: Text('Enter Amount'),
                    content: TextField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        amount = double.tryParse(value);
                      },
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('Save'),
                        onPressed: () {
                          Navigator.of(context).pop(amount);
                        },
                      ),
                    ],
                  );
                },
              );
              if (enteredAmount != null) {
                setState(() {
                  bill.amount = enteredAmount;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(bill: bill),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromARGB(255, 241, 114, 10),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/bill.gif')),
            Text.rich(
              TextSpan(
                text: "Ethio-Pay",
                style: TextStyle(
                  fontSize: 20,
                ),
                  children: [
                  TextSpan(
                    text: "\nFast and Secure\nPayment Solutions",
                    style: TextStyle(
                      fontStyle: FontStyle.italic, 
                      fontSize: 14, 
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
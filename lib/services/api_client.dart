import 'package:http/http.dart' as http;

class APIClient {
  static final String baseURL = 'https://your-api.com'; 

  Future<void> makePayment(double amount) async {
    // Make API call to process payment
    final response = await http.post(Uri.parse('$baseURL/payments'), body: {
      'amount': amount.toString(),
    });

    if (response.statusCode == 200) {
      // Payment success
      print('Payment successful');
    } else {
      // Payment failure
      print('Payment failed');
    }
  }
}
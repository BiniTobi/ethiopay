class Receipt {
  final String paymentId;
  final double amount;
  final String currency;
  final DateTime timestamp;

  Receipt({
    required this.paymentId,
    required this.amount,
    required this.currency,
    required this.timestamp,
  });
}
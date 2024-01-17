class Bill {
  final int id;
  final String title;
  double amount;
  final DateTime dueDate;

  Bill({
    required this.id,
    required this.title,
    required this.amount,
    required this.dueDate,
  });
}
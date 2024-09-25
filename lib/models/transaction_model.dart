class TransactionModel {
  final String title;
  final String amount;
  final String date;
  final bool iswithdrawed;

  const TransactionModel({
    required this.iswithdrawed,
    required this.title,
    required this.amount,
    required this.date,
  });
}

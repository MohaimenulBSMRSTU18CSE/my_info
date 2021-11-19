class Transition {
  final String id;
  final String title;
  final double amount;
  // ignore: non_constant_identifier_names
  final DateTime tr_date;

  Transition(
      {required this.id,
      required this.title,
      required this.amount,
      // ignore: non_constant_identifier_names
      required this.tr_date});
}

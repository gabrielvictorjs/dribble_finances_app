import '../utils/transaction_types.dart';

class TransactionModel {
  final String title;
  final String description;
  final double value;
  final TransactionType type;

  TransactionModel({
    this.title,
    this.description,
    this.value,
    this.type,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      title: json['title'],
      description: json['description'],
      value: (json['value'] as num).toDouble(),
      type: TransactionTypeParser.convert(json['type']),
    );
  }
}

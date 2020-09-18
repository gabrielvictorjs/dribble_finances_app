import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

enum TransactionType {
  none,
  income,
  expense,
  loan,
}

Map<TransactionType, IconData> get _transactionTypeIcons => {
      TransactionType.income: Icons.arrow_downward,
      TransactionType.expense: Icons.arrow_upward,
      TransactionType.loan: EvaIcons.flagOutline,
    };

extension TransactionTypeX on TransactionType {
  IconData get iconData =>
      _transactionTypeIcons[this] ?? EvaIcons.alertCircleOutline;
}

class TransactionTypeParser {
  static TransactionType convert(String sentence) {
    final mapSentenceToEnum = {
      'income': TransactionType.income,
      'expense': TransactionType.expense,
      'loan': TransactionType.loan,
    };
    return mapSentenceToEnum[sentence] ?? TransactionType.none;
  }
}

import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import '../../utils/currency_formatter.dart';
import 'i_transaction_card_widget.dart';

class HomeTransactionCardWidget extends ITransactionCardWidget {
  final String title;
  final String description;
  final double value;
  final IconData iconData;

  HomeTransactionCardWidget({
    @required this.title,
    @required this.description,
    @required this.value,
    @required this.iconData,
  });

  @override
  Widget renderTitle() {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: AppTypography.bodySmallBold,
    );
  }

  @override
  Widget renderDescription() {
    return Text(
      description,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: AppTypography.tagline.copyWith(
        color: AppColors.dark5.withOpacity(.8),
      ),
    );
  }

  @override
  Widget renderLeading() {
    return Container(
      height: 50,
      width: 50,
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppColors.alternativeBlue,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Icon(iconData),
    );
  }

  @override
  Widget renderAmount() {
    return Text(
      CurrencyFormatter.format(value),
      style: AppTypography.bodySmallBold,
    );
  }
}

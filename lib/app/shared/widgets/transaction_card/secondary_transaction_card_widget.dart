import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import '../../utils/currency_formatter.dart';
import '../svg_icon_widget.dart';
import 'i_transaction_card_widget.dart';

class SecondaryTransactionCardWidget extends ITransactionCardWidget {
  final String title;
  final String description;
  final double value;
  final String iconPath;

  SecondaryTransactionCardWidget({
    @required this.title,
    @required this.description,
    @required this.value,
    @required this.iconPath,
  });

  @override
  Widget renderTitle() {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: AppTypography.bodyBold,
    );
  }

  @override
  Widget renderDescription() {
    return Text(
      description,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: AppTypography.caption.copyWith(
        color: AppColors.dark5.withOpacity(.8),
      ),
    );
  }

  @override
  Widget renderLeading() {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(right: 16),
      child: SvgIconWidget(
        iconPath,
        size: 40,
        color: AppColors.darkBlue,
      ),
    );
  }

  @override
  Widget renderAmount() {
    return Text(
      CurrencyFormatter.format(value),
      style: AppTypography.bodySmallBold.copyWith(
        color: AppColors.darkBlue,
      ),
    );
  }
}

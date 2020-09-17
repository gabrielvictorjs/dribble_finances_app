import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class TotalTransactionAmountWidget extends StatelessWidget {
  final double value;
  final String tag;

  const TotalTransactionAmountWidget({
    Key key,
    @required this.value,
    @required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '\$${value.toInt()}',
          style: AppTypography.bodyRegular.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
        Text(
          tag,
          style: AppTypography.tagline.copyWith(
            color: AppColors.dark3,
          ),
        ),
      ],
    );
  }
}

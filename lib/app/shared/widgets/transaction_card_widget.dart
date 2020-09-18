import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';
import '../utils/currency_formatter.dart';

class TransactionCardWidget extends StatelessWidget {
  final String title;
  final String description;
  final double value;
  final IconData iconData;

  const TransactionCardWidget({
    Key key,
    @required this.title,
    @required this.description,
    @required this.value,
    @required this.iconData,
  })  : assert(title != null),
        assert(description != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 23,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
        boxShadow: AppTheme.boxShadow,
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              color: AppColors.alternativeBlue,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Icon(iconData),
          ),
          _buildTransactionInfo(),
        ],
      ),
    );
  }

  Widget _buildTransactionInfo() {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.bodySmallBold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.tagline.copyWith(
                    color: AppColors.dark5.withOpacity(.8),
                  ),
                ),
              ),
              const SizedBox(width: 13),
              Text(
                CurrencyFormatter.format(value),
                style: AppTypography.bodySmallBold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

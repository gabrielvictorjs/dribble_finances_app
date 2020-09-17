import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

class TransactionCardWidget extends StatelessWidget {
  const TransactionCardWidget({
    Key key,
  }) : super(key: key);

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
            child: Icon(Icons.arrow_upward),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sent',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTypography.bodySmallBold,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Sending Payment to clients',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: AppTypography.tagline.copyWith(
                          color: AppColors.dark5.withOpacity(.8),
                        ),
                      ),
                    ),
                    const SizedBox(width: 13),
                    Text(
                      '\$150',
                      style: AppTypography.bodySmallBold,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

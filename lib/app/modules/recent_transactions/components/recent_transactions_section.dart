import 'package:flutter/material.dart';

import '../../../shared/widgets/transaction_card/secondary_transaction_card_widget.dart';
import '../../../theme/app_theme.dart';

class RecentTransactionsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 26),
      physics: const BouncingScrollPhysics(),
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 26),
          child: Text(
            'Today',
            style: AppTypography.bodyLargeBold.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
        ),
        SecondaryTransactionCardWidget(
          title: 'Payment',
          description: 'Payment from Andrea',
          value: 250,
          iconPath: AppIcons.email,
        ),
      ],
    );
  }
}

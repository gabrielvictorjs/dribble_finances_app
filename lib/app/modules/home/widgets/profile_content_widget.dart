import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import 'total_transaction_amount_widget.dart';

class ProfileContentWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String occupation;
  final double incomeAmount;
  final double expenseAmount;
  final double loanAmount;

  const ProfileContentWidget({
    Key key,
    @required this.imageUrl,
    @required this.name,
    @required this.occupation,
    @required this.incomeAmount,
    @required this.expenseAmount,
    @required this.loanAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13, bottom: 39),
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: 50,
            backgroundColor: AppColors.darkBlue,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 18),
          Text(
            name,
            style: AppTypography.headingBold6.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
          Text(
            occupation,
            style: AppTypography.caption.copyWith(
              color: AppColors.dark3,
            ),
          ),
          const SizedBox(height: 39),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TotalTransactionAmountWidget(
                  tag: 'Income',
                  value: incomeAmount,
                ),
                verticalDivider,
                TotalTransactionAmountWidget(
                  tag: 'Expenses',
                  value: expenseAmount,
                ),
                verticalDivider,
                TotalTransactionAmountWidget(
                  tag: 'Loan',
                  value: loanAmount,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final verticalDivider = const VerticalDivider(
    thickness: 1,
    width: 39,
  );
}

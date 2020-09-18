import 'package:flutter/material.dart';

import '../../shared/widgets/primary_button_widget.dart';
import '../../shared/widgets/text_button_widget.dart';
import '../../theme/app_theme.dart';
import 'components/recent_transactions_section.dart';
import 'widgets/custom_app_bar_widget.dart';
import 'widgets/custom_tabs_widget.dart';

class RecentTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidget(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildPageHeader(),
            CustomTabsWidget(
              tabTitles: ['All', 'Income', 'Expense'],
            ),
            Expanded(
              child: RecentTransactionsSection(),
            ),
            Container(
              padding: const EdgeInsets.all(26).copyWith(top: 13),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 10,
                    spreadRadius: 15,
                    color: AppColors.background,
                  ),
                ],
              ),
              child: PrimaryButtonWidget(
                onTap: () {},
                title: 'See Details',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recent Transactions',
            style: AppTypography.headingBold6.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
          TextButtonWidget(
            onTap: () {},
            title: 'See all',
          ),
        ],
      ),
    );
  }
}

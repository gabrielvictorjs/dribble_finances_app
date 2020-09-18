import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/cubits/customer/customer_cubit.dart';
import '../../../shared/widgets/transaction_card/secondary_transaction_card_widget.dart';
import '../../../theme/app_theme.dart';
import '../utils/connections_images.dart';
import '../widgets/customer_connections/customer_connections_widget.dart';

class RecentTransactionsSection extends StatelessWidget {
  final _customerCubit = Modular.get<CustomerCubit>();

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
        const SizedBox(height: 26),
        _buildCustomerTransactions(),
      ],
    );
  }

  Widget _buildCustomerTransactions() {
    return LayoutBuilder(builder: (_, constraints) {
      final maxWidth = constraints.maxWidth < 400 ? constraints.maxWidth : 400;
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomerConnectionsWidget(
            size: maxWidth.toDouble(),
            customerImageUrl: _customerCubit.state.maybeWhen(
              authenticated: (customer) => customer.imageUrl,
              orElse: () => null,
            ),
            connectionsImages: connectionsImages,
          ),
        ],
      );
    });
  }
}

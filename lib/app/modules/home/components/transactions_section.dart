import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/models/transaction_model.dart';
import '../../../shared/utils/transaction_types.dart';
import '../../../shared/widgets/transaction_card/home_transaction_card_widget.dart';
import '../../../theme/app_theme.dart';
import '../cubits/transactions/transactions_cubit.dart';
import '../widgets/notification_bell_widget.dart';

class TransactionsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          _buildOverviewHeader(),
          const SizedBox(height: 26),
          BlocBuilder<TransactionsCubit, TransactionsState>(
            cubit: Modular.get<TransactionsCubit>(),
            builder: (_, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: state.when(
                  initial: () => Container(),
                  loadInProgress: () => CircularProgressIndicator(),
                  loadSuccess: _buildTransactions,
                  loadFailure: (_) => Text(
                    'Error when trying to load transactions!',
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 26),
        ],
      ),
    );
  }

  Widget _buildTransactions(List<TransactionModel> transactions) {
    if (transactions.isEmpty) {
      return Text('There are no transactions!');
    }

    return Column(
      children: List.generate(
        transactions.length,
        (index) {
          final transaction = transactions[index];

          return HomeTransactionCardWidget(
            title: transaction.title,
            description: transaction.description,
            iconData: transaction.type.iconData,
            value: transaction.value,
          );
        },
      ),
    );
  }

  Widget _buildOverviewHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Overview',
          style: AppTypography.headingBold6.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
        const SizedBox(width: 6),
        NotificationBellWidget(),
        Spacer(),
        Text(
          'Sept 13, 2020',
          style: AppTypography.bodySmallMedium.copyWith(
            color: AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}

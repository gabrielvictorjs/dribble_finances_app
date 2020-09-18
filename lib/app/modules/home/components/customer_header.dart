import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/cubits/customer/customer_cubit.dart';
import '../../../shared/widgets/svg_icon_widget.dart';
import '../../../theme/app_theme.dart';
import '../widgets/custom_icon_button_widget.dart';
import '../widgets/profile_content_widget.dart';

class CustomerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(26),
      padding: EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
        boxShadow: AppTheme.boxShadow,
      ),
      child: Column(
        children: [
          _buildActionMenus(),
          _buildProfileContent(),
        ],
      ),
    );
  }

  Widget _buildProfileContent() {
    return BlocBuilder<CustomerCubit, CustomerState>(
      cubit: Modular.get<CustomerCubit>(),
      builder: (_, state) {
        return state.maybeMap(
          authenticated: (state) {
            return ProfileContentWidget(
              imageUrl: state.customer.imageUrl,
              name: state.customer.name,
              occupation: state.customer.occupation,
              incomeAmount: state.customer.incomeAmount,
              expenseAmount: state.customer.expenseAmount,
              loanAmount: state.customer.loanAmount,
            );
          },
          orElse: () => Container(),
        );
      },
    );
  }

  Widget _buildActionMenus() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButtonWidget(
          onTap: () {},
          icon: SvgIconWidget(AppIcons.burgerMenu),
        ),
        CustomIconButtonWidget(
          onTap: () {},
          icon: SvgIconWidget(AppIcons.moreVertical),
        ),
      ],
    );
  }
}

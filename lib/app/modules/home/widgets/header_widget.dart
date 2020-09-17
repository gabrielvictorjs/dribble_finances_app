import 'package:flutter/material.dart';

import '../../../shared/widgets/svg_icon_widget.dart';
import '../../../theme/app_theme.dart';
import 'custom_icon_button_widget.dart';
import 'profile_content_widget.dart';

const profileImage =
    'https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key key}) : super(key: key);

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
          ProfileContentWidget(
            imageUrl: profileImage,
            name: 'Hira Riaz',
            occupation: 'UX/UI Design',
            incomeAmount: 8900,
            expenseAmount: 5500,
            loanAmount: 890,
          ),
        ],
      ),
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

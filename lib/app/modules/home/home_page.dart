import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/transaction_card_widget.dart';
import '../../theme/app_theme.dart';
import 'components/customer_header.dart';
import 'widgets/bottom_navigation/bottom_navigation_widget.dart';
import 'widgets/notification_bell_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            CustomerHeader(),
            _buildOverviewSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        onItemSelected: print,
        items: [
          NavigationItem(iconData: EvaIcons.homeOutline),
          NavigationItem(iconData: EvaIcons.creditCardOutline),
          NavigationItem(iconData: EvaIcons.plus, isPrimary: true),
          NavigationItem(iconData: Icons.attach_money),
          NavigationItem(iconData: EvaIcons.personOutline),
        ],
      ),
    );
  }

  Widget _buildOverviewSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          _buildOverviewHeader(),
          const SizedBox(height: 26),
          Column(
            children: List.generate(
              3,
              (_) => TransactionCardWidget(
                title: 'Sent',
                description: 'Send payments to client',
                value: 150,
              ),
            ),
          ),
          const SizedBox(height: 26),
        ],
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

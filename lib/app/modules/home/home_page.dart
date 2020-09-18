import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/customer_header.dart';
import 'components/transactions_section.dart';
import 'cubits/transactions/transactions_cubit.dart';
import 'widgets/bottom_navigation/bottom_navigation_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _transactionsCubit = Modular.get<TransactionsCubit>();

  @override
  void initState() {
    super.initState();
    _transactionsCubit.performLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _transactionsCubit.performBackgroundLoading,
          child: ListView(
            children: <Widget>[
              CustomerHeader(),
              TransactionsSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(
        onItemSelected: (_) => Modular.to.pushNamed('/recent-transactions'),
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
}

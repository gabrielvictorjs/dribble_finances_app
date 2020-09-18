import 'package:flutter_modular/flutter_modular.dart';

import 'recent_transactions_page.dart';

class RecentTransactionsModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => RecentTransactionsPage(),
        ),
      ];

  static Inject get to => Inject<RecentTransactionsModule>.of();
}

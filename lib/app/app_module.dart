import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_widget.dart';
import 'core/api/api_client.dart';
import 'modules/authentication/authentication_module.dart';
import 'modules/home/home_module.dart';
import 'modules/recent_transactions/recent_transactions_module.dart';
import 'shared/cubits/customer/customer_cubit.dart';
import 'shared/repositories/customer_repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ApiClient()),
        Bind((i) => CustomerRepository(i())),
        Bind((i) => CustomerCubit(i())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: AuthenticationModule()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter(
          '/recent-transactions',
          module: RecentTransactionsModule(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

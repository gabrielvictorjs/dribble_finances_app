import 'package:flutter_modular/flutter_modular.dart';

import 'cubits/transactions/transactions_cubit.dart';
import 'home_page.dart';
import 'repositories/transaction_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TransactionRepository(i())),
        Bind((i) => TransactionsCubit(i())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}

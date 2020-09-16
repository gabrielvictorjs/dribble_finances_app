import 'package:flutter_modular/flutter_modular.dart';

import 'pages/sign_in_page.dart';

class AuthenticationModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => SignInPage()),
      ];

  static Inject get to => Inject<AuthenticationModule>.of();
}

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/failures/auth_failure.dart';
import '../../../shared/cubits/customer/customer_cubit.dart';
import '../../../shared/utils/keyboard_handler.dart';
import '../../../shared/widgets/primary_button_widget.dart';
import '../../../shared/widgets/svg_icon_widget.dart';
import '../../../shared/widgets/text_button_widget.dart';
import '../../../theme/app_theme.dart';
import '../widgets/custom_text_field_widget.dart';
import '../widgets/password_text_field_widget.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _customerCubit = Modular.get<CustomerCubit>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _handleAuthenticationError(AuthFailure failure) {
    final message = failure.map(
      undefinedError: (_) => 'Undefined Error!',
      userNotFound: (_) => 'User Not Found!',
    );

    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppTypography.bodyMedium,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        key: _scaffoldKey,
        body: GestureDetector(
          onTap: () => KeyboardHandler.hide(context),
          child: SafeArea(
            child: Center(child: _buildFormContent(context)),
          ),
        ),
      ),
    );
  }

  Widget _buildFormContent(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 26,
              bottom: screenSize.height * .1,
            ),
            child: SvgIconWidget(
              AppIcons.logo,
              size: screenSize.width * .28,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 26,
            ).copyWith(bottom: 26),
            child: CustomTextFieldWidget(
              labelText: 'Email Address',
              hintText: 'Type your email',
              inputIcon: EvaIcons.emailOutline,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 26,
            ).copyWith(bottom: 26),
            child: PasswordTextFieldWidget(),
          ),
          BlocConsumer<CustomerCubit, CustomerState>(
            cubit: _customerCubit,
            listener: (_, state) {
              state.maybeWhen(
                authenticationFailure: _handleAuthenticationError,
                authenticated: (_) {
                  Modular.to.pushReplacementNamed('/home');
                },
                orElse: () {},
              );
            },
            builder: (_, state) {
              return PrimaryButtonWidget(
                busy: state is CustomerAuthenticationInProgress,
                title: 'Login',
                onTap: _customerCubit.performAuthentication,
                padding: const EdgeInsets.symmetric(horizontal: 26),
              );
            },
          ),
          _buildBottomContent(),
        ],
      ),
    );
  }

  Widget _buildBottomContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 26,
      ).copyWith(top: 22, bottom: 78),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButtonWidget(
            onTap: () {},
            padding: const EdgeInsets.all(4),
            title: 'Sign Up',
          ),
          TextButtonWidget(
            onTap: () {},
            padding: const EdgeInsets.all(4),
            title: 'Forgot Password?',
          ),
        ],
      ),
    );
  }
}

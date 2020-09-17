import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/utils/handle_keyboard.dart';
import '../../../shared/widgets/custom_text_field_widget.dart';
import '../../../shared/widgets/primary_button_widget.dart';
import '../../../shared/widgets/svg_icon_widget.dart';
import '../../../shared/widgets/text_button_widget.dart';
import '../../../theme/app_theme.dart';
import '../widgets/password_text_field_widget.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: GestureDetector(
          onTap: () => HandleKeyboard.hide(context),
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
          PrimaryButtonWidget(
            onTap: () {
              Modular.to.pushReplacementNamed('/home');
            },
            padding: const EdgeInsets.symmetric(horizontal: 26),
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

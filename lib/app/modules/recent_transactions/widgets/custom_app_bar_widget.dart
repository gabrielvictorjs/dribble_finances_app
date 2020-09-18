import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../home/widgets/custom_icon_button_widget.dart';
import '../../../theme/app_theme.dart';

class CustomAppBarWidget extends AppBar {
  CustomAppBarWidget({Key key})
      : super(
          brightness: Brightness.light,
          backgroundColor: AppColors.background,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Builder(builder: (context) {
              return CustomIconButtonWidget(
                onTap: () => Navigator.maybePop(context),
                icon: Icon(
                  EvaIcons.arrowIosBack,
                  color: AppColors.dark3,
                  size: 30,
                ),
              );
            }),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CustomIconButtonWidget(
                icon: Icon(
                  EvaIcons.searchOutline,
                  color: AppColors.dark3,
                ),
              ),
            ),
          ],
        );
}

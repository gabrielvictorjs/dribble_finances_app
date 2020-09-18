import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';
part 'navigation_item_widget.dart';

class NavigationItem {
  final bool isPrimary;
  final IconData iconData;

  const NavigationItem({
    this.iconData,
    this.isPrimary = false,
  }) : assert(iconData != null);
}

class BottomNavigationWidget extends StatefulWidget {
  final List<NavigationItem> items;
  final Color selectedIconColor;

  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  const BottomNavigationWidget({
    Key key,
    @required this.items,
    this.selectedIconColor = AppColors.darkBlue,
    this.selectedIndex = 0,
    @required this.onItemSelected,
  })  : assert(items != null),
        super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).padding.bottom;

    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 20,
            spreadRadius: 25,
            color: AppColors.background,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: bottomPadding),
        child: Container(
          constraints: BoxConstraints(maxHeight: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: widget.items.map((item) {
              final index = widget.items.indexOf(item);
              return _NavigationItemWidget(
                onTap: () => widget.onItemSelected(index),
                isSelected: index == widget.selectedIndex,
                selectedIconColor: widget.selectedIconColor,
                item: item,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

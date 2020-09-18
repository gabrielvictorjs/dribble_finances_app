import 'package:flutter/material.dart';

import 'tab_item_widget.dart';

class CustomTabsWidget extends StatefulWidget {
  final List<String> tabTitles;

  const CustomTabsWidget({
    Key key,
    @required this.tabTitles,
  }) : super(key: key);

  @override
  _CustomTabsWidgetState createState() => _CustomTabsWidgetState();
}

class _CustomTabsWidgetState extends State<CustomTabsWidget> {
  int _selectedIndex = 0;

  void _selectItem(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      child: ListView.separated(
        padding: const EdgeInsets.all(26),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.tabTitles.length,
        separatorBuilder: (_, index) {
          return const SizedBox(width: 13);
        },
        itemBuilder: (_, index) {
          return TabItemWidget(
            isSelected: _selectedIndex == index,
            onTap: () => _selectItem(index),
            title: widget.tabTitles[index],
          );
        },
      ),
    );
  }
}

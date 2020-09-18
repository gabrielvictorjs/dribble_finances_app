part of 'bottom_navigation_widget.dart';

class _NavigationItemWidget extends StatelessWidget {
  final Function onTap;
  final Color selectedIconColor;
  final isSelected;
  final NavigationItem item;

  const _NavigationItemWidget({
    Key key,
    @required this.isSelected,
    @required this.item,
    @required this.onTap,
    this.selectedIconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        customBorder: CircleBorder(side: BorderSide()),
        highlightColor: Colors.white,
        splashColor: AppColors.light1,
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 8,
          ),
          margin: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: item.isPrimary ? AppColors.darkBlue : Colors.transparent,
            borderRadius: BorderRadius.circular(9),
          ),
          child: item.isPrimary ? _buildPrimaryItem() : _buildCommonItem(),
        ),
      ),
    );
  }

  Widget _buildPrimaryItem() {
    return Container(
      height: 24,
      width: 24,
      child: Icon(
        item.iconData,
        color: Colors.white,
        size: 18,
      ),
    );
  }

  Widget _buildCommonItem() {
    return Icon(
      item.iconData,
      color: isSelected ? selectedIconColor : AppColors.dark4,
    );
  }
}

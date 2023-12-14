import 'package:flutter/material.dart';
import 'package:flutter_application_first/config/extension/context_extension.dart';
import 'package:flutter_application_first/config/items/app_colors.dart';
import 'package:flutter_application_first/config/utility/enums/image_enum.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../news/presentation/news.dart';
import '../../settings/presentation/settings.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final List _pages = [
    const News(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    const Settings(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: AppColors.titleColor,
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: AppColors.whiteColor,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: context.dynamicHeight(0.1),
        surfaceTintColor: AppColors.whiteColor,
        shape: const CircularNotchedRectangle(),
        color: AppColors.whiteColor,
        notchMargin: 0,
        padding: EdgeInsets.symmetric(
          horizontal: context.dynamicWidth(0.05),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavbarItem(
                title: "News",
                currentIndex: currentIndex,
                onTap: () => onTap(0),
                iconPath: ImageConstants.navbarNews.toSvg,
                iconIndex: 0),
            NavbarItem(
                title: "My news",
                currentIndex: currentIndex,
                onTap: () => onTap(1),
                iconPath: ImageConstants.news.toSvg,
                iconIndex: 1),
            NavbarItem(
                title: "Saved",
                currentIndex: currentIndex,
                onTap: () => onTap(2),
                iconPath: ImageConstants.save.toSvg,
                iconIndex: 2),
            NavbarItem(
              title: "Settings",
              currentIndex: currentIndex,
              onTap: () => onTap(3),
              iconPath: ImageConstants.settings.toSvg,
              iconIndex: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class NavbarItem extends StatelessWidget {
  const NavbarItem({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.iconPath,
    required this.iconIndex,
    required this.title,
  });

  final int currentIndex;
  final Function()? onTap;
  final String iconPath;
  final int iconIndex;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: context.dynamicHeight(0.002),
          width: context.dynamicWidth(0.1),
          color: currentIndex == iconIndex
              ? AppColors.selectedBarColor
              : AppColors.whiteColor,
        ),
        IconButton(
          onPressed: onTap,
          icon: SvgPicture.asset(
            iconPath,
            colorFilter: ColorFilter.mode(
                currentIndex == iconIndex
                    ? AppColors.selectedBarColor
                    : AppColors.unselectedBarColor,
                BlendMode.srcIn),
            height: context.dynamicHeight(0.03),
          ),
        ),
        Text(
          title,
          style: context.textTheme.bodyMedium?.copyWith(
            color: currentIndex == iconIndex
                ? AppColors.selectedBarColor
                : AppColors.unselectedBarColor,
          ),
        ),
      ],
    );
  }
}

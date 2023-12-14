import 'package:flutter/material.dart';
import 'package:flutter_application_first/config/extension/context_extension.dart';
import 'package:flutter_application_first/config/items/app_colors.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: context.paddingAllDefault,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: context.dynamicWidth(0.2),
                  backgroundImage: const NetworkImage(
                      "https://images.pexels.com/photos/15139464/pexels-photo-15139464/free-photo-of-siyah-ve-beyaz-bagbozumu-is-para.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                Padding(
                  padding: context.paddingVerticalDefault,
                  child:
                      Text("Amanda ", style: context.textTheme.headlineSmall),
                ),
                const Divider(
                  color: AppColors.dividerColor,
                ),
                MenuItem(
                  onTap: () {},
                  title: "Language",
                  subtitle: "English",
                ),
                MenuItem(
                  onTap: () {},
                  title: "Location",
                  subtitle: "",
                ),
                MenuItem(
                  onTap: () {},
                  title: "Notification",
                  subtitle: "",
                ),
                const Divider(
                  color: AppColors.dividerColor,
                ),
                MenuItem(
                  onTap: () {},
                  title: "Share this app",
                  subtitle: "",
                ),
                MenuItem(
                  onTap: () {},
                  title: "Rate this app",
                  subtitle: "",
                ),
                const Divider(
                  color: AppColors.dividerColor,
                ),
                MenuItem(
                  onTap: () {},
                  title: "Help",
                  subtitle: "",
                ),
                MenuItem(
                  onTap: () {},
                  title: "Privacy",
                  subtitle: "",
                ),
                MenuItem(
                  onTap: () {},
                  title: "Terms & Conditions",
                  subtitle: "",
                ),
                MaterialButton(
                  onPressed: () {},
                  color: AppColors.selectedBarColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      context.dynamicWidth(
                        0.02,
                      ),
                    ),
                  ),
                  minWidth: double.infinity,
                  child: Padding(
                    padding: context.paddingAllDefault,
                    child: Text(
                      "Logout",
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.05),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingVerticalDefault,
      child: GestureDetector(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.textTheme.titleMedium,
            ),
            Row(
              children: [
                Text(
                  subtitle,
                  style: context.textTheme.titleMedium
                      ?.copyWith(color: AppColors.descriptionColor),
                ),
                const Icon(Icons.arrow_forward_ios,
                    color: AppColors.descriptionColor),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

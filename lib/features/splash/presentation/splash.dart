import 'package:flutter/material.dart';
import 'package:flutter_application_first/config/extension/context_extension.dart';
import 'package:flutter_application_first/config/utility/enums/image_enum.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/routes/app_route_names.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRouteNames.bottomNavBar),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(),
            width: double.infinity,
            height: context.dynamicHeight(1),
            child: SvgPicture.asset(ImageConstants.logo.toSvg),
          ),
        ),
      ),
    );
  }
}

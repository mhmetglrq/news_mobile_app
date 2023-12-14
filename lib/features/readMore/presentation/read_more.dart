import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_first/config/extension/context_extension.dart';
import 'package:flutter_application_first/config/items/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/utility/enums/image_enum.dart';

class ReadMore extends StatelessWidget {
  const ReadMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: CachedNetworkImageProvider(
                      "https://images.pexels.com/photos/15139464/pexels-photo-15139464/free-photo-of-siyah-ve-beyaz-bagbozumu-is-para.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    context.dynamicWidth(0.09),
                  ),
                  bottomRight: Radius.circular(
                    context.dynamicWidth(0.09),
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding: EdgeInsets.all(
                context.dynamicWidth(0.065),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.purpleColor,
                                borderRadius: BorderRadius.circular(
                                  context.dynamicWidth(0.09),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: context.dynamicWidth(0.03),
                                vertical: context.dynamicHeight(0.01),
                              ),
                              child: Text(
                                "Technology",
                                style: context.textTheme.bodyMedium
                                    ?.copyWith(color: AppColors.whiteColor),
                              ),
                            ),
                            SizedBox(
                              width: context.dynamicWidth(0.02),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.selectedBarColor,
                                borderRadius: BorderRadius.circular(
                                  context.dynamicWidth(0.09),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: context.dynamicWidth(0.03),
                                vertical: context.dynamicHeight(0.01),
                              ),
                              child: Text(
                                "Top 10",
                                style: context.textTheme.bodyMedium
                                    ?.copyWith(color: AppColors.whiteColor),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(ImageConstants.save.toSvg),
                            SizedBox(
                              width: context.dynamicWidth(0.05),
                            ),
                            SvgPicture.asset(ImageConstants.share.toSvg),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(
                context.dynamicWidth(0.065),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          "No, staring at a screen won't make you go blind",
                          style: context.textTheme.titleMedium?.copyWith(
                            color: AppColors.titleColor,
                            fontSize: context.dynamicHeight(0.033),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: context.dynamicHeight(0.02),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: context.dynamicWidth(0.05),
                              backgroundImage: const CachedNetworkImageProvider(
                                  "https://images.pexels.com/photos/15139464/pexels-photo-15139464/free-photo-of-siyah-ve-beyaz-bagbozumu-is-para.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            ),
                            SizedBox(
                              width: context.dynamicWidth(0.02),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "John Doe",
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    color: AppColors.greyColor,
                                  ),
                                ),
                                Text(
                                  "5 min",
                                  style: context.textTheme.bodySmall?.copyWith(
                                    color: AppColors.softGreyColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(ImageConstants.clock.toSvg),
                            SizedBox(
                              width: context.dynamicWidth(0.02),
                            ),
                            Text(
                              "5 min",
                              style: context.textTheme.bodyMedium?.copyWith(
                                color: AppColors.selectedBarColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColors.dividerColor,
                      thickness: 0.5,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ",
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: AppColors.lightBlackColor,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

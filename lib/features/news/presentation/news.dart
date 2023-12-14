import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_first/config/extension/context_extension.dart';
import 'package:flutter_application_first/config/items/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:infinite_carousel/infinite_carousel.dart';

import '../../../config/routes/app_route_names.dart';
import '../../../config/utility/enums/image_enum.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  InfiniteScrollController controller = InfiniteScrollController();
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: context.paddingAllDefault,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        ImageConstants.news.toSvg,
                        width: context.dynamicWidth(0.06),
                      ),
                      Padding(
                        padding: context.paddingHorizontalLow,
                        child: Text(
                          "All News",
                          style: context.textTheme.titleSmall,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          ImageConstants.search.toSvg,
                          width: context.dynamicWidth(0.04),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          ImageConstants.expand.toSvg,
                          width: context.dynamicWidth(0.04),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: context.dynamicHeight(0.6),
                child: CarouselSlider.builder(
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      GestureDetector(
                    onTap: () => Navigator.pushNamed(
                        context, AppRouteNames.readMorePage),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(context.dynamicWidth(0.02)),
                        color: Colors.grey,
                        image: const DecorationImage(
                          image: CachedNetworkImageProvider(
                            "https://images.pexels.com/photos/2248503/pexels-photo-2248503.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    context.dynamicWidth(0.02),
                                  ),
                                  bottomRight: Radius.circular(
                                    context.dynamicWidth(0.02),
                                  ),
                                ),
                                color: AppColors.purpleColor,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.dynamicWidth(0.05),
                                  vertical: context.dynamicHeight(0.005),
                                ),
                                child: Text(
                                  "News",
                                  style: context.textTheme.bodyMedium?.copyWith(
                                    color: AppColors.whiteColor,
                                    fontSize: context.dynamicHeight(0.02),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: context.paddingHorizontalLow,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: context.paddingHorizontalLow,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      context.dynamicWidth(0.08),
                                    ),
                                    color: AppColors.whiteColor,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                          ImageConstants.fire.toSvg),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal:
                                              context.dynamicWidth(0.01),
                                        ),
                                        child: Text(
                                          "Top 10",
                                          style: context.textTheme.bodyMedium
                                              ?.copyWith(
                                            color: AppColors.titleColor,
                                            fontSize:
                                                context.dynamicHeight(0.02),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: context.paddingVerticalLow,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Amanda",
                                            style: context
                                                .theme.textTheme.bodyMedium
                                                ?.copyWith(
                                              color: AppColors.whiteColor,
                                              fontSize:
                                                  context.dynamicHeight(0.02),
                                            ),
                                          ),
                                          Text(
                                            "10 min ago",
                                            style: context
                                                .theme.textTheme.bodyMedium
                                                ?.copyWith(
                                              color: AppColors.whiteColor,
                                              fontSize:
                                                  context.dynamicHeight(0.016),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              ImageConstants.save.toSvg),
                                          SizedBox(
                                            width: context.dynamicWidth(0.05),
                                          ),
                                          SvgPicture.asset(
                                              ImageConstants.share.toSvg),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  options: CarouselOptions(
                    height: context.dynamicHeight(0.6),
                    viewportFraction: 0.85,
                    aspectRatio: 6 / 15,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(
                        () {
                          selectedIndex = index;
                        },
                      );
                    },
                  ),
                ),
              ),
              Text(
                "No, staring at a screen won't make you go blind",
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.titleColor,
                  fontSize: context.dynamicHeight(0.033),
                ),
              ),
              Text(
                "Lorem ipsum dolar sit amet, consectetur adipiscing elit. Sed vitae enim vitae urna luctus lacinia.Sed vitae enim vitae urna luctus lacinia.",
                style: context.textTheme.bodyMedium?.copyWith(
                  color: AppColors.descriptionColor,
                  fontSize: context.dynamicHeight(0.02),
                ),
                textAlign: TextAlign.justify,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

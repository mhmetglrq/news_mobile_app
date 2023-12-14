import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageConstants {
  logo('logo'),
  expand('expand'),
  fire('fire'),
  save('save'),
  search('search'),
  share('share'),
  news('news'),
  settings('settings'),
  navbarNews('navbar_news'),
  clock('clock'),
  ;

  final String value;
  const ImageConstants(this.value);

  String get toPng => 'assets/images/$value.png';
  String get toSvg => 'assets/svg/$value.svg';

  Image get toPngImage => Image.asset(toPng);
  SvgPicture get toSvgImage => SvgPicture.asset(toSvg);
}

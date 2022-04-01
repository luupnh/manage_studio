import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  final String path;
  final Color? color;
  final BoxFit? boxFit;

  const AppIcon( this.path, {Key? key, this.color, this.boxFit}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    if (path.endsWith('.svg')) {
      return SvgPicture.asset(path, color: color);
    }

    return Image.asset(path, color: color, fit: boxFit ?? BoxFit.none);
  }
}

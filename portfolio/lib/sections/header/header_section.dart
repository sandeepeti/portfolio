// Copyright 2021 Sandeep Eti. All rights reserved.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../constants.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  double splitWidth = SizeConfig.width! / 2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: kDefaultPadding * 3,
          left: kDefaultPadding * 3,
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              // color: kPrimaryColor.withOpacity(.4),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  Color(0xFF1E1E1E),
                  Color(0xFF232323),
                ],
              ),
              borderRadius: BorderRadius.circular(kDefaultPadding),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF303030),
                  blurRadius: 60,
                  // spreadRadius: -1,
                  offset: Offset(-20, -20),
                ),
                BoxShadow(
                  color: Color(0xFF121212),
                  blurRadius: 60,
                  // spreadRadius: -1,
                  offset: Offset(20, 20),
                ),
              ],
            ),
            child: Text(
              'ES',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 32,
                  ),
            ),
          ),
        ),
        Container(
          width: SizeConfig.width,
          height: SizeConfig.height,
          padding: EdgeInsets.all(kDefaultPadding * 2),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Spacer(),
                Text(
                  'Hola, I am',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      // fontSize: SizeConfig.getAdaptiveFontSize(48),
                      ),
                ),
                Text(
                  'Sandeep Eti',
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        // fontSize: SizeConfig.getAdaptiveFontSize(108),
                        fontWeight: FontWeight.normal,
                        fontSize: 48,
                      ),
                  softWrap: true,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 4,
                    vertical: kDefaultPadding / 4,
                  ),
                  color: kAccentColor,
                  child: Text(
                    'Full-Stack Developer',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          // fontSize: SizeConfig.getAdaptiveFontSize(48),
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SplitBG extends CustomPainter {
  final double splitWidth;
  const SplitBG({required this.splitWidth});

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint()
      ..color = kAccentColor
      ..strokeCap = StrokeCap.square
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;

    path.lineTo(splitWidth, 0);
    path.lineTo(splitWidth, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/button.dart';
import '../constants.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  double splitWidth = SizeConfig.width! / 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width,
      height: SizeConfig.height! - kToolbarHeight,
      padding: EdgeInsets.all(kDefaultPadding * 2),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            Text(
              'Hola, I am',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontSize: SizeConfig.getAdaptiveFontSize(48),
                  ),
            ),
            Text(
              'Sandeep Eti',
              style: Theme.of(context).textTheme.headline1!.copyWith(
                    fontSize: SizeConfig.getAdaptiveFontSize(132),
                  ),
            ),
            Text(
              'Full-Stack Developer',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontSize: SizeConfig.getAdaptiveFontSize(58),
                  ),
            ),
            Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: [
                Button(
                  label: 'HIRE ME !',
                  onTap: () {},
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                IButton(
                  icon: FontAwesomeIcons.github,
                  onTap: () {},
                ),
              ],
            )
          ],
        ),
      ),
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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _title = RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Sandeep',
            style: Theme.of(context).textTheme.headline1,
          ),
          TextSpan(
            text: ' Eti\n',
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  color: kAccentColor,
                ),
          ),
          TextSpan(
            text: 'Full - Stack Developer',
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
          ),
        ],
      ),
    );

    var _exp = RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'YEARS\n',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 12,
                  color: kTextColorPrimary.withOpacity(.7),
                ),
          ),
          TextSpan(
            text: 'EXPERIENCE',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 12,
                  color: kTextColorPrimary.withOpacity(.7),
                ),
          ),
        ],
      ),
    );

    var _gitHubLink = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.github,
          color: kTextColorPrimary,
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        ),
        Text(
          '@sandeepeti',
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                fontSize: 14,
                color: kTextColorPrimary.withOpacity(.7),
              ),
        ),
      ],
    );

    return Container(
      // height: SizeConfig.height,
      width: SizeConfig.width,
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 2,
        vertical: kDefaultPadding * 5,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 2,
        vertical: kDefaultPadding * 5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _title,
          SizedBox(
            height: kDefaultPadding,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '3',
                  style: Theme.of(context).textTheme.subtitle2!.copyWith(
                        fontSize: 42,
                        color: kTextColorPrimary,
                      ),
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                _exp,
                SizedBox(
                  width: kDefaultPadding,
                ),
                _gitHubLink,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

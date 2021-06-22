// Copyright 2021 Sandeep Eti. All rights reserved.

import 'package:flutter/material.dart';

import '../../constants.dart';

// ignore: must_be_immutable
class AboutSection extends StatelessWidget {
  AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width,
      padding: EdgeInsets.all(kDefaultPadding * 3),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    'About Me',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          // fontSize: SizeConfig.getAdaptiveFontSize(32),
                          decoration: TextDecoration.underline,
                          height: 1.3,
                        ),
                  ),
                ),
                Text(
                  kDummyText,
                  softWrap: true,
                  textAlign: TextAlign.justify,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        // fontSize: SizeConfig.getAdaptiveFontSize(24),
                        fontSize: 20,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

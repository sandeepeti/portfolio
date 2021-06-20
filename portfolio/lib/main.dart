import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants.dart';

import 'sections/header_section.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        scaffoldBackgroundColor: kScaffoldColor,
        shadowColor: kShadowColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: GoogleFonts.playfairDisplay(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: kTextColorPrimary,
          ),
          subtitle1: GoogleFonts.poppins(
            fontSize: 28,
            color: kTextColorPrimary,
            fontWeight: FontWeight.w400,
          ),
          subtitle2: GoogleFonts.poppins(
            fontSize: 28,
            color: kTextColorSecondary,
            fontWeight: FontWeight.w400,
          ),
          bodyText1: GoogleFonts.poppins(
            fontSize: 24,
            color: kTextColorPrimary,
            fontWeight: FontWeight.w300,
          ),
          bodyText2: GoogleFonts.poppins(
            fontSize: 24,
            color: kTextColorSecondary,
            fontWeight: FontWeight.w300,
          ),
        ),
        iconTheme: IconThemeData(
          color: kAccentColor,
          size: kDefaultIconSize,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textStyle: MaterialStateProperty.all(
              GoogleFonts.poppins(
                fontSize: 32,
                color: kTextColorSecondary,
                fontWeight: FontWeight.w500,
              ),
            ),
            foregroundColor: MaterialStateProperty.all(kTextColorSecondary),
          ),
        ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,

            ///
            /// All the sections in the portfolio
            /// `Header` `About` `Services` `Projects` `Contact`
            /// will be added as children to this column.
            children: [
              HeaderSection(),
            ],
          ),
        ),
      ),
    );
  }
}

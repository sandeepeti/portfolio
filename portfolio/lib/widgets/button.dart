import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/constants.dart';

class Button extends StatefulWidget {
  final String label;
  final Function()? onTap;

  const Button({Key? key, required this.label, this.onTap}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Color?> backgroundColorAnimation;
  late Animation<Color?> foregroundColorAnimation;
  Duration animDuration = Duration(milliseconds: 300);

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: animDuration, reverseDuration: animDuration);
    backgroundColorAnimation =
        ColorTween(begin: kPrimaryColor, end: kAccentColor)
            .animate(animationController)
              ..addListener(() {})
              ..addStatusListener((status) {
                print(status);
              });

    foregroundColorAnimation =
        ColorTween(begin: kTextColorSecondary, end: kPrimaryColor)
            .animate(animationController)
              ..addListener(() {})
              ..addStatusListener((status) {});

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Material(
          type: MaterialType
              .transparency, //Makes it usable on any background color, thanks @IanSmith
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(color: kAccentColor, width: 1.0),
              color: backgroundColorAnimation.value,
              shape: BoxShape.rectangle,
            ),
            child: InkWell(
              //Something large to ensure a circle
              onTap: widget.onTap,
              onHover: (value) {
                if (value) {
                  animationController.forward();
                } else {
                  animationController.reverse();
                }
              },
              child: Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Text(
                  widget.label,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        fontSize: SizeConfig.getAdaptiveFontSize(32),
                        color: foregroundColorAnimation.value,
                      ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class IButton extends StatefulWidget {
  final IconData icon;
  final Function()? onTap;

  const IButton({Key? key, required this.icon, this.onTap}) : super(key: key);

  @override
  _IconButtonState createState() => _IconButtonState();
}

class _IconButtonState extends State<IButton> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Color?> backgroundColorAnimation;
  late Animation<Color?> foregroundColorAnimation;
  Duration animDuration = Duration(milliseconds: 300);

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: animDuration, reverseDuration: animDuration);
    backgroundColorAnimation =
        ColorTween(begin: kPrimaryColor, end: kAccentColor)
            .animate(animationController)
              ..addListener(() {})
              ..addStatusListener((status) {
                print(status);
              });

    foregroundColorAnimation =
        ColorTween(begin: kTextColorSecondary, end: kPrimaryColor)
            .animate(animationController)
              ..addListener(() {})
              ..addStatusListener((status) {});

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Material(
          type: MaterialType
              .transparency, //Makes it usable on any background color, thanks @IanSmith
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(color: kAccentColor, width: 1.0),
              color: backgroundColorAnimation.value,
              shape: BoxShape.rectangle,
            ),
            child: InkWell(
              //Something large to ensure a circle
              onTap: widget.onTap,
              onHover: (value) {
                if (value) {
                  animationController.forward();
                } else {
                  animationController.reverse();
                }
              },
              child: Padding(
                padding: EdgeInsets.all(kDefaultPadding),
                child: FaIcon(
                  widget.icon,
                  color: foregroundColorAnimation.value,
                  size: SizeConfig.getAdaptiveFontSize(44),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final onboardingPagesList = [
    PageModel(
      image: Image.asset('assets/images/twitter.png', color: pageImageColor),
      title: Text('SECURED BACKUP', style: pageTitleStyle),
      info: Text(
        'Keep your files in closed safe so you can\'t lose them',
        style: pageInfoStyle,
      ),
    ),
    PageModel(
      image: Image.asset('assets/images/twitter.png', color: pageImageColor),
      title: Text('CHANGE AND RISE', style: pageTitleStyle),
      info: Text(
        'Give others access to any file or folder you choose',
        style: pageInfoStyle,
      ),
    ),
    PageModel(
      image: Image.asset('assets/images/twitter.png', color: pageImageColor),
      title: Text('EASY ACCESS', style: pageTitleStyle),
      info: Text(
        'Reach your files anytime from any devices anywhere',
        style: pageInfoStyle,
      ),
    ),
    PageModel(
      image: Image.asset('assets/images/twitter.png', color: pageImageColor),
      title: Text('SHARE AND SHINE', style: pageTitleStyle),
      info: Text(
        'Give others access to any file or folder you choose',
        style: pageInfoStyle,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Onboarding(
        proceedButtonStyle: ProceedButtonStyle(
          proceedButtonRoute: (context) {
            return Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => Container(),
              ),
              (route) => false,
            );
          },
        ),
        pages: onboardingPagesList,
        indicator: Indicator(
          indicatorDesign: IndicatorDesign.line(
            lineDesign: LineDesign(
              lineType: DesignType.line_uniform,
            ),
          ),
        ),
      ),
    );
  }
}

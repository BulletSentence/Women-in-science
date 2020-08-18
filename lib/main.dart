import 'package:flutter/material.dart';
import 'package:httprequestapp/pages/game_page.dart';


void main() => runApp(MyApp());

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

Color primary_Color = HexColor("#FF5722");
Color primary_Color_dark = HexColor("#E64A19");
Color primary_Color_light = HexColor("#FFCCBC");
Color secondary_Color = HexColor("#E040FB");
Color text_color = HexColor("#FFFFFF");
Color primary_text_color = HexColor("#212121");
Color secondary_text_color = HexColor("#757575");
Color div_text_color = HexColor("#BDBDBD");


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WOMEN IN SCIENCE GAME',
      theme: ThemeData(
        primaryColor: primary_Color,
        primaryColorDark: primary_Color_dark,
        primaryColorLight: primary_Color_light,

      ),
      home: QuizPage(),
    );
  }
}
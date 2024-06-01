import 'package:flutter/material.dart';
import 'package:grocery_admin_panel/consts/constants.dart';

import '../responsive.dart';



class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    required this.backgroundColor, 
  }) : super(key: key);
  final VoidCallback onPressed;
  final String text;
  final IconData icon;
  final Color backgroundColor;

// change color text button 
Color getTextColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ?  Colors.black: Colors.white;
  }
  // change color icon 
 Color getIconColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white;
  }
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: TextButton.styleFrom(
        iconColor: getIconColor(context),
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: defaultPadding * 1.5,
          vertical: defaultPadding / (Responsive.isDesktop(context) ? 1 : 2),
        ),
      ),
      onPressed: () {
        onPressed();
      },
      icon: Icon(icon, size: 20,color: getIconColor(context)),
      label: Text(text, style: TextStyle(color: getTextColor(context))),
    );
  }
}

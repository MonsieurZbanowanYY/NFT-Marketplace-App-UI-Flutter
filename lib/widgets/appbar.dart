import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

PreferredSize buildAppBar(Widget leading, bool isDarkMode, Size size) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(40.0), //appbar size
    child: AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: isDarkMode
          ? const Color(0xff06090d)
          : const Color(0xfff8f8f8), //appbar bg color
      leading: Padding(
        padding: EdgeInsets.only(
          left: size.width * 0.05,
        ),
        child: leading,
      ),

      automaticallyImplyLeading: false,
      titleSpacing: 0,
      leadingWidth: size.width * 0.15,
      title: Image.asset(
        isDarkMode
            ? 'assets/icons/SobGOGlight.png'
            : 'assets/icons/SobGOGdark.png', //logo
        height: size.height * 0.06,
        width: size.width * 0.35,
      ),
      centerTitle: true,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            right: size.width * 0.05,
          ),
          child: Icon(
            UniconsLine.search,
            color: isDarkMode ? Colors.white : const Color(0xff3b22a1),
            size: size.height * 0.025,
          ),
        ),
      ],
    ),
  );
}

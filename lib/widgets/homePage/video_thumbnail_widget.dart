import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Center buildVideoThumbnail(bool isDarkMode, Size size) {
  double width = size.width * 0.85;
  double height = size.height * 0.2;
  return Center(
    child: Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.white.withOpacity(0.05) : Colors.black,
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: InkWell(
        onTap: () {
          print('play video'); //TODO: add video play action
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                'assets/images/video.jpg',
                fit: BoxFit.fill,
                width: width,
                height: height,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: isDarkMode
                          ? Colors.white.withOpacity(0.05)
                          : Colors.black,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.02,
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: Text(
                'How to Collect & Sell\nDigital Artwork ?', //title
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: size.width * 0.05,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                  vertical: size.height * 0.025,
                ),
                child: Icon(
                  Icons.play_circle_fill, //play button
                  color: Colors.white,
                  size: size.width * 0.15,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: size.height * 0.01,
                  left: size.width * 0.05,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "By:",
                      style: GoogleFonts.poppins(
                        color: Colors.white60,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                    Text(
                      "Martin Gogołowicz", //author
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

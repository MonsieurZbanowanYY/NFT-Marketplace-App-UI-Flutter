import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_marketplace/widgets/appbar.dart';
import 'package:nft_marketplace/widgets/top_creator_widget.dart';
import 'package:unicons/unicons.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final int price;
  final String author;
  final String authorImg;
  final String nftImg;
  final bool isDarkMode;
  final Size size;
  const DetailsPage({
    Key? key,
    required this.title,
    required this.price,
    required this.author,
    required this.authorImg,
    required this.nftImg,
    required this.isDarkMode,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness ==
        Brightness.dark; //check if device is in dark or light mode
    Color defaultFontColor = isDarkMode ? Colors.white : Colors.black;

    return Scaffold(
      appBar: buildAppBar(
        InkWell(
          onTap: () => Get.back(),
          child: Icon(
            UniconsLine.arrow_circle_left,
            color: isDarkMode
                ? Colors.white
                : const Color(0xff3b22a1), //icon bg color
            size: size.height * 0.03,
          ),
        ),
        isDarkMode,
        size,
      ),
      body: Center(
        child: Container(
          height: size.height,
          width: size.height,
          decoration: BoxDecoration(
            color: isDarkMode
                ? const Color(0xff06090d)
                : const Color(0xfff8f8f8), //background color
          ),
          child: SafeArea(
            child: ListView(
              children: [
                Text(
                  "Ending in:",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "02:30:02",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: size.width * 0.055,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: size.height * 0.35,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.03),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: Image.asset(
                        nftImg,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    color: defaultFontColor,
                    fontSize: size.width * 0.065,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/ghx.png',
                      height: size.height * 0.05,
                      width: size.width * 0.08,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.01),
                      child: Text(
                        "$price GHX",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: isDarkMode ? Colors.white : Colors.black,
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  //descryption
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean porttitor tellus ac nisl sagittis efficitur. ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: isDarkMode ? Colors.white : Colors.black,
                    fontSize: size.width * 0.04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: buildTopCreator(
                    author,
                    authorImg,
                    "1.2M",
                    defaultFontColor,
                    isDarkMode,
                    size,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.005),
                  child: InkWell(
                    onTap: () =>
                        print('place a bid'), //TODO: add place a bid action
                    child: Center(
                      child: Container(
                        height: size.height * 0.08,
                        width: size.width * 0.8,
                        decoration: const BoxDecoration(
                          color: Color(0xff3b22a1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Align(
                          child: Text(
                            "Place a bid",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

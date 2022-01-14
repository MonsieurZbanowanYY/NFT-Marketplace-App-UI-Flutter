import 'package:flutter/material.dart';
import 'package:nft_marketplace/widgets/appbar.dart';
import 'package:nft_marketplace/widgets/homePage/bid_widget.dart';
import 'package:nft_marketplace/widgets/homePage/category.dart';
import 'package:nft_marketplace/widgets/top_creator_widget.dart';
import 'package:nft_marketplace/widgets/homePage/video_thumbnail_widget.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //check the size of device
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness ==
        Brightness.dark; //check if device is in dark or light mode
    Color defaultFontColor = isDarkMode ? Colors.white : Colors.black;

    return Scaffold(
      appBar: buildAppBar(
        Icon(
          UniconsLine.bars,
          color: isDarkMode
              ? Colors.white
              : const Color(0xff3b22a1), //icon bg color
          size: size.height * 0.025,
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
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.02),
              child: ListView(
                children: [
                  buildVideoThumbnail(isDarkMode, size),
                  buildCategory("Popular Bids", defaultFontColor, size),
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.3,
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, i) {
                        //! example bids
                        if (i == 0) {
                          return buildBid(
                            'DeerGOG',
                            3600,
                            'Martin Gogołowicz',
                            'assets/images/avatar1.jpg',
                            'assets/images/nft1.jpg',
                            defaultFontColor,
                            isDarkMode,
                            size,
                          );
                        } else if (i == 1) {
                          return buildBid(
                            'Nature',
                            1500,
                            'Nicole Boa',
                            'assets/images/avatar2.jpg',
                            'assets/images/nft3.png',
                            defaultFontColor,
                            isDarkMode,
                            size,
                          );
                        } else {
                          return buildBid(
                            'Blue and Red',
                            1250,
                            'Nicole Boa',
                            'assets/images/avatar2.jpg',
                            'assets/images/nft2.jpg',
                            defaultFontColor,
                            isDarkMode,
                            size,
                          );
                        }
                      },
                    ),
                  ),
                  buildCategory("Top Creators", defaultFontColor, size),
                  buildTopCreator(
                    'Nicole Boa',
                    'assets/images/avatar2.jpg',
                    "1.2M",
                    defaultFontColor,
                    isDarkMode,
                    size,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

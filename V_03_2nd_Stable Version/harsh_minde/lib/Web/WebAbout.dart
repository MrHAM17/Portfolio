import 'dart:math';
import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/CustomText.dart';

import '../constants/app_texts.dart';
class WebAbout extends StatefulWidget {
  @override
  _WebAboutState createState() => _WebAboutState();
}
class _WebAboutState extends State<WebAbout> with SingleTickerProviderStateMixin {
late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 1.1,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                  text: AppTexts.aboutNum,
                  textsize: 20.0,
                  color: const Color(0xff61F9D5),
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                CustomText(
                  text: AppTexts.aboutTitle,
                  textsize: 26.0,
                  color: const Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                Container(
                  width: size.width / 4,
                  height: 1.10,
                  color: const Color(0xff303C55),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.07,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  margin: const EdgeInsets.all(16.0),
                  color: Colors.transparent, // Set card color as transparent
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width / 2,
                                child: Wrap(
                                  children: [
                                    CustomText(
                                      text: AppTexts.aboutDescription_1,
                                      textsize: 16.0,
                                      color: const Color(0xff828DAA),
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text: AppTexts.aboutDescription_2,
                                      textsize: 16.0,
                                      color: const Color(0xff828DAA),
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text: AppTexts.aboutDescription_3,
                                      textsize: 16.0,
                                      color: const Color(0xff828DAA),
                                      letterSpacing: 0.75,
                                    ),
                                    Container(
                                      width: size.width,
                                      child: Row(
                                        children: [
                                          Wrap(
                                            spacing: 5.0,
                                            children: [
                                              Container(
                                                // width: size.width * 0.20,
                                                width: size.width * 0.10,

                                                child: Column(
                                                  children: [
                                                    technology(context, AppTexts.aboutCP),
                                                    technology(context, AppTexts.aboutDart),
                                                    technology(context, AppTexts.aboutJK),
                                                    technology(context, AppTexts.aboutRPy),
                                                    technology(context, AppTexts.aboutXYml),
                                                    technology(context, AppTexts.aboutDI),
                                                    technology(context, AppTexts.aboutImg),
                                                    technology(context, AppTexts.aboutNetwork)
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // width: size.width * 0.15,
                                                width: size.width * 0.13,

                                                child: Column(
                                                  children: [
                                                    technology(context, AppTexts.aboutAndFlu),
                                                    technology(context, AppTexts.aboutAJ),
                                                    technology(context, AppTexts.aboutJC),
                                                    technology(context, AppTexts.aboutSQLiteRoom),
                                                    technology(context, AppTexts.aboutFireAws),
                                                    technology(context, AppTexts.aboutRealm),
                                                    technology(context, AppTexts.aboutRest),
                                                    technology(context, AppTexts.aboutQnInfu)
                                                  ],
                                                ),
                                              ),

                                              Container(
                                                width: size.width * 0.15,
                                                child: Column(
                                                  children: [
                                                    technology(context, AppTexts.aboutStudio),
                                                    technology(context, AppTexts.aboutVS),
                                                    technology(context, AppTexts.aboutBlocks),
                                                    technology(context, AppTexts.aboutBeans),
                                                    technology(context, AppTexts.aboutColab),
                                                    technology(context, AppTexts.aboutWeb3),
                                                    technology(context, AppTexts.aboutGradle),
                                                    technology(context, AppTexts.aboutGit)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.3,
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                // Handle onTap if needed
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(vertical: 40.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(150.0),
                                ),
                                child: Tooltip(
                                  message: '',
                                  child: MouseRegion(
                                    onEnter: (_) {
                                      _controller.forward();
                                    },
                                    onExit: (_) {
                                      _controller.reverse();
                                    },
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        AnimatedBuilder(
                                          animation: _controller,
                                          builder: (context, child) {
                                            return Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Transform(
                                                  transform: Matrix4.rotationY(
                                                      _controller.isAnimating ? _controller.value * pi : 0),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10.0),
                                                    child: Image(
                                                      width: size.width * 0.2,
                                                      height: size.height * 0.6,
                                                      fit: BoxFit.cover,
                                                      image: const AssetImage(AppTexts.aboutQuoteImg_path),
                                                    ),
                                                  ),
                                                ),
                                                Transform(
                                                  transform: Matrix4.rotationY(
                                                      _controller.isAnimating ? 0 : _controller.value * pi),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10.0),
                                                    child: Image(
                                                      width: size.width * 0.2,
                                                      height: size.height * 0.6,
                                                      fit: BoxFit.cover,
                                                      image: const AssetImage(AppTexts.myImg_path),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ],
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
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:harsh_minde/Models/Method.dart';

import 'package:harsh_minde/Web/WebAbout.dart';
import 'package:harsh_minde/Web/WebExperience.dart';
import 'package:harsh_minde/Models/WebFeatureProject.dart';

import 'package:harsh_minde/Models/BarTitle.dart';
import 'package:harsh_minde/Models/CustomText.dart';
import 'package:harsh_minde/Models/MainTitle.dart';
import 'package:harsh_minde/App/AppProject.dart';
import 'package:harsh_minde/App/AppExperience.dart';
import 'package:harsh_minde/Web/WebProject.dart';
import 'package:harsh_minde/Web/WebExperienceBox.dart';


class WebHome extends StatefulWidget {
  @override
  _WebHomeState createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  Method method = Method();
  late AutoScrollController _autoScrollController;
  final scrollDirection = Axis.vertical;

  bool isExpaned = true;

  bool get _isAppBarExpanded {
    return _autoScrollController.hasClients &&
        _autoScrollController.offset > (160 - kToolbarHeight);
  }

  @override
  void initState() {
    _autoScrollController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    )..addListener(
          () => _isAppBarExpanded
          ? isExpaned != false
          ? setState(
            () {
          isExpaned = false;
          // print('setState is called');
        },
      )
          : {}
          : isExpaned != true
          ? setState(() {
        // print('setState is called');
        isExpaned = true;
      })
          : {},
    );
    super.initState();
  }

  Future _scrollToIndex(int index) async {
    await _autoScrollController.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
    _autoScrollController.highlight(index);
  }

  Widget _wrapScrollTag({required int index, required Widget child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: _autoScrollController,
      index: index,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff0A192F),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          primary: true,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //Mavigation Bar
              Container(
                height: size.height * 0.14,
                width: size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.change_history,
                            size: 32.0,
                            color: Color(0xff64FFDA),
                          ),
                          onPressed: () {}),
                      Spacer(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DefaultTabController(
                            length: 4,
                            child: TabBar(
                              indicatorColor: Colors.transparent,
                              onTap: (index) async {
                                _scrollToIndex(index);
                              },
                              tabs: [
                                Tab(
                                  child: BarTitle(
                                    text: 'About',
                                  ),
                                ),
                                Tab(
                                  child: BarTitle(
                                    text: 'Experience',
                                  ),
                                ),
                                Tab(
                                  child: BarTitle(
                                    text: 'Project',
                                  ),
                                ),
                                Tab(
                                  child: BarTitle(
                                    text: 'Contact',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Card(
                          elevation: 4.0,
                          color: Color(0xff64FFDA),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Container(
                            margin: EdgeInsets.all(0.85),
                            height: size.height * 0.07,
                            width: size.height * 0.20,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Color(0xff0A192F),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: TextButton(
                              onPressed: () {
                                method.launchURL(
                                    "https://drive.google.com/file/d/1yHLcrN5pCUGIeT8SrwC2L95Lv0MVbJpx/view?usp=sharing");
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  "Resume",
                                  style: TextStyle(
                                    color: Color(0xff64FFDA),
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

              Row(
                children: [
                  //Social Icon
                  Container(
                    width: size.width * 0.09,
                    height: size.height - 82,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.github),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchURL("https://github.com/MrHAM17");
                            }),
                        IconButton(
                            icon: FaIcon(FontAwesomeIcons.twitter),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchURL("https://twitter.com");
                            }),
                        IconButton(
                          icon: FaIcon(FontAwesomeIcons.linkedin),
                          color: Color(0xffffA8B2D1),
                          onPressed: () {
                            method.launchURL("https://www.linkedin.com/in/harsh-minde-268545230/");
                          },
                          iconSize: 16.0,
                        ),
                        IconButton(
                            icon: Icon(Icons.call),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchCaller();
                            }),
                        IconButton(
                            icon: Icon(Icons.mail),
                            color: Color(0xffffA8B2D1),
                            iconSize: 16.0,
                            onPressed: () {
                              method.launchEmail();
                            }),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: size.height * 0.20,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: size.height - 82,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: CustomScrollView(
                          controller: _autoScrollController,
                          slivers: <Widget>[
                            SliverList(
                                delegate: SliverChildListDelegate([
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: size.height * .06,
                                      ),
                                      CustomText(
                                        text: "Hi, my name is",
                                        textsize: 16.0,
                                        color: Color(0xff41FBDA),
                                        letterSpacing: 3.0,
                                      ),
                                      SizedBox(
                                        height: 6.0,
                                      ),
                                      CustomText(
                                        text: "Harsh Minde.",
                                        textsize: 68.0,
                                        color: Color(0xffCCD6F6),
                                        fontWeight: FontWeight.w900,
                                      ),
                                      SizedBox(
                                        height: 4.0,
                                      ),
                                      CustomText(
                                        text:
                                        "I build things for the Android and Flutter.",
                                        textsize: 56.0,
                                        color: Color(0xffCCD6F6).withOpacity(0.6),
                                        fontWeight: FontWeight.w700,
                                      ),
                                      SizedBox(
                                        height: size.height * .04,
                                      ),
                                      Wrap(
                                        children: [
                                          Text(
                                            "Hello! I'm Tushar, a Freelancer based in Nashik, IN.\n\nI enjoy creating things that live on the internet, whether that be websites, applications, or anything in between. My goal is to always build products that provide pixel-perfect, performant experiences.\n\n",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16.0,
                                              letterSpacing: 2.75,
                                              wordSpacing: 0.75,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: size.height * .12,
                                      ),

                                      //get in tuch text
                                      InkWell(
                                        onTap: () {
                                          method.launchEmail();
                                        },
                                        hoverColor:
                                        Color(0xff64FFDA).withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(4.0),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: size.height * 0.09,
                                          width: size.width * 0.14,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xff64FFDA),
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(4.0),
                                          ),
                                          child: Text(
                                            "Get In Touch",
                                            style: TextStyle(
                                              color: Color(0xff64FFDA),
                                              letterSpacing: 2.75,
                                              wordSpacing: 1.0,
                                              fontSize: 15.0,
                                            ),
                                          ),
                                        ),
                                      ),

                                      SizedBox(
                                        height: size.height * 0.1,
                                      ),
                                    ],
                                  ),


                                  //About Me
                                  _wrapScrollTag(
                                    index: 0,
                                    child: WebAbout(),
                                  ),

                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),


                                  // Where I've Worked
                                  _wrapScrollTag(
                                      index: 1,
                                      child: WebExperience()),

                                  SizedBox(
                                    height: size.height * 0.10,
                                  ),

                                  //Some Things I've Built Main Project
                                  _wrapScrollTag(
                                      index: 2,
                                      child: Column(
                                        children: [
                                          MainTitle(
                                            number: "0.3",
                                            text: "Some Things I've Built",
                                          ),
                                          SizedBox(
                                            height: size.height * 0.04,
                                          ),
                                          WebFeatureProject(
                                            imagePath: "images/pic9.jpg",
                                            onTab: () {
                                              method.launchURL(
                                                  "https://github.com/champ96k/WhatsApp--UI-Clone");
                                            },
                                            projectDesc:
                                            "A Mobile app for both Android and IOS. View your Status, Chat, and call history. The purpose of this projcet is to Learn Flutter complex UI Design.",
                                            projectTitle: "WhatsaApp UI Clone",
                                            tech1: "Flutter",
                                            tech2: "Dart",
                                            tech3: "Flutter UI",
                                          ),


                                          // MainTiitle(
                                          //   number: "0.4",
                                          //   text: "Open Source Project",
                                          // ),
                                          //
                                          // SizedBox(
                                          //   height: size.height * 0.04,
                                          // ),

                                          // other Projects
                                          // Container(
                                          //   height: size.height * 0.86,
                                          //   width: size.width - 100,
                                          //   child: Column(
                                          //     children: [
                                          //       Row(
                                          //         mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //         children: [
                                          //           OSImages(
                                          //             image: "images/pic101.png",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic103.png",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic111.gif",
                                          //           ),
                                          //           OSImages(
                                          //             image: "images/pic113.jfif",
                                          //           ),
                                          //         ],
                                          //       ),
                                          //       SizedBox(
                                          //         height: size.height * 0.04,
                                          //       ),
                                          //       Row(
                                          //         mainAxisAlignment:
                                          //         MainAxisAlignment.spaceAround,
                                          //         children: [
                                          //           CustomText(
                                          //             text: "Payment Getway",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Chat App",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "Spotify Clone",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //           CustomText(
                                          //             text: "TODO App",
                                          //             textsize: 16.0,
                                          //             color: Colors.white
                                          //                 .withOpacity(0.4),
                                          //             fontWeight: FontWeight.w700,
                                          //             letterSpacing: 1.75,
                                          //           ),
                                          //         ],
                                          //       ),
                                          //     ],
                                          //   ),
                                          // ),
                                        ],
                                      )),


                                  SizedBox(
                                    height: 6.0,
                                  ),


                                  //Get In Touch
                                  _wrapScrollTag(
                                    index: 3,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: size.height * 0.68,
                                          width: MediaQuery.of(context).size.width -
                                              100,
                                          // color: Colors.orange,
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              CustomText(
                                                text: "0.4 What's Next?",
                                                textsize: 16.0,
                                                color: Color(0xff41FBDA),
                                                letterSpacing: 3.0,
                                              ),
                                              SizedBox(
                                                height: 16.0,
                                              ),
                                              CustomText(
                                                text: "Get In Touch",
                                                textsize: 42.0,
                                                color: Colors.white,
                                                letterSpacing: 3.0,
                                                fontWeight: FontWeight.w700,
                                              ),
                                              SizedBox(
                                                height: 16.0,
                                              ),
                                              Wrap(
                                                children: [
                                                  Text(
                                                    "Although I'm currently looking for SDE-1 opportunities, my inbox is \nalways open. Whether you have a question or just want to say hi, I'll try my \nbest to get back to you!",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.4),
                                                      letterSpacing: 0.75,
                                                      fontSize: 17.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 32.0,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  method.launchEmail();
                                                },
                                                child: Card(
                                                  elevation: 4.0,
                                                  color: Color(0xff64FFDA),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(6.0),
                                                  ),
                                                  child: Container(
                                                    margin: EdgeInsets.all(0.85),
                                                    height: size.height * 0.09,
                                                    width: size.width * 0.10,
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff0A192F),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          6.0),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 8.0,
                                                      ),
                                                      child: Text(
                                                        "Say Hello",
                                                        style: TextStyle(
                                                          color: Color(0xff64FFDA),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        //Footer
                                        Container(
                                          alignment: Alignment.center,
                                          height:
                                          MediaQuery.of(context).size.height /
                                              6,
                                          width: MediaQuery.of(context).size.width -
                                              100,
                                          //color: Colors.white,
                                          child: Text(
                                            "Designed & Built by Tushar Nikam 💙 Flutter",
                                            style: TextStyle(
                                              color: Colors.white.withOpacity(0.4),
                                              letterSpacing: 1.75,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.07,
                    height: MediaQuery.of(context).size.height - 82,
                    //color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RotatedBox(
                          quarterTurns: 45,
                          child: Text(
                            "harshminde1@gmail.com",
                            style: TextStyle(
                              color: Colors.grey.withOpacity(0.6),
                              letterSpacing: 3.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Container(
                            height: 100,
                            width: 2,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

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

  void _scrollToTop() {
    _scrollToIndex(0); // Assuming that 0 is the index of the top section
  }

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

  void _scrollToGetInTouch() {
    _scrollToIndex(4);
  }

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
                            FontAwesomeIcons.masksTheater,
                            size: 32.0,
                            color: Color(0xff64FFDA),
                          ),
                        // onPressed: () { },
                        onPressed: _scrollToTop, // Call the method when the icon is pressed
                      ),

                      Spacer(),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DefaultTabController(
                            length: 5,
                            child: TabBar(
                              indicatorColor: Colors.transparent,
                              onTap: (index) async {
                                // _scrollToIndex(index);
                                if (index == 4) {
                                  _scrollToTop();
                                } else {
                                  _scrollToIndex(index +1); // Adjust index for the extra tab
                                }
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
                                    text: 'Projects',
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
                        child: InkWell(
                          onTap: () {
                            method.launchURL("https://drive.google.com/file/d/1yHLcrN5pCUGIeT8SrwC2L95Lv0MVbJpx/view?usp=sharing");
                          },
                          hoverColor: Color(0xff64FFDA), // Set the desired hover color
                          // borderRadius: BorderRadius.circular(6.0),
                          child: Card(
                            elevation: 4.0,
                            color: Color(0xff64FFDA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(0.85),
                              height: size.height * 0.06,
                              width: size.height * 0.18,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff0A192F),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0,
                                  ),
                                  child: Text(
                                    "Resume",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff64FFDA),
                                      letterSpacing: 2.75,
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
                                  _wrapScrollTag(
                                    index : 0,
                                    child: Column(
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
                                          "I build things for Android & Flutter.",
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
                                              "Hey there !"
                                                  "\n\nI'm a,"
                                                  "\nArtist | Player |"
                                                  "\nStudent | Programming Enthusiast |"
                                                  "\nAvid Learner | Aspiring Software Engineer "
                                                  "\n\nCurrently in my third year."
                                                  "\nAt Terna Engineering College Navi Mumbai"
                                                  "\nPursuing a Bachelor of Technology in Computer Engineering."
                                                  "\n\nTo build a strong professional foundation.",
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
                                          // onTap: () {
                                          //   method.launchEmail();
                                          // },
                                          onTap: _scrollToGetInTouch,
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
                                  ),


                                  //About Me
                                  _wrapScrollTag(
                                    index: 1,
                                    child: WebAbout(),
                                  ),

                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),


                                  // Where I've Worked
                                  _wrapScrollTag(
                                      index: 2,
                                      child: WebExperience()),

                                  SizedBox(
                                    height: size.height * 0.10,
                                  ),

                                  //Some Things I've Built Main Project
                                  _wrapScrollTag(
                                      index: 3,
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
                                            imagePath: "images/Mech_It_App.png",
                                            onTab: () {
                                              method.launchURL(
                                                  "https://github.com/MrHAM17/Mech_It_App");
                                            },
                                            projectDesc:
                                            "A Mobile app for both Android and IOS.\n"
                                            "It is a user-friendly mobile application that "
                                            "connects drivers in distress with nearest \n"
                                            "& most affordable mechanics in real-time.",
                                            projectTitle: "Mech It App",
                                            tech1: "Dart",
                                            tech2: "Flutter",
                                            tech3: "Flutter UI",
                                          ),

                                          SizedBox(
                                            height: size.height * 0.04,
                                          ),

                                          WebFeatureProject(
                                            imagePath: "images/Chat_It_App.png",
                                            onTab: () {
                                              method.launchURL(
                                                  "https://github.com/MrHAM17/Chat_It_App");
                                            },
                                            projectDesc:
                                            "A Mobile app for Android.\n"
                                            "Its a chatting application, "
                                            "offers platform for people to chat, make new friends & build relationships with others\n"
                                            "& prioritizes user privacy and security. ",
                                            projectTitle: "Chat It App",
                                            tech1: "XML",
                                            tech2: "Java",
                                            tech3: "Android",
                                          ),

                                          SizedBox(
                                            height: size.height * 0.04,
                                          ),

                                          WebFeatureProject(
                                            imagePath: "images/My_Yatra_App.png",
                                            onTab: () {
                                              method.launchURL(
                                                  "https://github.com/MrHAM17/My_Yatra_App");
                                            },
                                            projectDesc:
                                            "A Mobile app for Android.\n"
                                            "Its an information platform connecting ticket holders vs seekers.\n"
                                            "My Yatra App is the best way for transferring the tickets.",
                                            projectTitle: "My Yatra App",
                                            tech1: "XML",
                                            tech2: "Java",
                                            tech3: "Android",
                                          ),

                                          SizedBox(
                                            height: size.height * 0.04,
                                          ),

                                          WebFeatureProject(
                                            imagePath: "images/Desktop_Animated_Game.png",
                                            onTab: () {
                                              method.launchURL(
                                                  "https://github.com/MrHAM17/Desktop_Animated_Game");
                                            },
                                            projectDesc:
                                            "A Game Application for Desktop.\n"
                                            "It is the basic GUI-based project used with the Opengl library,\n"
                                            "to organize all elements that work under the Brick Breaker game.",
                                            projectTitle: "Desktop Animated Game",
                                            tech1: "C++",
                                            tech2: "CodeBlocks",
                                            tech3: "",
                                          ),

                                          SizedBox(
                                            height: size.height * 0.04,
                                          ),

                                          WebFeatureProject(
                                            imagePath: "images/Play_It_App.png",
                                            onTab: () {
                                              method.launchURL(
                                                  "https://github.com/MrHAM17/Play_It_App");
                                            },
                                            projectDesc:
                                            "A Music Player Application for Desktop.\n"
                                            "It is the basic GUI-based project using Tkinter library\n"
                                            "for GUI development & Pygame library for audio playback.",
                                            projectTitle: "Play It App",
                                            tech1: "Python",
                                            tech2: "VS Code",
                                            tech3: "",
                                          ),

                                          SizedBox(
                                            height: size.height * 0.04,
                                          ),

                                          WebFeatureProject(
                                            imagePath: "images/Bricks_Breaker_Game.png",
                                            onTab: () {
                                              method.launchURL(
                                                  "https://github.com/MrHAM17/Bricks_Breaker_Game");
                                            },
                                            projectDesc:
                                            "A Game Application for Desktop.\n"
                                            "It is the basic GUI-based project used with the swing library\n"
                                            "to organize all elements that work under the Brick Breaker game.",
                                            projectTitle: "Bricks Breaker Game",
                                            tech1: "Java",
                                            tech2: "Apache-Net-Beans",
                                            tech3: "",
                                          ),


                                        ],
                                      )),


                                  SizedBox(
                                    height: 6.0,
                                  ),


                                  //Get In Touch
                                  _wrapScrollTag(
                                    index: 4,
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
                                                    "Currently in preparation mode with a focus on exploring potential opportunities in Android/Flutter."
                                                    "\nOpen to connections, questions, and collaborative discussions."
                                                    "\nFeel free to reach out anytime!",

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
                                                // hoverColor: Colors.green,
                                                // withOpacity(0.2),
                                                hoverColor: Color(0xff64FFDA),
                                                child: Card(
                                                    elevation: 4.0,
                                                    color: Color(0xff64FFDA),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(6.0),
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
                                                            letterSpacing: 2.75,
                                                            wordSpacing: 1.0,
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
                                        // Container(
                                        //   alignment: Alignment.center,
                                        //   height:
                                        //   MediaQuery.of(context).size.height /
                                        //       6,
                                        //   width: MediaQuery.of(context).size.width -
                                        //       100,
                                        //   //color: Colors.white,
                                        //   child: Text(
                                        //     "Designed & Built by Harsh Minde\n💙 Flutter",
                                        //     style: TextStyle(
                                        //       color: Colors.white.withOpacity(0.4),
                                        //       letterSpacing: 1.75,
                                        //       fontSize: 14.0,
                                        //     ),
                                        //   ),
                                        // ),
                                        //Footer
                                        Container(
                                          alignment: Alignment.center,
                                          height: MediaQuery.of(context).size.height / 6,
                                          width: MediaQuery.of(context).size.width - 100,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Designed & Built by Harsh Minde",
                                                style: TextStyle(
                                                  color: Colors.white.withOpacity(0.4),
                                                  letterSpacing: 1.75,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              SizedBox(height: 8.0),
                                              Text(
                                                "💙 Flutter",
                                                style: TextStyle(
                                                  // color: Colors.white.withOpacity(0.4),
                                                  color: Color(0xff64FFDA), // Set the desired color for the heart
                                                  // color: Colors.blueAccent,
                                                  letterSpacing: 1.75,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ],
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

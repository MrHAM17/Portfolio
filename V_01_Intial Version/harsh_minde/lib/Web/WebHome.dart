

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

class WebHome extends StatefulWidget {
  @override
  _WebHomeState createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  // Color borderColor = Color(0xff41FBDA);


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
    _scrollToIndex(3);
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        // backgroundColor: Color(0xff0A192F),  //  ---> changes whole background color
        body: Container(
          //  //  ---> changes whole background color
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),


          child: SingleChildScrollView(
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
                              // FontAwesomeIcons.masksTheater,
                              FontAwesomeIcons.solidStar,
                              size: 32.0,
                              color: Color(0xff64FFDA),
                            ),
                          onPressed: () {
                            // Scroll to the top when the icon is clicked

                            // // way 1: auto-scrolling to the top       // <<<<<<< ------- -------------- -----------------------
                            //  // Refer from AppHome.dart

                            //   // way 2: reload the entire page             // <<<<<<< ------- -------------- -----------------------
                             Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => WebHome()),
                            );
                          },

                        ),
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
                              method.launchURL("https://drive.google.com/file/d/1aS-lTS_YrQFyiDJUn60ErxNGJfYjU4pL/view?usp=sharing");
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
                                  // color: Color(0xff0A192F),
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                    ),
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
                                        color: Color(0xff41FBDA),
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
                      // height: size.height - 82,
                      height: MediaQuery.of(context).size.height * 0.85,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: size.height * 0.4,
                            ),
                            IconButton(
                                icon: FaIcon(FontAwesomeIcons.github),
                                color: Color(0xffffA8B2D1),
                                iconSize: 16.0,
                                onPressed: () {
                                  method.launchURL("https://github.com/MrHAM17");
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
                              icon: Icon(
                                FontAwesomeIcons.envelope,
                                color: Colors.white,
                                size: 16.0,
                              ),
                              onPressed: () {
                                method.launchEmail();
                              },
                            ),
                            IconButton(
                                icon: FaIcon(FontAwesomeIcons.twitter),
                                color: Color(0xffffA8B2D1),
                                iconSize: 16.0,
                                onPressed: () {
                                  method.launchURL("https://twitter.com/Harsh_Minde");
                                }),
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                                size: 16.0,
                              ),
                              onPressed: () {
                                method.launchURL("https://www.instagram.com/mr_ham_17");
                              },
                            ),
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
                    ),
                    Expanded(
                      child: Container(
                        // height: size.height - 82,
                        height: size.height ,
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
                                                    "\n\nBuilding a strong professional foundation.",
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
                                            height: size.height * 0.2,
                                          ),
                                        ],
                                      ),

                                    //About Me
                                    _wrapScrollTag(
                                      index: 0,
                                      child: WebAbout(),
                                    ),

                                    SizedBox(
                                      height: size.height * 0.180,
                                    ),


                                    // Where I've Worked
                                    _wrapScrollTag(
                                        index: 1,
                                        child: WebExperience()),

                                    SizedBox(
                                      height: size.height * 0.2,
                                    ),

                                    //Some Things I've Built Main Project
                                    _wrapScrollTag(
                                        index: 2,
                                        child: ListView(
                                          shrinkWrap: true,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,  // Set mainAxisSize to min
                                              children: [
                                                MainTitle(
                                                  number: "0.3",
                                                  text: "Things I've Built",
                                                ),

                                                SizedBox(
                                                  height: size.height * 0.080,
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
                                                  height: size.height * 0.03,
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
                                                  height: size.height * 0.03,
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
                                                  height: size.height * 0.03,
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
                                                  projectTitle: "Animated Game",
                                                  tech1: "C++",
                                                  tech2: "CodeBlocks",
                                                  tech3: "",
                                                ),

                                                SizedBox(
                                                  height: size.height * 0.03,
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
                                                  height: size.height * 0.03,
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
                                                  projectTitle: "Bricks Breaker",
                                                  tech1: "Java",
                                                  tech2: "Apache-Net-Beans",
                                                  tech3: "",
                                                ),


                                              ],
                                            ),
                                          ],
                                        )),


                                    SizedBox(
                                      height: 75.0,
                                    ),

                            //  // Trial code B --> For "Say Hallo" button................................. ............ .......... ...... ...
                            _wrapScrollTag(
                              index: 3,
                              child: SingleChildScrollView(
                                child: Card(
                                  // color: Color(0xff0A192F),
                                  color: Colors.transparent,
                                  elevation: 8,

                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  margin: EdgeInsets.fromLTRB(0, 16.0, 0, 10), // Added space at the top
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),

                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          Text(
                                            "0.4 What's Next?",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 16.0, color: Color(0xff41FBDA), letterSpacing: 3.0),
                                          ),
                                          SizedBox(height: 16.0),
                                          Text(
                                            "Get In Touch",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 42.0, color: Colors.white, letterSpacing: 3.0, fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(height: 16.0),
                                          Text(
                                            "Currently in preparation mode with a focus on exploring potential opportunities in Android/Flutter."
                                                "\nOpen to connections, questions, and collaborative discussions."
                                                "\nFeel free to reach out anytime!",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 17.0, color: Colors.white.withOpacity(0.4), letterSpacing: 0.75),
                                          ),
                                          SizedBox(height: 32.0),

                                          //  // Trial code B.4.3 --> For "Say Hallo" button................................. ............ .......... ...... ...
                                          Center(
                                            child: Container(
                                              width: double.infinity, // Ensure the container takes the full available width
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      method.launchEmail();
                                                    },
                                                    hoverColor: Color(0xff64FFDA),
                                                    child: Card(
                                                      elevation: 4.0,
                                                      color: Color(0xff64FFDA),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(6.0),
                                                      ),
                                                      child: Container(
                                                        margin: EdgeInsets.all(0.85),
                                                        height: size.height * 0.07,
                                                        alignment: Alignment.center,
                                                        decoration: BoxDecoration(
                                                          // color: Color(0xff0A192F),
                                                          gradient: LinearGradient(
                                                            colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
                                                            begin: Alignment.topLeft,
                                                            end: Alignment.topRight,
                                                          ),
                                                          borderRadius: BorderRadius.circular(6.0),
                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.symmetric(
                                                            horizontal: 8.0,
                                                          ),
                                                          child: Text(
                                                            "Say Hallo",
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              fontSize: 15.0,
                                                              color: Color(0xff41FBDA),
                                                              letterSpacing: 2.75,
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

                                          SizedBox(height: 275.0),
                                          Text(
                                            "Designed & Built by Harsh Minde\n💙 Flutter",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 14.0,
                                                // color: Colors.white.withOpacity(0.4),
                                                color: Color(0xff64FFDA).withOpacity(0.4), // Set the desired color for the heart
                                                // color: Colors.blueAccent,
                                                letterSpacing: 1.75),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
                      // height: MediaQuery.of(context).size.height - 82,
                      height: MediaQuery.of(context).size.height * 0.85,
                      //color: Colors.orange,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: size.height * 0.4,
                            ),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

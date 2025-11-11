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

import '../constants/app_texts.dart';
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
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
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
                            icon: const Icon(
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
                        const Spacer(),
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
                                      text: AppTexts.profileAbout,
                                    ),
                                  ),
                                  Tab(
                                    child: BarTitle(
                                      text: AppTexts.profileExperience,
                                    ),
                                  ),
                                  Tab(
                                    child: BarTitle(
                                      text: AppTexts.profileProjects,
                                    ),
                                  ),
                                  Tab(
                                    child: BarTitle(
                                      text: AppTexts.profileContact,
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
                              method.launchURL(AppTexts.resume_path);
                            },
                            hoverColor: const Color(0xff64FFDA), // Set the desired hover color
                            // borderRadius: BorderRadius.circular(6.0),
                            child: Card(
                              elevation: 4.0,
                              color: const Color(0xff64FFDA),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Container(
                                margin: const EdgeInsets.all(0.85),
                                height: size.height * 0.06,
                                width: size.height * 0.18,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  // color: Color(0xff0A192F),
                                    gradient: const LinearGradient(
                                      colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight,
                                    ),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      AppTexts.profileResume,
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
                                icon: const FaIcon(FontAwesomeIcons.github),
                                color: const Color(0xffffA8B2D1),
                                iconSize: 16.0,
                                onPressed: () {
                                  method.launchURL(AppTexts.githubUrl);
                                }),
                            IconButton(
                              icon: const FaIcon(FontAwesomeIcons.linkedin),
                              color: const Color(0xffffA8B2D1),
                              onPressed: () {
                                method.launchURL(AppTexts.linkedinUrl);
                              },
                              iconSize: 16.0,
                            ),
                            IconButton(
                              icon: const Icon(
                                FontAwesomeIcons.envelope,
                                color: Colors.white,
                                size: 16.0,
                              ),
                              onPressed: () {
                                method.launchEmail();
                              },
                            ),
                            IconButton(
                                icon: const FaIcon(FontAwesomeIcons.twitter),
                                color: const Color(0xffffA8B2D1),
                                iconSize: 16.0,
                                onPressed: () {
                                  method.launchURL(AppTexts.twitterUrl);
                                }),
                            IconButton(
                              icon: const Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                                size: 16.0,
                              ),
                              onPressed: () {
                                method.launchURL(AppTexts.instagramUrl);
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
                                            text: AppTexts.profileHi1st,
                                            textsize: 16.0,
                                            color: const Color(0xff41FBDA),
                                            letterSpacing: 3.0,
                                          ),
                                          const SizedBox(
                                            height: 6.0,
                                          ),
                                          CustomText(
                                            text: AppTexts.myName,
                                            textsize: 68.0,
                                            color: const Color(0xffCCD6F6),
                                            fontWeight: FontWeight.w900,
                                          ),
                                          const SizedBox(
                                            height: 4.0,
                                          ),
                                          CustomText(
                                            text: AppTexts.profileHeadline,
                                            textsize: 56.0,
                                            color: const Color(0xffCCD6F6).withOpacity(0.6),
                                            fontWeight: FontWeight.w700,
                                          ),
                                          SizedBox(
                                            height: size.height * .04,
                                          ),
                                          const Wrap(
                                            children: [
                                              Text( AppTexts.profileDescription,
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
                                      height: size.height * 0.1, // 0.180,
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
                                                  number: AppTexts.projectNum,
                                                  text: AppTexts.projectTitle,
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.080,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectCine_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectCine_Url);
                                                  },
                                                  projectDesc: AppTexts.projectCine_Msg,
                                                  projectTitle: AppTexts.projectCine_Name,
                                                  tech1: AppTexts.aboutJC,
                                                  tech2: AppTexts.projectAndroid,
                                                  tech3: AppTexts.projectRest
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectNews_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectNews_Url);
                                                  },
                                                  projectDesc: AppTexts.projectNews_Msg,
                                                  projectTitle: AppTexts.projectNews_Name,
                                                  tech1: AppTexts.projectKotlin,
                                                  tech2: AppTexts.projectAndroid,
                                                  tech3: AppTexts.projectRest
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectHealth_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectHealth_Url);
                                                  },
                                                  projectDesc: AppTexts.projectHealth_Msg,
                                                  projectTitle: AppTexts.projectHealth_Name,
                                                  tech1: AppTexts.aboutDart,
                                                  tech2: AppTexts.projectFlutter,
                                                  tech3: AppTexts.projectFire
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectVote_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectVote_Url);
                                                  },
                                                  projectDesc: AppTexts.projectVote_Msg,
                                                  projectTitle: AppTexts.projectVote_Name,
                                                  tech1: AppTexts.projectFlutter,
                                                  tech2: AppTexts.projectBlockchain,
                                                  tech3: AppTexts.projectFire
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectBookNlp_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectBookNlp_Url);
                                                  },
                                                  projectDesc: AppTexts.projectBookNlp_Msg,
                                                  projectTitle: AppTexts.projectBookNlp_Name,
                                                  tech1: AppTexts.aboutRPy,
                                                  tech2: AppTexts.aboutColab,
                                                  tech3: AppTexts.aboutVS
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectBookMl_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectBookMl_Url);
                                                  },
                                                  projectDesc: AppTexts.projectBookMl_Msg,
                                                  projectTitle: AppTexts.projectBookMl_Name,
                                                  tech1: AppTexts.aboutRPy,
                                                  tech2: AppTexts.aboutColab,
                                                  tech3: AppTexts.aboutVS
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectSpotify_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectSpotify_Url);
                                                  },
                                                  projectDesc: AppTexts.projectSpotify_Msg,
                                                  projectTitle: AppTexts.projectSpotify_Name,
                                                  tech1: AppTexts.aboutRPy,
                                                  tech2: AppTexts.aboutColab,
                                                  tech3: ""
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectNutrition_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectNutrition_Url);
                                                  },
                                                  projectDesc: AppTexts.projectNutrition_Msg,
                                                  projectTitle: AppTexts.projectNutrition_Name,
                                                  tech1: AppTexts.projectWeb,
                                                  tech2: AppTexts.projectAwsS3,
                                                  tech3: ""
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectMC_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectMC_Url);
                                                  },
                                                  projectDesc: AppTexts.projectMC_Msg,
                                                  projectTitle: AppTexts.projectMC_Name,
                                                  tech1: AppTexts.projectAndroid,
                                                  tech2: AppTexts.projectFlutter,
                                                  tech3: ""
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectCollege_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectCollege_Url);
                                                  },
                                                  projectDesc: AppTexts.projectCollege_Msg,
                                                  projectTitle: AppTexts.projectCollege_Name,
                                                  tech1: AppTexts.aboutDart,
                                                  tech2: AppTexts.projectFlutter,
                                                  tech3: AppTexts.projectFire
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectMech_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectMech_Url);
                                                  },
                                                  projectDesc: AppTexts.projectMech_Msg,
                                                  projectTitle: AppTexts.projectMech_Name,
                                                  tech1: AppTexts.aboutDart,
                                                  tech2: AppTexts.projectFlutter,
                                                  tech3: AppTexts.projectFire
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectChat_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectChat_Url);
                                                  },
                                                  projectDesc: AppTexts.projectChat_Msg,
                                                  projectTitle: AppTexts.projectChat_Name,
                                                  tech1: AppTexts.projectJava,
                                                  tech2: AppTexts.projectAndroid,
                                                  tech3: AppTexts.projectFire
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectYatra_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectYatra_Url);
                                                  },
                                                  projectDesc: AppTexts.projectYatra_Msg,
                                                  projectTitle: AppTexts.projectYatra_Name,
                                                  tech1: AppTexts.projectJava,
                                                  tech2: AppTexts.projectAndroid,
                                                  tech3: AppTexts.projectSqlite
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectDesktop_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectDesktop_Url);
                                                  },
                                                  projectDesc: AppTexts.projectDesktop_Msg,
                                                  projectTitle: AppTexts.projectDesktop_Name,
                                                  tech1: AppTexts.projectCpp,
                                                  tech2: AppTexts.aboutBlocks,
                                                  tech3: ""
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectPlay_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectPlay_Url);
                                                  },
                                                  projectDesc: AppTexts.projectPlay_Msg,
                                                  projectTitle: AppTexts.projectPlay_Name,
                                                  tech1: AppTexts.projectPy,
                                                  tech2: AppTexts.aboutVS,
                                                  tech3: ""
                                                ),
                                                SizedBox(
                                                  height: size.height * 0.03,
                                                ),
                                                WebFeatureProject(
                                                  imagePath: AppTexts.projectBrick_Img,
                                                  onTab: () {
                                                    method.launchURL(AppTexts.projectBrick_Url);
                                                  },
                                                  projectDesc: AppTexts.projectBrick_Msg,
                                                  projectTitle: AppTexts.projectBrick_Name,
                                                  tech1: AppTexts.projectJava,
                                                  tech2: AppTexts.projectApache,
                                                  tech3: ""
                                                ),
                                              ],
                                            ),
                                          ],
                                        )),
                                    const SizedBox(
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
                                  margin: const EdgeInsets.fromLTRB(0, 16.0, 0, 10), // Added space at the top
                                  child: Container(
                                    decoration: const BoxDecoration(
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
                                          const Text(AppTexts.connectLine,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 16.0, color: Color(0xff41FBDA), letterSpacing: 3.0),
                                          ),
                                          const SizedBox(height: 16.0),
                                          const Text(AppTexts.Get,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 42.0, color: Colors.white, letterSpacing: 3.0, fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(height: 16.0),
                                          Text(AppTexts.connectMsg,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 17.0, color: Colors.white.withOpacity(0.4), letterSpacing: 0.75),
                                          ),
                                          const SizedBox(height: 32.0),
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
                                                    hoverColor: const Color(0xff64FFDA),
                                                    child: Card(
                                                      elevation: 4.0,
                                                      color: const Color(0xff64FFDA),
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(6.0),
                                                      ),
                                                      child: Container(
                                                        margin: const EdgeInsets.all(0.85),
                                                        height: size.height * 0.07,
                                                        alignment: Alignment.center,
                                                        decoration: BoxDecoration(
                                                          // color: Color(0xff0A192F),
                                                          gradient: const LinearGradient(
                                                            colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
                                                            begin: Alignment.topLeft,
                                                            end: Alignment.topRight,
                                                          ),
                                                          borderRadius: BorderRadius.circular(6.0),
                                                        ),
                                                        child: const Padding(
                                                          padding: EdgeInsets.symmetric(
                                                            horizontal: 8.0,
                                                          ),
                                                          child: Text(
                                                            AppTexts.connectLastHi,
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
                                          const SizedBox(height: 275.0),
                                          Text(AppTexts.profileLastLine,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 14.0,
                                                // color: Colors.white.withOpacity(0.4),
                                                color: const Color(0xff64FFDA).withOpacity(0.4), // Set the desired color for the heart
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
                              child: Text(AppTexts.profileEmail,
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
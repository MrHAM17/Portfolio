import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:harsh_minde/Models/CustomText.dart';
import 'package:harsh_minde/Models/Method.dart';
import 'package:harsh_minde/App/AppProject.dart';
import 'package:harsh_minde/Web/WebExperience.dart';
import 'package:harsh_minde/constants/app_texts.dart';
// import 'package:auto_scroll/auto_scroll.dart';        //   Don't use this one --> Creates Errors
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:harsh_minde/App/AppExperience.dart';
import '../Models/WebFeatureProject.dart';

class AppHome extends StatefulWidget {

  // // Define a BoxDecoration variable  -- >>  For Drawer
  final BoxDecoration color = const BoxDecoration(
    gradient: LinearGradient(
      // colors: [Color(0xFF42A5F5), Color(0xFF0A192F)],
      colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  final ScrollController _scrollTopIntro = ScrollController();       // -------- ------- -------- >>>>>>>>>>> part of way 1  (when click on masksTheater icon) ----->> IMP

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: const Color(0xff64FFDA).withOpacity(0.9),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            letterSpacing: 1.75,
          ),
        )
      ],
    );
  }

  @override

  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Color(0xfffff500),      // also creates superb bg

      appBar: AppBar(
        // backgroundColor: Color(0xff0A192F),   // gives color to whole appbar

        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
              begin: Alignment.topLeft,
              // end: Alignment.topRight,
            ),
          ),
        ),

        iconTheme: const IconThemeData(
          color: Colors.white,
          // color: Color(0xff64FFDA),
        ),

        elevation: 0.0,
        // title: IconButton(
        //   icon: FaIcon(
        //     // FontAwesomeIcons.masksTheater,
        //     // FontAwesomeIcons.star,
        //     FontAwesomeIcons.solidStar,
        //     size: 32.0,
        //     color: Color(0xff64FFDA),
        //   ),
        //
        //   onPressed: () {
        //     // Scroll to the top when the icon is clicked
        //     // // way 1: auto-scrolling to the top       // <<<<<<< ------- -------------- -----------------------
        //     _scrollTopIntro.animateTo(
        //       0.0,
        //       duration: Duration(milliseconds: 20),
        //       curve: Curves.easeInOut,
        //     );
        //   },
        // ),

        // LEFT ICON - scroll to top
        leading: IconButton(
          icon: const FaIcon(
                 // FontAwesomeIcons.masksTheater,
                 // FontAwesomeIcons.star,
            FontAwesomeIcons.solidStar,
            size: 32.0,
            color: Color(0xff64FFDA),
          ),
          onPressed: () {
            // Scroll to the top when the icon is clicked
            // // way 1: auto-scrolling to the top       // <<<<<<< ------- -------------- -----------------------
            _scrollTopIntro.animateTo(
              0.0,
              duration: const Duration(milliseconds: 20),
              curve: Curves.easeInOut,
            );
          },
        ),
        // RIGHT ICON - open endDrawer
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
          elevation: 6.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration: widget.color, // Use widget.color here
                  currentAccountPicture: const CircleAvatar(
                    // child: Icon(Icons.person, size: 48.0, color: Colors.red, ),
                    child: FaIcon(
                      FontAwesomeIcons.user,
                      // size: 48.0,
                    ),
                    backgroundImage: AssetImage(AppTexts.myImg_path),
                  ),

                  accountName: const Text(AppTexts.myName),
                  accountEmail: const Text(AppTexts.profileEmail)),


              ListTile(
                title: const Text(AppTexts.profileResume),
                leading: const DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.fileLines),
                ),
                onTap: () {
                  method.launchURL(AppTexts.resume_path);
                },
              ),

              ListTile(
                title: const Text(AppTexts.profileAbout),
                leading: const DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.user),
                ),

                onTap: () {
                },
              ),

              const ListTile(
                title: Text(AppTexts.profileExperience),
                leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.briefcase),
                ),
                // onTap: () { },
              ),

              const ListTile(
                title: Text(AppTexts.profileProjects),
                leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.code),
                ),
                // onTap: () { },
              ),

              const ListTile(
                title: Text(AppTexts.Get),
                leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.envelope),
                ),
                // onTap: () { },
              ),
            ],
          )),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF1F0B48),Color(0xFF03051F)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          controller: _scrollTopIntro,     // -------- ------- -------- >>>>>>>>>>> part of way 1 (when click on masksTheater icon)----->> IMP
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.08,
                ),
                CustomText(
                  text: AppTexts.profileHi1st,
                  textsize: 20.0,
                  // color: Color(0xff41FBDA),
                  color: const Color(0xff64FFDA),
                  letterSpacing: 2.6,
                  fontWeight: FontWeight.bold,

                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                CustomText(
                  text: AppTexts.myName,
                  textsize: 52.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                CustomText(
                  text: AppTexts.profileHeadline,
                  textsize: 42.0,
                  color: const Color(0xdfd3d5d5).withOpacity(0.9), // 0.6
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Wrap(
                    children: [
                      Text(AppTexts.profileDescription,
                  style: TextStyle(
                          // color: Colors.grey,
                    color: Colors.white,
                    fontSize: 15.0,
                          letterSpacing: 2.75,
                          wordSpacing: 0.75,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.06,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  color: const Color(0xff64FFDA),
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(0.75),
                    height: 56.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: const Color(0xff0A192F),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        method.launchEmail();
                      },
                      hoverColor: Colors.orangeAccent, // green
                      child: const Text(AppTexts.Get,
                        style: TextStyle(
                          color: Color(0xff64FFDA),
                          letterSpacing: 2.75,
                          wordSpacing: 1.0,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),

                // About me
                FittedBox(
                      fit: BoxFit.cover,
                        child: Container(
                          width: size.width,
                          //color: Colors.purple,
                            child: Column(
                              children: [
                                //About me title
                               Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      CustomText(
                                        text: AppTexts.aboutNum,
                                        textsize: 28.0,
                                        color: const Color(0xff61F9D5),
                                        // color: Color(0xff000000),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      CustomText(
                                        text: AppTexts.aboutTitle,
                                        textsize: 26.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.01,
                                      ),
                                      Container(
                                        width: size.width / 4,
                                        height: 1.10,
                                        color: const Color(0xff0A192F),
                                        // color: Color(0xfffcf200),
                                      ),
                                    ],
                                  ),
                                SizedBox(
                                  height: size.height * 0.07,
                                ),
                                //About me desc
                                Wrap(
                                  children: [
                                    CustomText(
                                      text: AppTexts.aboutDescription_1,
                                      textsize: 16.0,
                                      // color: Color(0xff828DAA),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text: AppTexts.aboutDescription_2,
                                      textsize: 16.0,
                                      // color: Color(0xff828DAA),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text: AppTexts.aboutDescription_3,
                                      textsize: 16.0,
                                      // color: Color(0xff828DAA),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.75,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.06,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    // color: Color(0xFF03051F),
                                    gradient: const LinearGradient(
                                      colors: [Color(0xFF03051F), Color(0xFF1F0B48)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),

                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  width: size.width,
                                  alignment: Alignment.center,
                                  // color: Color(0x18FCF200),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal, // <-- allows horizontal scrolling
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ),
                    ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                  //  // Image  ------- ---  ==>>>  Below is custom code --> of bg frame of profile pic --> for app view  ( help to --> Animation like web view )
                  Center(
                  child: Container(
                    height: size.height *  0.6,
                    width: size.width * 0.7,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 11,
                          right: 50,
                          left: 50.0,
                          child: Card(
                            color: const Color(0xff61F9D5),
                            // color: Colors.yellowAccent,
                            child: Container(
                              margin: const EdgeInsets.all(2.75),
                              height: size.height *  0.45,  // // 0.45
                              // width: size.width * 0.66, // // 0.66
                              color: const Color(0xff0A192F),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.5,
                          width: size.width *  1.4,
                          child: CustomImageAnimation(),
                        ),
                        Container(
                          height: size.height * 0.5,
                          width: size.width * 0.6,
                          // color: Color(0xff61F9D5).withOpacity(0.5),  // Do not comment out
                        ),
                      ],
                    ),
                  ),
                ),
                //Where I've Worked title
                //  // Experience  ------- ---  ==>>>  Below is WebExperience.dart file's code --> of experience --> for app view  ( help to --> represent experience part like web view(using card) )
                WebExperience(),
                SizedBox(
                  height: size.height * 0.07,
                ),
                //Some Things I've Built title
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: AppTexts.projectNum,
                        textsize: 28.0,
                        color: const Color(0xff61F9D5),
                        // color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        width: 12.0,
                      ),
                      CustomText(
                        text: AppTexts.projectTitle,
                        textsize: 26.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Container(
                        width: size.width / 4,
                        height: 1.10,
                        color: const Color(0xff0A192F),
                      ),
                    ],
                  ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                AppProject(
                  image: AppTexts.projectCine_Img,
                  projectTitle: AppTexts.projectCine_Name,
                  projectDesc: AppTexts.projectCine_Msg,
                  tech1: AppTexts.aboutJC,
                  tech2: AppTexts.projectAndroid,
                  tech3: AppTexts.projectRest,
                  onTap: () => method.launchURL(AppTexts.projectCine_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectNews_Img,
                  projectTitle: AppTexts.projectNews_Name,
                  projectDesc: AppTexts.projectNews_Msg,
                  tech1: AppTexts.projectKotlin,
                  tech2: AppTexts.projectAndroid,
                  tech3: AppTexts.projectRest,
                  onTap: () => method.launchURL(AppTexts.projectNews_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectHealth_Img,
                  projectTitle: AppTexts.projectHealth_Name,
                  projectDesc: AppTexts.projectHealth_Msg,
                  tech1: AppTexts.aboutDart,
                  tech2: AppTexts.projectFlutter,
                  tech3: AppTexts.projectFire,
                  onTap: () => method.launchURL(AppTexts.projectHealth_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectVote_Img,
                  projectTitle: AppTexts.projectVote_Name,
                  projectDesc: AppTexts.projectVote_Msg,
                  tech1: AppTexts.projectFlutter,
                  tech2: AppTexts.projectBlockchain,
                  tech3: AppTexts.projectFire,
                  onTap: () => method.launchURL(AppTexts.projectVote_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectBookNlp_Img,
                  projectTitle: AppTexts.projectBookNlp_Name,
                  projectDesc: AppTexts.projectBookNlp_Msg,
                  tech1: AppTexts.aboutRPy,
                  tech2: AppTexts.aboutColab,
                  tech3: AppTexts.aboutVS,
                  onTap: () => method.launchURL(AppTexts.projectBookNlp_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectBookMl_Img,
                  projectTitle: AppTexts.projectBookMl_Name,
                  projectDesc: AppTexts.projectBookMl_Msg,
                  tech1: AppTexts.aboutRPy,
                  tech2: AppTexts.aboutColab,
                  tech3: AppTexts.aboutVS,
                  onTap: () => method.launchURL(AppTexts.projectBookMl_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectSpotify_Img,
                  projectTitle: AppTexts.projectSpotify_Name,
                  projectDesc: AppTexts.projectSpotify_Msg,
                  tech1: AppTexts.aboutRPy,
                  tech2: AppTexts.aboutColab,
                  tech3: "",
                  onTap: () => method.launchURL(AppTexts.projectSpotify_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectNutrition_Img,
                  projectTitle: AppTexts.projectNutrition_Name,
                  projectDesc: AppTexts.projectNutrition_Msg,
                  tech1: AppTexts.projectWeb,
                  tech2: AppTexts.projectAwsS3,
                  tech3: "",
                  onTap: () => method.launchURL(AppTexts.projectNutrition_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectMC_Img,
                  projectTitle: AppTexts.projectMC_Name,
                  projectDesc: AppTexts.projectMC_Msg,
                  tech1: AppTexts.projectAndroid,
                  tech2: AppTexts.projectFlutter,
                  tech3: "",
                  onTap: () => method.launchURL(AppTexts.projectMC_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectCollege_Img,
                  projectTitle: AppTexts.projectCollege_Name,
                  projectDesc: AppTexts.projectCollege_Msg,
                  tech1: AppTexts.aboutDart,
                  tech2: AppTexts.projectFlutter,
                  tech3: AppTexts.projectFire,
                  onTap: () => method.launchURL(AppTexts.projectCollege_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectMech_Img,
                  projectTitle: AppTexts.projectMech_Name,
                  projectDesc: AppTexts.projectMech_Msg,
                  tech1: AppTexts.aboutDart,
                  tech2: AppTexts.projectFlutter,
                  tech3: AppTexts.projectFire,
                  onTap: () => method.launchURL(AppTexts.projectMech_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectChat_Img,
                  projectTitle: AppTexts.projectChat_Name,
                  projectDesc: AppTexts.projectChat_Msg,
                  tech1: AppTexts.projectJava,
                  tech2: AppTexts.projectAndroid,
                  tech3: AppTexts.projectFire,
                  onTap: () => method.launchURL(AppTexts.projectChat_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectYatra_Img,
                  projectTitle: AppTexts.projectYatra_Name,
                  projectDesc: AppTexts.projectYatra_Msg,
                  tech1: AppTexts.projectJava,
                  tech2: AppTexts.projectAndroid,
                  tech3: AppTexts.projectSqlite,
                  onTap: () => method.launchURL(AppTexts.projectYatra_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectDesktop_Img,
                  projectTitle: AppTexts.projectDesktop_Name,
                  projectDesc: AppTexts.projectDesktop_Msg,
                  tech1: AppTexts.projectCpp,
                  tech2: AppTexts.aboutBlocks,
                  tech3: "",
                  onTap: () => method.launchURL(AppTexts.projectDesktop_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectPlay_Img,
                  projectTitle: AppTexts.projectPlay_Name,
                  projectDesc: AppTexts.projectPlay_Msg,
                  tech1: AppTexts.projectPy,
                  tech2: AppTexts.aboutVS,
                  tech3: "",
                  onTap: () => method.launchURL(AppTexts.projectPlay_Url),
                ),
                SizedBox(height: size.height * 0.07),
                AppProject(
                  image: AppTexts.projectBrick_Img,
                  projectTitle: AppTexts.projectBrick_Name,
                  projectDesc: AppTexts.projectBrick_Msg,
                  tech1: AppTexts.projectJava,
                  tech2: AppTexts.projectApache,
                  tech3: "",
                  onTap: () => method.launchURL(AppTexts.projectBrick_Url),
                ),
                SizedBox(
                  height: size.height * 0.17,
                ),
               FittedBox(
                    fit: BoxFit.cover,
                    child: Container(
                      //height: size.aspectRatio,
                      width: size.width,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: AppTexts.connectLine,
                            textsize: 18.0,
                            color: const Color(0xff64FFDA),
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 16.0,
                          ),
                          CustomText(
                            text: AppTexts.Get,
                            textsize: 42.0,
                            color: Colors.white,
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(
                            height: size.height * 0.04,
                          ),
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(AppTexts.connectMsg,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  letterSpacing: 0.75,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.07,
                          ),
                          Card(
                            elevation: 4.0,
                            color: const Color(0xff64FFDA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(0.85),
                              height: size.height * 0.10,
                              width: size.width * 0.30,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xff0A192F),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                ),
                                child: Text(
                                  AppTexts.connectLastHi,
                                  style: TextStyle(
                                    color: Color(0xff64FFDA),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL(AppTexts.githubUrl);
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL(AppTexts.linkedinUrl);
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchEmail();
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL(AppTexts.twitterUrl);
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL(AppTexts.instagramUrl);
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                // Footer
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.white,
                  child: Text(AppTexts.profileLastLine,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xff64FFDA).withOpacity(0.4),
                      letterSpacing: 1.75,
                      fontSize: 14.0,
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
//   //                                                               Below code is for image animation
class CustomImageAnimation extends StatefulWidget {
  CustomImageAnimation({ Key? key}) : super(key: key);

  @override
  _CustomImageAnimationState createState() => _CustomImageAnimationState();
}
//  // Animation  ------- ---  ==>>>  Below is WebAbout code --> of pics animataion (hover --> manage 2 pics) for profile pic --> for app view  ( help to --> Animation like web view )

class _CustomImageAnimationState extends State<CustomImageAnimation>
    with SingleTickerProviderStateMixin {
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
  @override
  Widget build(BuildContext context) {
    Method method = Method();
    final Size size = MediaQuery.of(context).size;
    return Container(
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
                                  width: size.width * 0.4,
                                  height: size.height * 0.6,
                                  fit: BoxFit.cover,
                                  // image: AssetImage("images/MyQuote.jpg"),
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
                                  width: size.width * 0.4,
                                  height: size.height * 0.6,
                                  fit: BoxFit.cover,

                                // Case 1)      // assets:
                                   //   image: AssetImage("assets/images/MyProfilePic.jpg"),     // Working   --> choosing this style
                                  image: const AssetImage(AppTexts.myImg_path),        // Working
                                // Case 2)      // assets:
                                // Case 3)      // assets:
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
    );
  }
}

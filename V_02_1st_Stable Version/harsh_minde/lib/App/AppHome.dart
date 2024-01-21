import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:harsh_minde/Models/CustomText.dart';
import 'package:harsh_minde/Models/Method.dart';
import 'package:harsh_minde/App/AppProject.dart';
import 'package:harsh_minde/Web/WebExperience.dart';
// import 'package:auto_scroll/auto_scroll.dart';        //   Don't use this one --> Creates Errors
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:harsh_minde/App/AppExperience.dart';

class AppHome extends StatefulWidget {

  // // Define a BoxDecoration variable  -- >>  For Drawer
  final BoxDecoration color = BoxDecoration(
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
          color: Color(0xff64FFDA).withOpacity(0.9),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Text(
          text,
          style: TextStyle(
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

      endDrawer: Drawer(
          elevation: 6.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration: widget.color, // Use widget.color here
                  currentAccountPicture: CircleAvatar(
                    // child: Icon(Icons.person, size: 48.0, color: Colors.red, ),
                    child: FaIcon(
                      FontAwesomeIcons.user,
                         // size: 48.0,
                    ),
                    backgroundImage: AssetImage("assets/images/MyProfilePic.jpg"),
                  ),

                  accountName: Text("Harsh Minde."),
                  accountEmail: Text("harshminde1@gmail.com")),


              ListTile(
                title: Text("Resume"),
                leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.fileLines),
                ),
                onTap: () {
                  method.launchURL(
                      "https://drive.google.com/file/d/1aS-lTS_YrQFyiDJUn60ErxNGJfYjU4pL/view?usp=sharing");
                },
              ),

              ListTile(
                title: Text("About "),
                leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.user),
                ),

                onTap: () {
                },
              ),

              ListTile(
                title: Text("Experience"),
                  leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.briefcase),
                ),
                // onTap: () { },
              ),

              ListTile(
                title: Text("Projects"),
                leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.code),
                ),
                // onTap: () { },
                 ),

              ListTile(
                title: Text("Get In Touch "),
                leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.envelope),
                ),
                // onTap: () { },
               ),
            ],
          )),
      appBar: AppBar(
        // backgroundColor: Color(0xff0A192F),   // gives color to whole appbar

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1F0B48), Color(0xFF03051F)],
              begin: Alignment.topLeft,
              // end: Alignment.topRight,
            ),
          ),
        ),

        iconTheme: IconThemeData(
          color: Colors.white,
          // color: Color(0xff64FFDA),
        ),

        elevation: 0.0,
        title: IconButton(
          icon: FaIcon(
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
              duration: Duration(milliseconds: 20),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
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
                  text: "Hi, my name is",
                  textsize: 20.0,
                  // color: Color(0xff41FBDA),
                  color: Color(0xff64FFDA),
                  letterSpacing: 2.6,
                  fontWeight: FontWeight.bold,

                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                CustomText(
                  text: "Harsh Minde.",
                  textsize: 52.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                CustomText(
                  text: "I build things for Android & Flutter.",
                  textsize: 42.0,
                  color: Color(0xdfd3d5d5).withOpacity(0.9), // 0.6
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Wrap(
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
                  color: Color(0xff64FFDA),
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(0.75),
                    height: 56.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Color(0xff0A192F),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        method.launchEmail();
                      },
                      hoverColor: Colors.orangeAccent, // green
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
                                    children: [
                                      CustomText(
                                        text: "01.",
                                        textsize: 28.0,
                                        color: Color(0xff61F9D5),
                                        // color: Color(0xff000000),
                                        fontWeight: FontWeight.bold,
                                      ),
                                      SizedBox(
                                        width: 12.0,
                                      ),
                                      CustomText(
                                        text: "About Me ",
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
                                        color: Color(0xff0A192F),
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
                                      text:
                                          "I proudly wear multiple hats in this journey called life."
                                          "\nAn artist, where every line I draw tells a story,"
                                          "\na player,where challenges are the levels I conquer,"
                                          "\na student, where knowledge is my eternal companion."
                                          "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
                                          "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
                                          "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
                                      textsize: 16.0,
                                      // color: Color(0xff828DAA),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text:
                                          "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
                                          "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
                                          "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
                                          "\nCurrently, I'm working on exciting projects, including a Semester Project."
                                          "\nI'm thrilled to showcase my upcoming projects !",
                                      textsize: 16.0,
                                      // color: Color(0xff828DAA),
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text:
                                          "\n\nHere are a few technologies, I've been working with recently:\n\n",
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
                                    gradient: LinearGradient(
                                      colors: [Color(0xFF03051F), Color(0xFF1F0B48)],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),

                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  width: size.width,
                                  alignment: Alignment.center,
                                  // color: Color(0x18FCF200),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          technology(context, "C/C++"),
                                          technology(context, "Java"),
                                          technology(context, "Dart"),
                                          technology(context, "Python"),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          technology(context, "Android"),
                                          technology(context, "Flutter"),
                                          technology(context, "SQLite"),
                                          technology(context, "Firebase"),
                                        ],
                                      ), Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          technology(context, "VS Code"),
                                          technology(context, "CodeBlocks"),
                                          technology(context, "A. NetBeans"),
                                          technology(context, "Git/GitHub"),
                                        ],
                                      ),
                                    ],
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
                            color: Color(0xff61F9D5),
                            // color: Colors.yellowAccent,
                            child: Container(
                              margin: EdgeInsets.all(2.75),
                              height: size.height *  0.45,  // // 0.45
                              // width: size.width * 0.66, // // 0.66
                              color: Color(0xff0A192F),
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
                        text: "03.",
                        textsize: 28.0,
                        color: Color(0xff61F9D5),
                        // color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      CustomText(
                        text: "Things I've Built ",
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
                        color: Color(0xff0A192F),
                      ),
                    ],
                  ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                AppProject(
                  onTab: () {},
                  image: "assets/images/Mech_It_App.png",
                  // onTab: () {  },
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                AppProject(
                  onTab: () {},
                  image: "assets/images/Chat_It_App.png",
                  // onTab: () {  },
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                AppProject(
                  onTab: () {},
                  image: "assets/images/My_Yatra_App.png",
                  // onTab: () {  },
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                AppProject(
                  onTab: () {},
                  image: "assets/images/Desktop_Animated_Game.png",
                  // onTab: () {  },
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                AppProject(
                  onTab: () {},
                  image: "assets/images/Play_It_App.png",
                  // onTab: () {  },
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                AppProject(
                  onTab: () {},
                  image: "assets/images/Bricks_Breaker_Game.png",
                  // onTab: () {  },
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
                            text: "0.4 What's Next?",
                            textsize: 18.0,
                            color: Color(0xff64FFDA),
                            letterSpacing: 3.0,
                            fontWeight: FontWeight.bold,
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
                            height: size.height * 0.04,
                          ),
                          Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(
                                   "Currently in preparation mode with a focus on exploring potential opportunities in Android/Flutter."
                                    "\nOpen to connections, questions, and collaborative discussions."
                                    "\nFeel free to reach out anytime!",
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
                            color: Color(0xff64FFDA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(0.85),
                              height: size.height * 0.10,
                              width: size.width * 0.30,
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
                                  "Say Hello",
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
                      icon: Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://github.com/MrHAM17");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.linkedin,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL(
                            "https://www.linkedin.com/in/harsh-minde-268545230/");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchEmail();
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://twitter.com/Harsh_Minde");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://www.instagram.com/mr_ham_17");
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
                  child: Text(
                    "Designed & Built by Harsh Minde\n💙 Flutter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff64FFDA).withOpacity(0.4),
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
      duration: Duration(seconds: 1),
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
            padding: EdgeInsets.symmetric(vertical: 40.0),
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
                                  image: AssetImage('assets/images/MyQuote.jpg'),
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
                                  image: AssetImage("assets/images/MyProfilePic.jpg"),        // Working
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

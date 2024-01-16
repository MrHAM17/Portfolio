import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:harsh_minde/Models/CustomText.dart';
import 'package:harsh_minde/Models/Method.dart';
import 'package:harsh_minde/App/AppProject.dart';
// import 'package:auto_scroll/auto_scroll.dart';        //   Don't use this one --> Creates Errors
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:harsh_minde/App/AppExperience.dart';

// Assuming you have a 'Method' class and 'kToolbarHeight' defined
// Also, import necessary libraries and define missing classes

class AppHome extends StatefulWidget {

  // Define a BoxDecoration variable
  final BoxDecoration color = BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFF42A5F5), Color(0xFF0A192F)],
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
      backgroundColor: Color(0xff0A192F),
      // backgroundColor: Color(0xfffff500),      // also creates superb bg

      endDrawer: Drawer(
          elevation: 6.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  decoration: widget.color, // Use widget.color here
                  currentAccountPicture: CircleAvatar(
                    // child: Icon(Icons.person, size: 48.0, color: Colors.red, ),
                    child: FaIcon( FontAwesomeIcons.user,
                         // size: 48.0,
                        // color: Colors.red
                    ),
                    backgroundImage: AssetImage('images/MyProfilePic.jpg'),
                  ),

                  accountName: Text("Harsh Minde."),
                  accountEmail: Text("harshminde1@gmail.com")),
              ListTile(
                title: Text("About "),
                // leading: Icon(Icons.plus_one),

                // leading: Icon(Icons.home, color: Colors.blue),

                // leading: FaIcon(
                //   FontAwesomeIcons.user,
                //     // color: Colors.blue
                // ),

                leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.user),
                ),

                onTap: () {
                  // _scrollAbout.animateTo(
                  //     0.0,
                  //     duration: Duration(milliseconds: 1),
                  // curve: Curves.easeInOut,
                  // );
                  // // Close the drawer after scrolling if needed
                  // Navigator.pop(context);
                },

                // onTap: _scrollToAbout,
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

              ListTile(
                title: Text("Resume"),
                leading: DefaultTextStyle(
                  style: TextStyle(fontWeight: FontWeight.normal),
                  child: FaIcon(FontAwesomeIcons.fileLines),
                ),
                onTap: () {
                  method.launchURL(
                      "https://drive.google.com/file/d/1yHLcrN5pCUGIeT8SrwC2L95Lv0MVbJpx/view?usp=sharing");
                },
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      "Version 1.0.0\n"
                      "                                              ",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          )),
      appBar: AppBar(
        backgroundColor: Color(0xff0A192F),   // gives color to whole appbar
        // backgroundColor: Color(0xfffcf200),

        iconTheme: IconThemeData(    // gives color to icon for drawer in appbar
          color: Colors.white,
          // color: Color(0xff64FFDA),

        ),

        elevation: 0.0,
        title: IconButton(
          // icon: Icon(
          //   Icons.star,
          //   size: 32.0,
          //   color: Color(0xff64FFDA),
          // ),
          icon: FaIcon(
            FontAwesomeIcons.masksTheater,
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

            // way 2: reload the entire page             // <<<<<<< ------- -------------- -----------------------
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(builder: (context) => AppHome()),
            // );
          },


        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // colors: [Color(0xFF1F0B48),
            //   Color(0xFF4B0E4B)],

            // colors: [Color(0xFF736B41),
            //   Color(0xFF2D1460)],

            // colors: [Color(0xFF4B259F),
            //   Color(0xFFA8A55F)],

            // colors: [Color(0xFF1F0B48),
            //   Color(0xFF8C9346)],

            // colors: [Color(0xFFB699A2),
            //   Color(0xBB06123F)],

            // colors: [Color(0xFF7655B7),
            //   Color(0xFF4B0E4B)],

            colors: [Colors.blue,
              Color(0x0A0415FF)],

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
                  color: Color(0xff000000),
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
                        "\n\nTo build a strong professional foundation.",
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
                                  width: size.width,
                                  alignment: Alignment.center,
                                  color: Color(0x18FCF200),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          technology(context, "Android"),
                                          technology(context, "Flutter"),
                                          technology(context, "SQLite"),
                                          technology(context, "Firebase"),
                                          technology(context, "CodeBlocks"),
                                          technology(context, "Apache NetBeans"),

                                        ],
                                      ),
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

                // Image
                Center(
                  child: Container(
                    height: size.height *  0.6,
                    width: size.width * 0.7,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 50,
                          right: 20,
                          left: 50.0,
                          child: Card(
                            color: Color(0xff61F9D5),
                            // color: Color(0xFF323232),
                            child: Container(
                              margin: EdgeInsets.all(2.75),
                              height: size.height *  0.45,
                              width: size.width * 0.66,
                              color: Color(0xff0A192F),
                            ),
                          ),
                        ),
                        Container(
                          height: size.height * 0.5,
                          width: size.width *  0.6,
                          // // Do not comment out
                          // child: Image(
                          //   fit: BoxFit.cover,
                          //   image: AssetImage("images/MyProfilePic.jpg"),
                          //   // image: AssetImage("assets/pic2"),
                          //   // Image.asset("images/MyProfilePic.jpg"),
                          // ),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "02.",
                        textsize: 28.0,
                        color: Color(0xff61F9D5),
                        // color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(
                        width: 12.0,
                      ),
                      CustomText(
                        text: "My Experience ",
                        textsize: 26.0,
                        color: Color(0xffCCD6F6),
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

               AppExperience(),

                SizedBox(
                  height: size.height * 0.07,
                ),

                //Some Things I've Built title
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   height: size.height * 0.07,
                      // ),

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
                        text: "Some Things I've Built ",
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
                  image: "images/Mech_It_App.png",
                  // onTab: () {  },
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                AppProject(
                  onTab: () {},
                  image: "images/Chat_It_App.png",
                  // onTab: () {  },
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                AppProject(
                  onTab: () {},
                  image: "images/My_Yatra_App.png",
                  // onTab: () {  },
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                AppProject(
                  onTab: () {},
                  image: "images/Desktop_Animated_Game.png",
                  // onTab: () {  },
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                AppProject(
                  onTab: () {},
                  image: "images/Play_It_App.png",
                  // onTab: () {  },
                ),

                SizedBox(
                  height: size.height * 0.07,
                ),

                AppProject(
                  onTab: () {},
                  image: "images/Bricks_Breaker_Game.png",
                  // onTab: () {  },
                ),


                SizedBox(
                  height: size.height * 0.07,
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
                            // color: Color(0xff41FBDA),
                            color: Color(0xff000000),
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
                        FontAwesomeIcons.twitter,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchURL("https://twitter.com");
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: 15.0,
                      ),
                      onPressed: () {
                        method.launchEmail();
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
                      color: Colors.white.withOpacity(0.4),
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

class _CustomImageAnimationState extends State<CustomImageAnimation> {
  Color customImageColor = Color(0xff61F9D5).withOpacity(0.5);
  // ignore: unused_field
  int _enterCounter = 0;
  // ignore: unused_field
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      customImageColor = Color(0xff61F9D5).withOpacity(0.5);
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      customImageColor = Colors.transparent;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: _incrementEnter,
      onHover: _updateLocation,
      onExit: _incrementExit,
      child: Stack(
        children: [
          Container(
            height: size.height / 2,
            // width: size.width / 5,    // Do not comment out
            color: Colors.black54,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("images/MyProfilePic.jpg"),
            ),
          ),
          Container(
            height: size.height / 2,
            // width: size.width / 5,   // Do not comment out
            color: customImageColor,
          ),
        ],
      ),
    );
  }
}








/*

when user click on "masksTheater" icon then
either page should autoscroll to top or relaod the site
----------------------------------  --------------------    >>>>>>>>  >>>>>>>>>>      >>>>>>>>>>>>>>>>>       >>>>>>>>>>>>     >>>>>>>>>>>>>>>>>    >>>>>>>>>>>>>>>>>
To achieve auto-scrolling or reloading when the user clicks on the "masksTheater" icon, you can use a ScrollController to control the scroll position of your SingleChildScrollView. If you want to reload the entire page, you can use Navigator.pushReplacement to push the same page again.

Here's an example of how you can implement auto-scrolling to the top when the "masksTheater" icon is clicked:

        dart
        Copy code
        import 'package:flutter/material.dart';

        class AppHome extends StatefulWidget {
        @override
        _AppHomeState createState() => _AppHomeState();
        }

        class _AppHomeState extends State<AppHome> {
        final ScrollController _scrollController = ScrollController();

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: IconButton(
                icon: Icon(Icons.masksTheater),
                onPressed: () {
                  // Scroll to the top when the icon is clicked
                  _scrollController.animateTo(
                    0.0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
            body: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                // Your existing content goes here
              ),
            ),
          );
        }
        }
In this example, I've added a ScrollController named _scrollController to the state. When the "masksTheater" icon is clicked, the _scrollController.animateTo method is used to smoothly scroll to the top of the SingleChildScrollView.

If you want to reload the entire page, you can use Navigator.pushReplacement:

        dart
        Copy code
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => AppHome()),
          );
        },
This will push a new instance of AppHome and replace the current page, effectively reloading it. Make sure to import package:flutter/material.dart.

*/
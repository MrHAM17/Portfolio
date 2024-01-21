import 'dart:math';
import 'package:flutter/material.dart';
import 'package:harsh_minde/Models/CustomText.dart';
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
      duration: Duration(seconds: 1),
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
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
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
                  text: "01.",
                  textsize: 20.0,
                  color: Color(0xff61F9D5),
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: 12.0,
                ),
                CustomText(
                  text: "About Me",
                  textsize: 26.0,
                  color: Color(0xffCCD6F6),
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  width: size.width * 0.01,
                ),
                Container(
                  width: size.width / 4,
                  height: 1.10,
                  color: Color(0xff303C55),
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
                  margin: EdgeInsets.all(16.0),
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
                                      text: "\nI proudly wear multiple hats in this journey called life."
                                          "\nAn artist, where every line I draw tells a story,"
                                          "\na player, where challenges are the levels I conquer,"
                                          "\na student, where knowledge is my eternal companion."
                                          "\nI am a programming enthusiast, weaving logic into the fabric of possibilities."
                                          "\nAn avid learner, every experience is a lesson, and I, an eager student of life's classroom."
                                          "\nAspiring to be a software engineer, my code is the reflection of my aspirations, a bridge between dreams and reality.",
                                      textsize: 16.0,
                                      color: Color(0xff828DAA),
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text: "\n\nI deeply enjoy coding, development & continually learn new technologies to meet demands of various industries."
                                          "\nWith cleared vision & focus, I consistently enhance my logical thinking and problem-solving abilities."
                                          "\nMy journey includes honing essential software skills & delving into areas such as App Development, Competitive Programming, and more. "
                                          "\nCurrently, I'm working on exciting projects, including a Semester Project."
                                          "\nI'm thrilled to showcase my upcoming projects !",
                                      textsize: 16.0,
                                      color: Color(0xff828DAA),
                                      letterSpacing: 0.75,
                                    ),
                                    CustomText(
                                      text: "\n\nHere are a few technologies, I've been working with recently:\n\n",
                                      textsize: 16.0,
                                      color: Color(0xff828DAA),
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
                                                    technology(context, "C/C++"),
                                                    technology(context, "Java"),
                                                    technology(context, "Dart"),
                                                    technology(context, "Python"),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // width: size.width * 0.15,
                                                width: size.width * 0.13,

                                                child: Column(
                                                  children: [
                                                    technology(context, "Android"),
                                                    technology(context, "Flutter"),
                                                    technology(context, "SQLite"),
                                                    technology(context, "Firebase"),
                                                  ],
                                                ),
                                              ),

                                              Container(
                                                width: size.width * 0.15,
                                                child: Column(
                                                  children: [
                                                    technology(context, "VS Code"),
                                                    technology(context, "CodeBlocks"),
                                                    technology(context, "A. NetBeans"),
                                                    technology(context, "Git/GitHub"),
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
                                                      width: size.width * 0.2,
                                                      height: size.height * 0.6,
                                                      fit: BoxFit.cover,
                                                      image: AssetImage("assets/images/MyQuote.jpg"),
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
                                                      image: AssetImage("assets/images/MyProfilePic.jpg"),
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
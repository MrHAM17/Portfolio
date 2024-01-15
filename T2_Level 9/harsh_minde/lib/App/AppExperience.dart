import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:harsh_minde/App/AppExperienceBox.dart';

class AppExperience extends StatefulWidget {
  @override
  _AppExperienceState createState() => _AppExperienceState();
}

class _AppExperienceState extends State<AppExperience> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        width: size.width,
        height: size.height * 0.8,        //   <<<<<< -----------  1st height
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    height: size.height * 0.5,    //   <<<<<< -----------  2nd height
                    //color: Colors.indigo,
                    child: Stack(
                      children: [
                        Center(
                          child: VerticalDivider(
                            color: Color(0xff64FFDA),
                            thickness: 1.75,
                            width: 10,
                            indent: 10,
                            endIndent: 10,
                          ),
                        ),
                        Container(
                          child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.pink,
                                    child: FaIcon(FontAwesomeIcons.laptopHouse,
                                        color: Colors.white),
                                  ),
                                  // SizedBox(
                                  //   height: size.height * 0.02,
                                  // ),
                                  CircleAvatar(
                                    backgroundColor: Colors.red,
                                    child: FaIcon(FontAwesomeIcons.freeCodeCamp,
                                        color: Colors.white),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.brown,
                                    child: FaIcon(FontAwesomeIcons.laptopCode,
                                        color: Colors.white),
                                  ),
                                  // CircleAvatar(
                                  //   backgroundColor: Colors.deepOrange,
                                  //   child: FaIcon(FontAwesomeIcons.coffee,
                                  //       color: Colors.white),
                                  // ),
                                  // CircleAvatar(
                                  //   backgroundColor: Colors.deepPurple,
                                  //   child: FaIcon(FontAwesomeIcons.dev,
                                  //       color: Colors.white),
                                  // ),
                                ],
                              )),
                        )
                      ],
                    )),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    height: size.height * 0.5,          //   <<<<<< -----------  3rd height
                    child: AppExperienceBox(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}


// To manage the height of experience's section  -->  Manage these 3 heights(mentioned above) & use sizebox/x efficiently between CircleAvatars.
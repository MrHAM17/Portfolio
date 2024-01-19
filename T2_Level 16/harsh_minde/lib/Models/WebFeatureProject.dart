import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:harsh_minde/Models/CustomText.dart';

class WebFeatureProject extends StatelessWidget {
  final String imagePath;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;
  final void Function()? onTab;

  WebFeatureProject({
    required this.imagePath,
    required this.onTab,
    required this.projectDesc,
    required this.projectTitle,
    this.tech1 = "",
    this.tech2 = "",
    this.tech3 = "",
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      // height: size.height - 280,
      height: size.height * 0.6,

      child: Card(
        elevation: 0,
        child: Row(
          children: [
            _buildImageCard(context),
            _buildInformationCard(context),
          ],
        ),
        color: Colors.transparent, // Set card color as transparent
      ),
    );
  }

  Widget _buildImageCard(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // height: size.height - 280,
      height: size.height,
      width: size.width * 0.5,
      child: Card(
        color: Colors.transparent, // Set card color as transparent
        elevation: 0,
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(imagePath),
        ),
      ),
    );
  }

  Widget _buildInformationCard(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // double minHeight = size.height - 540;
    double minHeight = size.height * 0.1;

    return Expanded(
      child: Card(
        color: Colors.transparent,
        elevation: 8,
        child: SingleChildScrollView( // Add SingleChildScrollView
          child: Container(
            width: size.width * 0.3,
            constraints: BoxConstraints(
              minHeight: minHeight,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildProjectTitle(),
                    _buildGitHubIconButton(),
                  ],
                ),
                SizedBox(height: 8.0),
                _buildProjectDescription(),
                SizedBox(height: 8.0),
                _buildTechRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget _buildProjectTitle() {
    return CustomText(
      text: projectTitle,
      textsize: 27,
      color: Colors.grey,
      fontWeight: FontWeight.w700,
      letterSpacing: 1.75,
      textAlign: TextAlign.end,
    );
  }

  Widget _buildProjectDescription() {
    return Container(
      color: Color(0xff172A45),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomText(
          text: projectDesc,
          textsize: 16.0,
          color: Colors.white.withOpacity(0.4),
          letterSpacing: 0.75,
        ),
      ),
    );
  }

  Widget _buildTechRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        _buildTechText(tech1),
        SizedBox(width: 16.0),
        _buildTechText(tech2),
        SizedBox(width: 16.0),
        _buildTechText(tech3),
      ],
    );
  }

  Widget _buildTechText(String tech) {
    return CustomText(
      text: tech == null ? "" : tech,
      textsize: 14,
      color: Colors.grey,
      letterSpacing: 1.75,
    );
  }

  Widget _buildGitHubIconButton() {
    return IconButton(
      icon: FaIcon(FontAwesomeIcons.github),
      color: Colors.white.withOpacity(0.3),
      onPressed: onTab,
    );
  }
}










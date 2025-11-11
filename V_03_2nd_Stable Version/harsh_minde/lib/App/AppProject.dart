import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:harsh_minde/Models/CustomText.dart';

class AppProject extends StatelessWidget {
  final VoidCallback? onTap;
  final String image;
  final String projectTitle;
  final String projectDesc;
  final String tech1;
  final String tech2;
  final String tech3;

  const AppProject({
    required this.onTap,
    required this.image,
    required this.projectTitle,
    required this.projectDesc,
    this.tech1 = "",
    this.tech2 = "",
    this.tech3 = "",
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Card(
      color: const Color(0xff172A45),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image at top
          // View 1
          // ClipRRect(
          //   borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          //   child: Image.asset(
          //     image,
          //     height: size.height * 0.25,
          //     width: double.infinity,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          // View 2
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Info area
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff172A45), // dark bg
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(8), // 12
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title row with GitHub icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Project title
                      CustomText(
                        text: projectTitle,
                        textsize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[200]!,
                      ),
                      // GitHub icon button
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.github,
                          color: Colors.white.withOpacity(0.7),
                        ),
                        onPressed: onTap, // Only this clickable
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  // Description
                  CustomText(
                    text: projectDesc,
                    textsize: 14,
                    color: Colors.grey[300]!,
                  ),
                  const SizedBox(height: 12),
                  // Tech stack row
                  Row(
                    children: [
                      _buildTechChip(tech1),
                      const SizedBox(width: 8),
                      _buildTechChip(tech2),
                      const SizedBox(width: 8),
                      _buildTechChip(tech3),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTechChip(String tech) {
    if (tech.isEmpty) return const SizedBox.shrink();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      child: CustomText(
        text: tech,
        textsize: 12,
        color: Colors.grey[300]!,
      ),
    );
  }
}

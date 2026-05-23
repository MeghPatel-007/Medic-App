import 'package:flutter/material.dart';
import 'package:medic/core/theme/app_color.dart';

Widget doctorCard(
  BuildContext context,
  double w,
  String name,
  String post,
  String chats,
  String stars,
  String profilePhoto,
) {
  return Material(
    color: Colors.transparent,
      borderRadius: BorderRadius.circular(30),
    child: InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.violet,
          borderRadius: BorderRadius.circular(30),
        ),

        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(profilePhoto),
                ),

                SizedBox(width: 15),

                // TEXT SECTION
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: w,
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                color: AppColors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              post,
                              style: TextStyle(
                                color: AppColors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 7),

                      // BOTTOM ACTIONS
                      Row(
                        children: [
                          // STAR
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: AppColors.blue,
                                  size: 12,
                                ),
                                SizedBox(width: 2),
                                Text(stars, style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),

                          const SizedBox(width: 10),

                          // CHAT
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Row(
                              children: [
                                Icon(
                                  Icons.chat_bubble_outline,
                                  color: AppColors.blue,
                                  size: 12,
                                ),
                                SizedBox(width: 5),
                                Text(chats, style: TextStyle(fontSize: 12)),
                              ],
                            ),
                          ),

                          const Spacer(),

                          // HELP
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: AppColors.white,
                            child: Icon(
                              size: 18,
                              Icons.question_mark,
                              color: AppColors.blue,
                            ),
                          ),

                          const SizedBox(width: 10),

                          // FAVORITE
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: AppColors.white,
                            child: Icon(
                              size: 18,
                              Icons.favorite,
                              color: AppColors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

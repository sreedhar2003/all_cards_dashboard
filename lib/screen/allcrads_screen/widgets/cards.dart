import 'package:all_cards_dashboard/helpers/appcolors.dart';
import 'package:all_cards_dashboard/helpers/size_extensions.dart';
import 'package:all_cards_dashboard/helpers/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cards extends StatelessWidget {
  final String title;
  final String titleimage;
  final String caption;
  final String firstitem;
  final String firstitemvalue;
  final String seconditem;
  final String seconditemvalue;
  final String notificationtext;

  const Cards(
      {super.key,
      required this.title,
      required this.caption,
      required this.firstitem,
      required this.firstitemvalue,
      required this.seconditem,
      required this.seconditemvalue,
      required this.notificationtext,
      required this.titleimage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: AppColors.grey.withOpacity(0.4),
              spreadRadius: 1.r,
              blurRadius: 8.r,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  height: 24,
                  width: 24,
                  titleimage,
                  fit: BoxFit.cover,
                ),
                // Image.network(
                //   titleimage,
                //   height: 24,
                //   width: 24,
                //   fit: BoxFit.cover,
                //   errorBuilder: (context, error, stackTrace) =>
                //       Icon(Icons.broken_image),
                // ),
                sizedBoxWithWidth(5),
                Text(
                  title,
                  style: GoogleFonts.roboto(
                      color: AppColors.titlecolor,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.sp),
                ),
                sizedBoxWithWidth(5),
                Image.asset(
                  height: 20,
                  width: 20,
                  "assets/images/crown.png",
                  fit: BoxFit.cover,
                ),
                const Spacer(),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.titlecolor,
                  child: Center(child: Icon(Icons.add, color: AppColors.white)),
                ),
              ],
            ),
            sizedBoxWithHeight(5),
            Text(
              caption,
              style: GoogleFonts.roboto(
                  color: AppColors.green,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp),
            ),
            sizedBoxWithHeight(10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.firstcontainercolor,
                        border: Border.all(color: AppColors.titlecolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          firstitem,
                          style: GoogleFonts.roboto(
                              color: AppColors.titlecolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                        ),
                        sizedBoxWithHeight(10),
                        Text(
                          firstitemvalue,
                          style: GoogleFonts.roboto(
                              color: AppColors.titlecolor,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                        ),
                        sizedBoxWithHeight(5),
                        Text(
                          "(Goal: <${firstitemvalue})",
                          style: GoogleFonts.roboto(
                              color: AppColors.grey,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ),
                ),
                sizedBoxWithWidth(10),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.secondcontainercolor,
                        border:
                            Border.all(color: AppColors.secondcontainerboder),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          seconditem,
                          style: GoogleFonts.roboto(
                              color: AppColors.secondcontainerboder,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp),
                        ),
                        sizedBoxWithHeight(10),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  seconditemvalue,
                                  style: GoogleFonts.roboto(
                                      color: AppColors.secondcontainerboder,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                                sizedBoxWithHeight(5),
                                Text(
                                  "Last 7 days",
                                  style: GoogleFonts.roboto(
                                      color: AppColors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.sp),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Image.asset(
                              height: 35,
                              width: 60,
                              "assets/images/graph.png",
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            sizedBoxWithHeight(10),
            Container(
              height: 36,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Image.asset(
                      height: 15,
                      width: 15,
                      "assets/images/bell.png",
                      fit: BoxFit.cover),
                  sizedBoxWithWidth(5),
                  Expanded(
                    child: Text(
                      notificationtext,
                      style: GoogleFonts.roboto(
                          color: AppColors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp),
                    ),
                  ),
                ],
              ),
            ),
            sizedBoxWithHeight(10),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(82),
                gradient: const LinearGradient(
                  colors: [
                    AppColors.headingcolor,
                    AppColors.titlecolor,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Text(
                  "View More",
                  style: GoogleFonts.roboto(
                      color: AppColors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

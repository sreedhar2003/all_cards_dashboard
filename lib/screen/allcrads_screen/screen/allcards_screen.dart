// import 'package:all_cards_dashboard/helpers/appcolors.dart';
// import 'package:all_cards_dashboard/helpers/screen_config.dart';
// import 'package:all_cards_dashboard/helpers/size_extensions.dart';
// import 'package:all_cards_dashboard/screen/allcrads_screen/controller/allcards_controller.dart';
// import 'package:all_cards_dashboard/screen/allcrads_screen/widgets/cards.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// class AllcardsScreen extends StatefulWidget {
//   const AllcardsScreen({super.key});

//   @override
//   State<AllcardsScreen> createState() => _AllcardsScreenState();
// }

// class _AllcardsScreenState extends State<AllcardsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final provider = context.watch<AllcardsController>();
//     ScreenUtil.getInstance().init(context);
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.white,
//         surfaceTintColor: AppColors.white,
//         leading: IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.arrow_back_ios_new,
//               size: 20,
//               color: AppColors.black,
//             )),
//         title: Center(
//             child: Text(
//           "All Cards",
//           style: GoogleFonts.roboto(
//               color: AppColors.black,
//               fontSize: 17.sp,
//               fontWeight: FontWeight.w500),
//         )),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           child: Column(
//             children: List.generate(
//               5,
//               (index) => Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10),
//                 child: Cards(
//                   title: provider.itemslist[index]["title"],
//                   titleimage: provider.itemslist[index]["titleimage"],
//                   caption: provider.itemslist[index]["caption"],
//                   firstitem: "HbA1c",
//                   firstitemvalue: "6.1%",
//                   seconditem: "Fasting Blood Sugar",
//                   seconditemvalue: "95 mg/dL",
//                   notificationtext: provider.itemslist[index]
//                       ["notificationtext"],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:all_cards_dashboard/helpers/appcolors.dart';
import 'package:all_cards_dashboard/helpers/screen_config.dart';
import 'package:all_cards_dashboard/helpers/size_extensions.dart';
import 'package:all_cards_dashboard/screen/allcrads_screen/controller/allcards_controller.dart';
import 'package:all_cards_dashboard/screen/allcrads_screen/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllcardsScreen extends StatefulWidget {
  const AllcardsScreen({super.key});

  @override
  State<AllcardsScreen> createState() => _AllcardsScreenState();
}

class _AllcardsScreenState extends State<AllcardsScreen> {
  @override
  void initState() {
    super.initState();
    final provider = Provider.of<AllcardsController>(context, listen: false);
    provider.fetchCards();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AllcardsController>();
    ScreenUtil.getInstance().init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        surfaceTintColor: AppColors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: AppColors.black,
          ),
        ),
        title: Center(
          child: Text(
            "All Cards",
            style: GoogleFonts.roboto(
              color: AppColors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : provider.cards.isEmpty
              ? const Center(child: Text("No cards found"))
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: List.generate(
                        provider.cards.length,
                        (index) {
                          final cardItem = provider.cards[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Cards(
                              title: cardItem.title,
                              titleimage: cardItem.imageUrl,
                              caption: cardItem.description,
                              firstitem: "HbA1c",
                              firstitemvalue: "6.1%",
                              seconditem: "Fasting Blood Sugar",
                              seconditemvalue: "95 mg/dL",
                              notificationtext: "",
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
    );
  }
}

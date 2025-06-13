import 'package:all_cards_dashboard/helpers/appcolors.dart';
import 'package:all_cards_dashboard/helpers/screen_config.dart';
import 'package:all_cards_dashboard/helpers/size_extensions.dart';
import 'package:all_cards_dashboard/helpers/sizedbox.dart';
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
            )),
        title: Center(
            child: Text(
          "All Cards",
          style: GoogleFonts.roboto(
              color: AppColors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w500),
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(children: [
            Cards(
              title: provider.itemslist[0]["title"],
              titleimage: provider.itemslist[0]["titleimage"],
              caption: provider.itemslist[0]["caption"],
              firstitem: provider.itemslist[0]["firstitem"],
              firstitemvalue: provider.itemslist[0]["firstitemvalue"],
              firstitemgoal: provider.itemslist[0]["firstitemgoal"],
              seconditem: provider.itemslist[0]["seconditem"],
              seconditemvalue: provider.itemslist[0]["seconditemvalue"],
              seconditemgoal: provider.itemslist[0]["seconditemgoal"],
              notificationtext: provider.itemslist[0]["notificationtext"],
              ontap: () {},
              graphimage: provider.itemslist[0]["graph"],
            ),
            sizedBoxWithHeight(10),
            Cards(
              title: provider.itemslist[1]["title"],
              titleimage: provider.itemslist[1]["titleimage"],
              caption: provider.itemslist[1]["caption"],
              firstitem: provider.itemslist[1]["firstitem"],
              firstitemvalue: provider.itemslist[1]["firstitemvalue"],
              firstitemgoal: provider.itemslist[1]["firstitemgoal"],
              seconditem: provider.itemslist[1]["seconditem"],
              seconditemvalue: provider.itemslist[1]["seconditemvalue"],
              seconditemgoal: provider.itemslist[1]["seconditemgoal"],
              notificationtext: provider.itemslist[1]["notificationtext"],
              ontap: () {},
              graphimage: provider.itemslist[1]["graph"],
            ),
            sizedBoxWithHeight(10),
            Cards(
              title: provider.itemslist[2]["title"],
              titleimage: provider.itemslist[2]["titleimage"],
              caption: provider.itemslist[2]["caption"],
              firstitem: provider.itemslist[2]["firstitem"],
              firstitemvalue: provider.itemslist[2]["firstitemvalue"],
              firstitemgoal: provider.itemslist[2]["firstitemgoal"],
              seconditem: provider.itemslist[2]["seconditem"],
              seconditemvalue: provider.itemslist[2]["seconditemvalue"],
              seconditemgoal: provider.itemslist[2]["seconditemgoal"],
              notificationtext: provider.itemslist[2]["notificationtext"],
              ontap: () {},
              graphimage: provider.itemslist[2]["graph"],
            ),
            sizedBoxWithHeight(10),
            Cards(
              title: provider.itemslist[3]["title"],
              titleimage: provider.itemslist[3]["titleimage"],
              caption: provider.itemslist[3]["caption"],
              firstitem: provider.itemslist[3]["firstitem"],
              firstitemvalue: provider.itemslist[3]["firstitemvalue"],
              firstitemgoal: provider.itemslist[3]["firstitemgoal"],
              seconditem: provider.itemslist[3]["seconditem"],
              seconditemvalue: provider.itemslist[3]["seconditemvalue"],
              seconditemgoal: provider.itemslist[3]["seconditemgoal"],
              notificationtext: provider.itemslist[3]["notificationtext"],
              ontap: () {},
              graphimage: provider.itemslist[3]["graph"],
            ),
            sizedBoxWithHeight(10),
            Cards(
              title: provider.itemslist[4]["title"],
              titleimage: provider.itemslist[4]["titleimage"],
              caption: provider.itemslist[4]["caption"],
              firstitem: provider.itemslist[4]["firstitem"],
              firstitemvalue: provider.itemslist[4]["firstitemvalue"],
              firstitemgoal: provider.itemslist[4]["firstitemgoal"],
              seconditem: provider.itemslist[4]["seconditem"],
              seconditemvalue: provider.itemslist[4]["seconditemvalue"],
              seconditemgoal: provider.itemslist[4]["seconditemgoal"],
              notificationtext: provider.itemslist[4]["notificationtext"],
              ontap: () {},
              graphimage: provider.itemslist[4]["graph"],
            ),
            sizedBoxWithHeight(10),
            Cards(
              title: provider.itemslist[5]["title"],
              titleimage: provider.itemslist[5]["titleimage"],
              caption: provider.itemslist[5]["caption"],
              firstitem: provider.itemslist[5]["firstitem"],
              firstitemvalue: provider.itemslist[5]["firstitemvalue"],
              firstitemgoal: provider.itemslist[5]["firstitemgoal"],
              seconditem: provider.itemslist[5]["seconditem"],
              seconditemvalue: provider.itemslist[5]["seconditemvalue"],
              seconditemgoal: provider.itemslist[5]["seconditemgoal"],
              notificationtext: provider.itemslist[5]["notificationtext"],
              ontap: () {},
              graphimage: provider.itemslist[5]["graph"],
            ),
            sizedBoxWithHeight(10),
          ]),
        ),
      ),
    );
  }
}

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
//   void initState() {
//     super.initState();
//     final provider = Provider.of<AllcardsController>(context, listen: false);
//     provider.fetchCards();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final provider = context.watch<AllcardsController>();
//     ScreenUtil.getInstance().init(context);

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.white,
//         surfaceTintColor: AppColors.white,
//         leading: IconButton(
//           onPressed: () {},
//           icon: const Icon(
//             Icons.arrow_back_ios_new,
//             size: 20,
//             color: AppColors.black,
//           ),
//         ),
//         title: Center(
//           child: Text(
//             "All Cards",
//             style: GoogleFonts.roboto(
//               color: AppColors.black,
//               fontSize: 17.sp,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//       ),
//       body: provider.isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : provider.cards.isEmpty
//               ? const Center(child: Text("No cards found"))
//               : SingleChildScrollView(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 20, vertical: 20),
//                     child: Column(
//                       children: List.generate(
//                         provider.cards.length,
//                         (index) {
//                           final cardItem = provider.cards[index];
//                           return Padding(
//                             padding: const EdgeInsets.symmetric(vertical: 10),
//                             child: Cards(
//                               title: cardItem.title,
//                               titleimage: cardItem.imageUrl,
//                               caption: cardItem.description,
//                               firstitem: "HbA1c",
//                               firstitemvalue: "6.1%",
//                               seconditem: "Fasting Blood Sugar",
//                               seconditemvalue: "95 mg/dL",
//                               notificationtext: "",
//                             ),
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                 ),
//     );
//   }
// }

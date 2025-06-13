import 'package:all_cards_dashboard/api_services/app_repositry.dart';
import 'package:all_cards_dashboard/screen/allcrads_screen/model/allcards_model.dart';
import 'package:flutter/material.dart';

class AllcardsController with ChangeNotifier {
  final AppRepository _repository = AppRepository();

  bool isLoading = false;
  List<CardModel> cards = [];

  Future<void> fetchCards() async {
    try {
      isLoading = true;
      notifyListeners();

      final result = await _repository.getAllCards();
      cards = result.data;
      print("Fetched ${cards.length} cards");
    } catch (e) {
      print("Error fetching cards: ${e.toString()}");
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  @override
  String toString() {
    return 'AllcardsController(isLoading: $isLoading, cardsCount: ${cards.length})';
  }

  List<Map<String, dynamic>> itemslist = [
    {
      "title": "Diabetes",
      "titleimage": "assets/images/diabetes.png",
      "caption": "Glucose within target 5 of last 7 days",
      "firstitem": "HbA1c",
      "firstitemvalue": "6.1%",
      "firstitemgoal": "(Goal: <6.5%)",
      "seconditem": "Fasting Blood Sugar",
      "seconditemvalue": "95 mg/dL",
      "seconditemgoal": "Last 7 days",
      "notificationtext": "Walk 10 min after meals",
      "graph": Image.asset(
        height: 35,
        width: 60,
        "assets/images/graph.png",
        fit: BoxFit.cover,
      )
    },
    {
      "title": "Blood Pressure",
      "titleimage": "assets/images/BloodPressure_logo.png",
      "caption": "Almost there. Just a bit more control!",
      "firstitem": "BP Avg",
      "firstitemvalue": "134/86 mmHg",
      "firstitemgoal": "(Target: <130/85)",
      "seconditem": "HR",
      "seconditemvalue": "77 bpm",
      "seconditemgoal": "Resting range",
      "notificationtext": "Try deep breathing 3 mins today",
      "graph": Image.asset(
        height: 0,
        width: 0,
        "assets/images/graph.png",
        fit: BoxFit.cover,
      )
    },
    {
      "title": "Cholesterol",
      "titleimage": "assets/images/Cholesterol_logo.png",
      "caption": "Great drop in LDL!, down 18% in 3 months",
      "firstitem": "LDL",
      "firstitemvalue": "115 mg/dL",
      "firstitemgoal": "(Target: <100)",
      "seconditem": "Triglycerides",
      "seconditemvalue": "175 mg/dL",
      "seconditemgoal": "",
      "notificationtext": "Next lipid panel in 12 days",
      "graph": Image.asset(
        height: 0,
        width: 0,
        "assets/images/graph.png",
        fit: BoxFit.cover,
      )
    },
    {
      "title": "Fatty Liver",
      "titleimage": "assets/images/fattyliver_logo.png",
      "caption": "Your liver is healing — stay consistent!",
      "firstitem": "ALT",
      "firstitemvalue": "52 U/L",
      "firstitemgoal": "(Improved)",
      "seconditem": "Alcohol-Free Days",
      "seconditemvalue": "3/7 days",
      "seconditemgoal": "",
      "notificationtext": "Add one more alcohol-free day this week",
      "graph": Image.asset(
        height: 0,
        width: 0,
        "assets/images/graph.png",
        fit: BoxFit.cover,
      )
    },
    {
      "title": "PCOS",
      "titleimage": "assets/images/pcos_logo.png",
      "caption": "Improving! 4 of last 7 days in target",
      "firstitem": "Cycle Regularity",
      "firstitemvalue": "26 Days Avg",
      "firstitemgoal": "(Goal: 25~35 days)",
      "seconditem": "Androgen Levels (Testosterone)",
      "seconditemvalue": "45 ng/dL",
      "seconditemgoal": "(Goal: < 50 ng/dL)",
      "notificationtext": "Add 30 min moderate exercise 5x/week",
      "graph": Image.asset(
        height: 0,
        width: 0,
        "assets/images/graph.png",
        fit: BoxFit.cover,
      )
    },
    {
      "title": "Weight",
      "titleimage": "assets/images/weighted_logo.png",
      "caption": "Down 3.2 kg — You're on fire!",
      "firstitem": "Weight",
      "firstitemvalue": "88.3 kg",
      "firstitemgoal": "(Improved)",
      "seconditem": "Steps/Day",
      "seconditemvalue": "6,800 avg",
      "seconditemgoal": "",
      "notificationtext": "3 weeks strong - that's commitment!",
      "graph": Image.asset(
        height: 35,
        width: 60,
        "assets/images/graph.png",
        fit: BoxFit.cover,
      )
    },
  ];
}

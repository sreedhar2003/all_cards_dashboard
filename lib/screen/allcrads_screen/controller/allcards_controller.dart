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
      "notificationtext": "Walk 10 min after meals",
    },
    {
      "title": "Blood Pressure",
      "titleimage": "assets/images/BloodPressure_logo.png",
      "caption": "Almost there. Just a bit more control!",
      "notificationtext": "Try deep breathing 3 mins today",
    },
    {
      "title": "Cholesterol",
      "titleimage": "assets/images/Cholesterol_logo.png",
      "caption": "Great drop in LDL!, down 18% in 3 months",
      "notificationtext": "Next lipid panel in 12 days",
    },
    {
      "title": "Fatty Liver",
      "titleimage": "assets/images/fattyliver_logo.png",
      "caption": "Your liver is healing — stay consistent!",
      "notificationtext": "Add one more alcohol-free day this week",
    },
    {
      "title": "PCOS",
      "titleimage": "assets/images/pcos_logo.png",
      "caption": "Improving! 4 of last 7 days in target",
      "notificationtext": "Add 30 min moderate exercise 5x/week",
    },
    {
      "title": "Weight",
      "titleimage": "assets/images/weighted_logo.png",
      "caption": "Down 3.2 kg — You're on fire!",
      "notificationtext": "3 weeks strong - that's commitment!",
    },
  ];
}

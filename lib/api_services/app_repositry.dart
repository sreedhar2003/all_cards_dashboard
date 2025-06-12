import 'package:all_cards_dashboard/api_services/api_base_helpers.dart';
import 'package:all_cards_dashboard/screen/allcrads_screen/model/allcards_model.dart';

class AppRepository {
  final ApiBaseHelper _helper = ApiBaseHelper();

  Future<CardsResponse> getAllCards() async {
    final response = await _helper.get("personalize-health/get-all-cards");
    return CardsResponse.fromJson(response);
  }
}

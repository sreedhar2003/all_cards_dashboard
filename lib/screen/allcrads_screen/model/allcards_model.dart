// class CardModel {
//   final int id;
//   final String title;
//   final String description;
//   final String imageUrl;

//   CardModel({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//   });

//   factory CardModel.fromJson(Map<String, dynamic> json) {
//     return CardModel(
//       id: json['id'] ?? 0,
//       title: json['title'] ?? '',
//       description: json['description'] ?? '',
//       imageUrl: json['imageUrl'] ?? '',
//     );
//   }
// }

// class CardsResponse {
//   final bool status;
//   final String message;
//   final List<CardModel> data;

//   CardsResponse({
//     required this.status,
//     required this.message,
//     required this.data,
//   });

//   factory CardsResponse.fromJson(Map<String, dynamic> json) {
//     var list = json['data'] as List;
//     List<CardModel> cards = list.map((i) => CardModel.fromJson(i)).toList();

//     return CardsResponse(
//       status: json['status'] ?? false,
//       message: json['message'] ?? '',
//       data: cards,
//     );
//   }
// }

class CardsResponse {
  final List<CardModel> data;

  CardsResponse({required this.data});

  factory CardsResponse.fromJson(Map<String, dynamic> json) {
    // Defensive null check
    final dataList = json['data'] as List? ?? [];
    return CardsResponse(
      data: dataList.map((e) => CardModel.fromJson(e)).toList(),
    );
  }
}

class CardModel {
  final String title;
  final String description;
  final String imageUrl;

  CardModel({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
    );
  }
}

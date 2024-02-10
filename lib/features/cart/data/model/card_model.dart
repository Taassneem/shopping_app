import 'package:hive/hive.dart';
part 'card_model.g.dart';

@HiveType(typeId: 0)
class CardModel extends HiveObject {
  @HiveField(0)
  String image;
  @HiveField(1)
  String title;
  @HiveField(2)
  num price;
  CardModel({
    required this.image,
    required this.title,
    required this.price,
  });
}

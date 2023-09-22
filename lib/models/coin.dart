import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
part 'coin.g.dart';

@JsonSerializable()
class Coin {
  final String id;
  final String name;
  final double price;
  final double low;
  final double high;
  final double openMarket;
  final double closeMarket;
  final bool trending;
  final String details;

  Coin({
    required this.id,
    required this.name,
    required this.price,
    required this.low,
    required this.high,
    required this.openMarket,
    required this.closeMarket,
    required this.trending,
    required this.details,
  });

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);

  Map<String, dynamic> toJson() => _$CoinToJson(this);
}


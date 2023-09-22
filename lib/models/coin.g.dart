// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coin _$CoinFromJson(Map<String, dynamic> json) => Coin(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      low: (json['low'] as num).toDouble(),
      high: (json['high'] as num).toDouble(),
      openMarket: (json['openMarket'] as num).toDouble(),
      closeMarket: (json['closeMarket'] as num).toDouble(),
      trending: json['trending'] as bool,
      details: json['details'] as String,
    );

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'low': instance.low,
      'high': instance.high,
      'openMarket': instance.openMarket,
      'closeMarket': instance.closeMarket,
      'trending': instance.trending,
      'details': instance.details,
    };

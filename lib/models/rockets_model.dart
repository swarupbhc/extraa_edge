// To parse this JSON data, do
//
//     final rocketsModel = rocketsModelFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'rockets_model.g.dart';

List<RocketsModel> rocketsModelFromJson(String str) => List<RocketsModel>.from(
    json.decode(str).map((x) => RocketsModel.fromJson(x)));

String rocketsModelToJson(List<RocketsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@collection
class RocketsModel {
  RocketsModel({
    this.engines,
    this.flickrImages,
    this.name,
    this.country,
    this.rocketId,
  });

  Id id = Isar.autoIncrement;
  Engines? engines;
  List<String>? flickrImages;
  String? name;
  String? country;
  String? rocketId;

  factory RocketsModel.fromJson(Map<String, dynamic> json) => RocketsModel(
        engines:
            json["engines"] == null ? null : Engines.fromJson(json["engines"]),
        flickrImages: json["flickr_images"] == null
            ? []
            : List<String>.from(json["flickr_images"]!.map((x) => x)),
        name: json["name"],
        country: json["country"],
        rocketId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "engines": engines?.toJson(),
        "flickr_images": flickrImages == null
            ? []
            : List<dynamic>.from(flickrImages!.map((x) => x)),
        "name": name,
        "country": country,
        "id": rocketId,
      };
}

@embedded
class Engines {
  Engines({
    this.number,
  });

  int? number;

  factory Engines.fromJson(Map<String, dynamic> json) => Engines(
        number: json["number"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
      };
}

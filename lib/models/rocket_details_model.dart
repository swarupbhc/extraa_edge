// To parse this JSON data, do
//
//     final rocketDetailsModel = rocketDetailsModelFromJson(jsonString);

import 'dart:convert';

import 'package:isar/isar.dart';

part 'rocket_details_model.g.dart';

RocketDetailsModel rocketDetailsModelFromJson(String str) =>
    RocketDetailsModel.fromJson(json.decode(str));

String rocketDetailsModelToJson(RocketDetailsModel data) =>
    json.encode(data.toJson());

@collection
class RocketDetailsModel {
  RocketDetailsModel({
    this.height,
    this.diameter,
    this.flickrImages,
    this.name,
    this.active,
    this.costPerLaunch,
    this.successRatePct,
    this.country,
    this.company,
    this.wikipedia,
    this.description,
    this.rocketId,
  });

  Id id = Isar.autoIncrement;
  Diameter? height;
  Diameter? diameter;
  List<String>? flickrImages;
  String? name;
  bool? active;
  int? costPerLaunch;
  int? successRatePct;
  String? country;
  String? company;
  String? wikipedia;
  String? description;
  String? rocketId;

  factory RocketDetailsModel.fromJson(Map<String, dynamic> json) =>
      RocketDetailsModel(
        height:
            json["height"] == null ? null : Diameter.fromJson(json["height"]),
        diameter: json["diameter"] == null
            ? null
            : Diameter.fromJson(json["diameter"]),
        flickrImages: json["flickr_images"] == null
            ? []
            : List<String>.from(json["flickr_images"]!.map((x) => x)),
        name: json["name"],
        active: json["active"],
        costPerLaunch: json["cost_per_launch"],
        successRatePct: json["success_rate_pct"],
        country: json["country"],
        company: json["company"],
        wikipedia: json["wikipedia"],
        description: json["description"],
        rocketId: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "height": height?.toJson(),
        "diameter": diameter?.toJson(),
        "flickr_images": flickrImages == null
            ? []
            : List<dynamic>.from(flickrImages!.map((x) => x)),
        "name": name,
        "active": active,
        "cost_per_launch": costPerLaunch,
        "success_rate_pct": successRatePct,
        "country": country,
        "company": company,
        "wikipedia": wikipedia,
        "description": description,
        "id": rocketId,
      };
}

@embedded
class Diameter {
  Diameter({
    this.meters,
    this.feet,
  });

  double? meters;
  double? feet;

  factory Diameter.fromJson(Map<String, dynamic> json) => Diameter(
        meters: json["meters"]?.toDouble(),
        feet: json["feet"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "meters": meters,
        "feet": feet,
      };
}

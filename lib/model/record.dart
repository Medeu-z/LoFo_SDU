// To parse this JSON data, do
//
//     final records = recordsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Records recordsFromJson(String str) => Records.fromJson(json.decode(str));

String recordsToJson(Records data) => json.encode(data.toJson());

class Records {
  Records({
    required this.records,
  });

  final List<Record> records;

  factory Records.fromJson(Map<String, dynamic> json) => Records(
    records: List<Record>.from(json["Records"].map((x) => Record.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Records": List<dynamic>.from(records.map((x) => x.toJson())),
  };
}

class Record {
  Record({
    required this.id,
    required this.title,
    required this.image,
    required this.status,
    required this.time,
    required this.place,
    required this.description,
  });

  final int id;
  final String title;
  final String image;
  final String status;
  final String time;
  final String place;
  final String description;

  factory Record.fromJson(Map<String, dynamic> json) => Record(
    id: json["id"],
    title: json["title"],
    image: json["image"],
    status: json["status"],
    time: json["time"],
    place: json["place"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "image": image,
    "status": status,
    "time": time,
    "place": place,
    "description": description,
  };
}

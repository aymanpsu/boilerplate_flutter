// To parse this JSON data, do
//
//     final requestButton = requestButtonFromJson(jsonString);

import 'dart:convert';

List<RequestButton> requestButtonFromJson(String str) =>
    List<RequestButton>.from(
        json.decode(str).map((x) => RequestButton.fromJson(x)));

String requestButtonToJson(List<RequestButton> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RequestButton {
  int id;
  String name;
  String path;

  RequestButton({
    this.id,
    this.name,
    this.path,
  });

  factory RequestButton.fromJson(Map<String, dynamic> json) => RequestButton(
    id: json["id"],
    name: json["name"],
    path: json["path"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "path": path,
  };
}

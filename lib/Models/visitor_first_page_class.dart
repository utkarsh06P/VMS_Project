// To parse this JSON data, do
//
//     final visitor1 = visitor1FromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';

Visitor1 visitor1FromJson(String str) => Visitor1.fromJson(json.decode(str));

String visitor1ToJson(Visitor1 data) => json.encode(data.toJson());

class Visitor1 {
  Visitor1({
   required this.message,
    required this.result,
  });

  String message;
  Result result;

  factory Visitor1.fromJson(Map<String, dynamic> json) => Visitor1(
    message: json["message"],
    result: Result.fromJson(json["result"]),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "result": result.toJson(),
  };
}

class Result {
  Result({
   required this.id,
    required this.name,
    required this.phone,
  required this.email,
    required this.totalMeetingsDone,
    required  this.isVerified,
    required  this.v,
    required this.verifiedOn,
    required this.address,
    required this.area,
    required this.company,
    required this.idLink,
    required this.idType,
    required this.selfieLink,
    required this.updatedAt,
  });

  String id;
  String name;
  String phone;
  String email;
  int totalMeetingsDone;
  bool isVerified;
  int v;
  DateTime verifiedOn;
  String address;
  String area;
  String company;
  String idLink;
  String idType;
  String selfieLink;
  DateTime updatedAt;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    id: json["_id"],
    name: json["name"],
    phone: json["phone"],
    email: json["email"],
    totalMeetingsDone: json["totalMeetingsDone"],
    isVerified: json["isVerified"],
    v: json["__v"],
    verifiedOn: DateTime.parse(json["verifiedOn"]),
    address: json["address"],
    area: json["area"],
    company: json["company"],
    idLink: json["idLink"],
    idType: json["idType"],
    selfieLink: json["selfieLink"],
    updatedAt: DateTime.parse(json["updatedAt"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "phone": phone,
    "email": email,
    "totalMeetingsDone": totalMeetingsDone,
    "isVerified": isVerified,
    "__v": v,
    "verifiedOn": verifiedOn.toIso8601String(),
    "address": address,
    "area": area,
    "company": company,
    "idLink": idLink,
    "idType": idType,
    "selfieLink": selfieLink,
    "updatedAt": updatedAt.toIso8601String(),
  };
}

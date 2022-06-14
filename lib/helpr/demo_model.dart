// To parse this JSON data, do
//
//     final demoModel = demoModelFromJson(jsonString);

import 'dart:convert';

DemoModel demoModelFromJson(String str) => DemoModel.fromJson(json.decode(str));

String demoModelToJson(DemoModel data) => json.encode(data.toJson());

class DemoModel {
  DemoModel({
    this.ok,
    this.result,
  });

  bool? ok;
  List<Result>? result;

  factory DemoModel.fromJson(Map<String, dynamic> json) => DemoModel(
    ok: json["ok"],
    result: List<Result>.from(json["result"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "ok": ok,
    "result": List<dynamic>.from(result!.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    this.updateId,
    this.message,
  });

  int? updateId;
  Message? message;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    updateId: json["update_id"],
    message: Message.fromJson(json["message"]),
  );

  Map<String, dynamic> toJson() => {
    "update_id": updateId,
    "message": message?.toJson() ?? '',
  };
}

class Message {
  Message({
    this.messageId,
    this.from,
    this.chat,
    this.date,
    this.text,
    this.entities,
  });

  int? messageId;
  From? from;
  Chat? chat;
  int? date;
  String? text;
  List<Entity>? entities;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    messageId: json["message_id"],
    from: From.fromJson(json["from"]),
    chat: Chat.fromJson(json["chat"]),
    date: json["date"],
    text: json["text"],
    entities: json["entities"] == null ? null : List<Entity>.from(json["entities"].map((x) => Entity.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message_id": messageId,
    "from": from?.toJson() ?? '',
    "chat": chat?.toJson() ?? '',
    "date": date,
    "text": text,
    "entities": entities == null ? null : List<dynamic>.from(entities!.map((x) => x.toJson())),
  };
}

class Chat {
  Chat({
    this.id,
    this.firstName,
    this.username,
    this.type,
  });

  int? id;
  String? firstName;
  String? username;
  String? type;

  factory Chat.fromJson(Map<String, dynamic> json) => Chat(
    id: json["id"],
    firstName: json["first_name"],
    username: json["username"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "username": username,
    "type": type,
  };
}

class Entity {
  Entity({
    this.offset,
    this.length,
    this.type,
  });

  int? offset;
  int? length;
  String? type;

  factory Entity.fromJson(Map<String, dynamic> json) => Entity(
    offset: json["offset"],
    length: json["length"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "offset": offset,
    "length": length,
    "type": type,
  };
}

class From {
  From({
    this.id,
    this.isBot,
    this.firstName,
    this.username,
    this.languageCode,
  });

  int? id;
  bool? isBot;
  String? firstName;
  String? username;
  String? languageCode;

  factory From.fromJson(Map<String, dynamic> json) => From(
    id: json["id"],
    isBot: json["is_bot"],
    firstName: json["first_name"],
    username: json["username"],
    languageCode: json["language_code"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "is_bot": isBot,
    "first_name": firstName,
    "username": username,
    "language_code": languageCode,
  };
}

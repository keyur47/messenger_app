class demo {
  bool? ok;
  List<Result>? result;

  demo({this.ok, this.result});

  demo.fromJson(Map<String, dynamic> json) {
    ok = json['ok'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ok'] = this.ok;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  int? updateId;
  Message? message;

  Result({this.updateId, this.message});

  Result.fromJson(Map<String, dynamic> json) {
    updateId = json['update_id'];
    message =
    json['message'] != null ? new Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['update_id'] = this.updateId;
    if (this.message != null) {
      data['message'] = this.message!.toJson();
    }
    return data;
  }
}

class Message {
  int? messageId;
  From? from;
  Chat? chat;
  int? date;
  String? text;
  List<Entities>? entities;

  Message(
      {this.messageId,
        this.from,
        this.chat,
        this.date,
        this.text,
        this.entities});

  Message.fromJson(Map<String, dynamic> json) {
    messageId = json['message_id'];
    from = json['from'] != null ? new From.fromJson(json['from']) : null;
    chat = json['chat'] != null ? new Chat.fromJson(json['chat']) : null;
    date = json['date'];
    text = json['text'];
    if (json['entities'] != null) {
      entities = <Entities>[];
      json['entities'].forEach((v) {
        entities!.add(new Entities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message_id'] = this.messageId;
    if (this.from != null) {
      data['from'] = this.from!.toJson();
    }
    if (this.chat != null) {
      data['chat'] = this.chat!.toJson();
    }
    data['date'] = this.date;
    data['text'] = this.text;
    if (this.entities != null) {
      data['entities'] = this.entities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class From {
  int? id;
  bool? isBot;
  String? firstName;
  String? username;
  String? languageCode;

  From({this.id, this.isBot, this.firstName, this.username, this.languageCode});

  From.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isBot = json['is_bot'];
    firstName = json['first_name'];
    username = json['username'];
    languageCode = json['language_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['is_bot'] = this.isBot;
    data['first_name'] = this.firstName;
    data['username'] = this.username;
    data['language_code'] = this.languageCode;
    return data;
  }
}

class Chat {
  int? id;
  String? firstName;
  String? username;
  String? type;

  Chat({this.id, this.firstName, this.username, this.type});

  Chat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    username = json['username'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['username'] = this.username;
    data['type'] = this.type;
    return data;
  }
}

class Entities {
  int? offset;
  int? length;
  String? type;

  Entities({this.offset, this.length, this.type});

  Entities.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    length = json['length'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offset'] = this.offset;
    data['length'] = this.length;
    data['type'] = this.type;
    return data;
  }
}

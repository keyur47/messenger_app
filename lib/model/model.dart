class AddDemo {
  bool? ok;
  Result? result;

  AddDemo({this.ok, this.result});

  AddDemo.fromJson(Map<String, dynamic> json) {
    ok = json['ok'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ok'] = this.ok;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  int? messageId;
  From? from;
  Chat? chat;
  int? date;
  String? text;

  Result({this.messageId, this.from, this.chat, this.date, this.text});

  Result.fromJson(Map<String, dynamic> json) {
    messageId = json['message_id'];
    from = json['from'] != null ? new From.fromJson(json['from']) : null;
    chat = json['chat'] != null ? new Chat.fromJson(json['chat']) : null;
    date = json['date'];
    text = json['text'];
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
    return data;
  }
}

class From {
  int? id;
  bool? isBot;
  String? firstName;
  String? username;

  From({this.id, this.isBot, this.firstName, this.username});

  From.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isBot = json['is_bot'];
    firstName = json['first_name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['is_bot'] = this.isBot;
    data['first_name'] = this.firstName;
    data['username'] = this.username;
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

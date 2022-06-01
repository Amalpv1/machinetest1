// To parse this JSON data, do
//
//     final chatlist = chatlistFromJson(jsonString);

import 'dart:convert';

Chatlist chatlistFromJson(String str) => Chatlist.fromJson(json.decode(str));

String chatlistToJson(Chatlist data) => json.encode(data.toJson());

class Chatlist {
    Chatlist({
      required  this.avatar,
      required  this.name,
      required  this.lastmsg,
      required  this.seen,
    });

    String avatar;
    String name;
    String lastmsg;
    String seen;

    factory Chatlist.fromJson(Map<String, dynamic> json) => Chatlist(
        avatar: json["avatar"],
        name: json["name"],
        lastmsg: json["lastmsg"],
        seen: json["seen"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "lastmsg": lastmsg,
        "seen": seen,
    };
}

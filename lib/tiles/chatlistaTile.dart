import 'package:flutter/material.dart';
import 'package:machinetest1/model/chat_listmodel.dart';
import 'package:machinetest1/pages/single_chatpage.dart';

class chatlistTile extends StatelessWidget {
  chatlistTile({Key? key, required this.singlechat}) : super(key: key);
  Chatlist singlechat;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) {
          return snglchatPage(
              name: singlechat.name,
              avatar: singlechat.avatar,
              seen: singlechat.seen);
        }));
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(singlechat.avatar),
        ),
        title: Text(singlechat.name),
        subtitle: Text(singlechat.lastmsg),
        trailing: Text(singlechat.seen),
      ),
    );
  }
}

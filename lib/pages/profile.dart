import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:machinetest1/model/chat_listmodel.dart';

class profilePage extends StatelessWidget {
  profilePage({Key? key, required this.avatar, required this.name})
      : super(key: key);
  String avatar;
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(avatar), fit: BoxFit.cover),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 15, 10),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name),
                IconButton(onPressed: (() {}), icon: Icon(Icons.edit))
              ],
            ),
          ),
        ),
        Column(
          children: [
            Row(
              children: const [
                Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.pink,
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 10), child: Text('Account'))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: const [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.blue,
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Notifications'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: const [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.help,
                        color: Colors.orange,
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 10), child: Text('Help'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: const [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.telegram_outlined,
                        color: Colors.green,
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Tell a friend'))
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}

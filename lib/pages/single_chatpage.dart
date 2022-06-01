import 'package:flutter/material.dart';

import 'package:machinetest1/pages/profile.dart';

class snglchatPage extends StatelessWidget {
  snglchatPage(
      {Key? key, required this.name, required this.avatar, required this.seen})
      : super(key: key);
  String name;
  String avatar;
  String seen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        leadingWidth: 70,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(avatar),
              )
            ],
          ),
        ),
        title: Column(
          children: [
            Text(
              name,
              style: const TextStyle(color: Colors.black),
            ),
            Text(
              seen,
              style: const TextStyle(fontSize: 12, color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return profilePage(
                      avatar: avatar,
                      name: name,
                    );
                  },
                ));
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:machinetest1/model/chat_listmodel.dart';
import 'package:machinetest1/tiles/chatlistaTile.dart';

class chatPage extends StatelessWidget {
  const chatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text(
            'Converstion',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
              ),
              color: Colors.red[500],
            )
          ],
          bottom: const Tab(
              child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: 'search',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey))),
          ))),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chats',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.drive_file_move_rtl_rounded),
          label: 'Channels',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Profile',
        ),
      ]),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return chatlistTile(singlechat: chatLIst[index]);
        },
        itemCount: chatLIst.length,
      ),
    );
  }
}

List<Chatlist> chatLIst = [
  Chatlist(
      avatar:
          'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=2000',
      name: 'chriss',
      lastmsg: 'hi',
      seen: '10pm'),
  Chatlist(
      avatar:
          'https://cdn5.vectorstock.com/i/1000x1000/01/69/businesswoman-character-avatar-icon-vector-12800169.jpg',
      name: 'rezi',
      lastmsg: 'hello',
      seen: '11pm'),
  Chatlist(
      avatar:
          'https://st2.depositphotos.com/1006318/5909/v/600/depositphotos_59095493-stock-illustration-profile-icon-male-avatar.jpg',
      name: 'gustav',
      lastmsg: 'hi',
      seen: '12am'),
  Chatlist(
      avatar:
          'https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png',
      name: 'bob',
      lastmsg: 'hello',
      seen: '1am')
];


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drawer_item.dart';

class AppDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Column(
          children: const [
              CircleAvatar(
                radius : 50,
                backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/81255636?v=4"),

              ),
              SizedBox(height: 10,),
              Text("Khadija BENJILALI"),
           ],
          )),
          DrawerItem("/", Icon(Icons.home, color: Color(0xffbac3fe),), "Home"),
          DrawerItem("/livre", Icon(Icons.book, color: Color(0xffbac3fe),), "Livres"),
          DrawerItem("/adherent", Icon(Icons.supervisor_account, color: Color(0xffbac3fe),), "Adhérents"),
          DrawerItem("/about", Icon(Icons.error, color: Color(0xffbac3fe),), "About"),

      ],),
    );
  }
}
import 'package:bpi_app/bloc/adherents/adherent_bloc.dart';
import 'package:bpi_app/bloc/adherents/adherent_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livres/livre_bloc.dart';
import '../../bloc/livres/livre_event.dart';
import '../components/app_drawer.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(

      ),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Image(image: AssetImage("assets/image.jpg")),
            Container(
              margin: EdgeInsets.fromLTRB(20,40,20,20),
              height: 300,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.6,

                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  MaterialButton(
                    height: 20,
                    color: Colors.indigo,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 10, 5, 10),
                      child: Text("Home",
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "monospace"),),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, "/");

                    },
                  ),
                  MaterialButton(
                    height: 20,
                    color: Color(0xffbac3fe),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 10, 5, 10),
                      child: Text("Livres",
                        style: TextStyle(color: Colors.indigo, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "monospace"),),
                    ),
                    onPressed: (){
                      context.read<LivreBloc>().add(LoadAllLivreEvent());
                      Navigator.pushNamed(context, "/livre");

                    },
                  ),
                  MaterialButton(
                    height: 20,
                    color: Color(0xffbac3fe),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 10, 5, 10),
                      child: Text("Adherents",
                        style: TextStyle(color: Colors.indigo, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "monospace"),),
                    ),
                    onPressed: (){
                      context.read<AdherentBloc>().add(LoadAllAdherentEvent());
                      Navigator.pushNamed(context, "/adherent");

                    },
                  ),
                  MaterialButton(
                    height: 20,
                    color: Color(0xffbac3fe),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 10, 5, 10),
                      child: Text("About",
                        style: TextStyle(color: Colors.indigo, fontSize: 20, fontWeight: FontWeight.bold, fontFamily: "monospace"),),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, "/about");

                    },
                  ),
                ],),
            ),

          ],
        ),
      ),
    );
  }

}
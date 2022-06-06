import 'package:bpi_app/bloc/adherents/adherent_bloc.dart';
import 'package:bpi_app/bloc/adherents/adherent_event.dart';
import 'package:bpi_app/bloc/livres/livre_bloc.dart';
import 'package:bpi_app/bloc/livres/livre_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerItem extends StatelessWidget{
  Icon icon;
  String route;
  String title;
  DrawerItem(this.route, this.icon, this.title);
  @override
  Widget build(BuildContext context) {
   return  ListTile(
     onTap: (){
       if(route=="/livre")
         {
           context.read<LivreBloc>().add(LoadAllLivreEvent());
         }
       if(route=="/adherent")
       {
         context.read<AdherentBloc>().add(LoadAllAdherentEvent());
       }
       Navigator.popAndPushNamed(context, route);
     },
     leading: icon,
     title: Text(title),
   );
  }
}
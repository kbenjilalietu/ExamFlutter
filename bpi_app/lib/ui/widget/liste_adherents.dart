import 'package:bpi_app/bloc/adherents/adherent_bloc.dart';
import 'package:bpi_app/bloc/adherents/adherent_event.dart';
import 'package:bpi_app/bloc/adherents/adherent_state.dart';
import 'package:bpi_app/bloc/livres/livre_event.dart';
import 'package:bpi_app/bloc/livres/livre_state.dart';
import 'package:bpi_app/ui/widget/row_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livres/livre_bloc.dart';

class ListAdherents extends StatelessWidget{
  final AdherentState state;
  ListAdherents({Key? key,required this.state}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 2),
          child: Expanded(
            child: ListView.builder(
                    itemCount: state.adherents.length,
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                                  children: [
                                    RowList(titre1: "Id : ", value1: (state.adherents[index].id_adherent).toString()),
                                    RowList(titre1: "Nom : ", value1: state.adherents[index].nom),
                                    RowList(titre1: "Prenom : ", value1: state.adherents[index].prenom),
                                    RowList(titre1: "Email : ", value1: state.adherents[index].email),
                                    RowList(titre1: "Tele : ", value1: (state.adherents[index].tel).toString()),
                                    ElevatedButton(onPressed: (){
                                      context.read<AdherentBloc>().add(DeleteAdherentEvent(id: state.adherents[index].id_adherent));
                                    }, child: Icon(Icons.delete_sweep_outlined))
                                  ],

                              ),

                        ),
                      );
                    }),
          )
          )
    );
  }

}
import 'package:bpi_app/bloc/livres/livre_event.dart';
import 'package:bpi_app/bloc/livres/livre_state.dart';
import 'package:bpi_app/ui/widget/row_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livres/livre_bloc.dart';

class ListLivre extends StatelessWidget{
  final LivreState state;

  const ListLivre({Key? key,required this.state}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 2),
          child: ListView.builder(
                    itemCount: state.livres.length,
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                                  children: [
                                    RowList(titre1: "Id : ", value1: (state.livres[index].id_livre).toString()),
                                    RowList(titre1: "Isbn : ", value1: state.livres[index].isbn),
                                    RowList(titre1: "Titre : ", value1: state.livres[index].titre),
                                    RowList(titre1: "Auteur : ", value1: state.livres[index].auteur),
                                    RowList(titre1: "Annee : ", value1: (state.livres[index].anne_publication).toString()),
                                    RowList(titre1: "Numbre : ", value1: (state.livres[index].nb_exemplaires).toString()),
                                    RowList(titre1: "Nombre : ", value1: (state.livres[index].nb_exemplaires).toString()),
                                    ElevatedButton(onPressed: (){
                                      context.read<LivreBloc>().add(DeleteLivreEvent(id: state.livres[index].id_livre));
                                    }, child: Icon(Icons.delete_sweep_outlined))


                                  ],

                              ),

                        ),
                      );
                    }),
          )
    );
  }

}
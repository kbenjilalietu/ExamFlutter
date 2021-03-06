import 'package:bpi_app/bloc/livres/livre_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livres/livre_bloc.dart';
import '../../bloc/livres/livre_state.dart';

class SearchLivre extends StatelessWidget{
  TextEditingController mcController=TextEditingController();

  SearchLivre({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.grey,
      child:  Padding(
          padding: const EdgeInsets.all(14.0),
          child: Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: mcController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.book),
                        hintText: "Search about",
                        labelText: "I search about",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),

                MaterialButton(
                    padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.indigo,
                    textColor: Colors.white,
                    minWidth: 65,
                    onPressed: () {
                      context.read<LivreBloc>().add(FindLivreMcEvent(mc: mcController.text));
                    },
                    child: Icon(Icons.search)),
              ],
            ),
          )
      ),
    );
  }

}
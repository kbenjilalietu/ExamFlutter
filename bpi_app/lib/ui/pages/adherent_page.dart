import 'package:bpi_app/bloc/adherents/adherent_bloc.dart';
import 'package:bpi_app/bloc/adherents/adherent_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livres/livre_state.dart';
import '../widget/liste_adherents.dart';
import '../widget/liste_livre.dart';

class AdherentPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adherents"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          BlocBuilder<AdherentBloc, AdherentState>(builder: (context, state) {
            if (state.requestState == RequestState.Loading) {
              return Center(child: CircularProgressIndicator());
            } else if (state.requestState == RequestState.Loaded) {
              return Expanded(
                child: ListAdherents(state: state),
              );
            } else {
              return Text("");
            }
          })
        ]),
      ),
    );
  }

}
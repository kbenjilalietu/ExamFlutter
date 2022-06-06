import 'package:bpi_app/bloc/livres/livre_bloc.dart';
import 'package:bpi_app/bloc/livres/livre_state.dart';
import 'package:bpi_app/ui/widget/liste_livre.dart';
import 'package:bpi_app/ui/widget/search_livre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class LivrePage extends StatelessWidget {
  TextEditingController mcController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Livres"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          SearchLivre(),
          BlocBuilder<LivreBloc, LivreState>(builder: (context, state) {
            if (state.requestState == RequestState.Loading) {
              return CircularProgressIndicator();
            } else if (state.requestState == RequestState.Loaded) {
              return Expanded(
                child: ListLivre(state: state),
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

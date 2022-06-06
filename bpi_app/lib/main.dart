import 'package:bpi_app/bloc/adherents/adherent_bloc.dart';
import 'package:bpi_app/bloc/adherents/adherent_state.dart';
import 'package:bpi_app/bloc/livres/livre_bloc.dart';
import 'package:bpi_app/bloc/livres/livre_state.dart';
import 'package:bpi_app/data/repositories/adherent_repository.dart';
import 'package:bpi_app/data/repositories/livre_repository.dart';
import 'package:bpi_app/ui/pages/about_page.dart';
import 'package:bpi_app/ui/pages/adherent_page.dart';
import 'package:bpi_app/ui/pages/livre_page.dart';
import 'package:bpi_app/ui/pages/page_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=> LivreBloc(LivreState(livres: [], requestState: RequestState.NONE, message: ""), LivreRepository())),
          BlocProvider(create: (context)=> AdherentBloc(AdherentState(adherents: [], requestState: RequestState.NONE, message: ""), AdherentRepository())),
        ],
        child: MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.indigo,
              textTheme: const TextTheme(
                bodyText1: TextStyle(color:Colors.indigo ,fontSize: 20, fontFamily: 'RobotoMono'),

              ),
              iconTheme: const IconThemeData(
                color: Color(0xffbac3fe),
                size: 28,
              ),
            ),
          routes: {
            "/":(context)=>HomePage(),
            "/livre":(context)=> LivrePage(),
            "/adherent":(context)=> AdherentPage(),
            "/about":(context)=>AboutPage(),
          },
        ));
  }
}

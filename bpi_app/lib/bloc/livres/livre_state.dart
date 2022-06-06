import '../../data/model/livre_model.dart';

enum RequestState{Loaded,Loading,Error,NONE}
class LivreState{
  List<Livre> livres;
  RequestState requestState;
  String message;

  LivreState({required this.livres, required this.requestState, required this.message});
}
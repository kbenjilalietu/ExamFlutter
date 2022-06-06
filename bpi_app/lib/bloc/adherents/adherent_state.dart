
import 'package:bpi_app/data/model/adherent_model.dart';

import '../livres/livre_state.dart';

class AdherentState{
  List<Adherent> adherents;
  RequestState requestState;
  String message;
  AdherentState({required this.adherents, required this.requestState, required this.message});
}
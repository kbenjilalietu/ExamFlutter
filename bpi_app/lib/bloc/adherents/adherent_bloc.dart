
import 'package:bloc/bloc.dart';
import 'package:bpi_app/bloc/adherents/adherent_event.dart';
import 'package:bpi_app/bloc/adherents/adherent_state.dart';
import 'package:bpi_app/data/model/adherent_model.dart';
import 'package:bpi_app/data/repositories/adherent_repository.dart';

import '../livres/livre_state.dart';

class AdherentBloc extends Bloc<AdherentEvent, AdherentState>{
  AdherentRepository adherentRepository;
  AdherentBloc(AdherentState initialState, this.adherentRepository) : super(initialState){
    on((event, emit) async{
      if(event is LoadAllAdherentEvent){
        emit(AdherentState(adherents: [], requestState: RequestState.Loading, message: ""));
        List<Adherent> adherents= await adherentRepository.allAdherents();
        emit(AdherentState(adherents: adherents, requestState: RequestState.Loaded, message: ""));
      }
      else if(event is DeleteAdherentEvent) {
        emit(AdherentState(adherents: [], requestState: RequestState.Loading, message: ""));
        List<Adherent> adherents = await adherentRepository.deleteAdherent(event.id);
        emit(AdherentState(adherents: adherents, requestState: RequestState.Loaded, message: "message"));
      }
    });
  }

}
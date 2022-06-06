import 'package:bloc/bloc.dart';
import 'package:bpi_app/bloc/livres/livre_event.dart';
import 'package:bpi_app/bloc/livres/livre_state.dart';
import 'package:bpi_app/data/model/livre_model.dart';
import 'package:bpi_app/data/repositories/livre_repository.dart';

class LivreBloc extends Bloc<LivreEvent, LivreState>{
  LivreRepository livreRepository;

  LivreBloc(LivreState initialState, this.livreRepository) : super(initialState){
    on((event, emit) async{
      if(event is LoadAllLivreEvent){
          emit(LivreState(livres: [], requestState: RequestState.Loading, message: ""));
          List<Livre> livres= await livreRepository.allLivres();
          emit(LivreState(livres: livres, requestState: RequestState.Loaded, message: ""));
        }
      else if(event is FindLivreMcEvent){
        emit(LivreState(livres: [], requestState: RequestState.Loading, message: ""));
        List<Livre> livres = await livreRepository.findLivres(event.mc);
        emit(LivreState(livres: livres, requestState: RequestState.Loaded, message: ""));
      }
      else if(event is DeleteLivreEvent) {
        emit(LivreState(livres: [], requestState: RequestState.Loading, message: ""));
        List<Livre> livres = await livreRepository.deleteLivre(event.id);
        emit(LivreState(livres: livres, requestState: RequestState.Loaded, message: "L'adherent est bient supprimer"));
      }
    });
  }
  
}
abstract class LivreEvent{}

class LoadAllLivreEvent extends LivreEvent{}

class FindLivreMcEvent extends LivreEvent{
  String mc;
  FindLivreMcEvent({required this.mc});
}

class DeleteLivreEvent extends LivreEvent{
  int id;
  DeleteLivreEvent({required this.id});
}
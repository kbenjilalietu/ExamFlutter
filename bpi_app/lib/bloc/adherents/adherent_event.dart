abstract class AdherentEvent{}

class LoadAllAdherentEvent extends AdherentEvent{}

class DeleteAdherentEvent extends AdherentEvent{
  int id;
  DeleteAdherentEvent({required this.id});
}
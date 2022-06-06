import 'package:bpi_app/data/model/adherent_model.dart';

class AdherentRepository{

  List<Adherent> adherents = [
     Adherent(id_adherent: 1, nom: "benjilali", prenom: "khadija", email: "khadija@gmail.com", tel: "098765432"),
     Adherent(id_adherent: 2, nom: "Aseriu", prenom: "Imane", email: "imane@gmail.com", tel: "0678853215"),
     Adherent(id_adherent: 3, nom: "soufai", prenom: "Amjad", email: "amjad@gmail.com", tel: "0923561367"),
     Adherent(id_adherent: 4, nom: "boulalki", prenom: "Akram", email: "akram@gmail.com", tel: "023456789"),
    ];

  Future<List<Adherent>> allAdherents()async{
    var future= await Future.delayed(Duration(seconds: 1));
    return adherents;
  }


  Future<List<Adherent>> deleteAdherent(int id)async{
    List<Adherent> adherents2 = adherents;
    Adherent adherent = adherents2.where((element) => element.id_adherent==id).first;
    adherents2.remove(adherent);
    var future= await Future.delayed(Duration(milliseconds: 60));
    return adherents2;
  }
}
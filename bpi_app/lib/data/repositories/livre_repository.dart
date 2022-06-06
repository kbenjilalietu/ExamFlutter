import 'package:bpi_app/data/model/livre_model.dart';

class LivreRepository{
  List<Livre> livres = [
    Livre(id_livre: 1, isbn: "123456", titre: "titre1", auteur: "auteur1", anne_publication: DateTime.now(), nb_exemplaires: 2, prix: 134.89),
    Livre(id_livre: 2, isbn: "766542", titre: "titre2", auteur: "auteur2", anne_publication: DateTime.now(), nb_exemplaires: 54, prix: 50.19),
    Livre(id_livre: 3, isbn: "257981", titre: "titre3", auteur: "auteur3", anne_publication: DateTime.now(), nb_exemplaires: 12, prix: 34.45),
    Livre(id_livre: 4, isbn: "097468", titre: "titre4", auteur: "auteur4", anne_publication: DateTime.now(), nb_exemplaires: 32, prix: 14.89)
  ];

  Future<List<Livre>> allLivres()async{
    var future= await Future.delayed(Duration(seconds: 1));
    return livres;
  }

  Future<List<Livre>> findLivres(String mc)async{
    var future= await Future.delayed(Duration(seconds: 1));
    return livres.where((element) => element.titre==mc).toList();
  }

  Future<List<Livre>> deleteLivre(int id)async{
    List<Livre> livres2 = livres;
    Livre livre = livres2.where((element) => element.id_livre==id).first;
    livres2.remove(livre);
    var future= await Future.delayed(Duration(milliseconds: 60));
    return livres2;
  }



}
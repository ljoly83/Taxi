import '../resources/app-config.dart';
import 'package:url_launcher/url_launcher.dart';

/**
 * Model class for register-form.dart
 */
class User {

  String societe = '';
  String prenom = '';
  String nom = '';
  String departement = '';
  String email = '';
  String nbVehicules = '';
  String telephone = '';
  String contenuEmail ='';

  save() {
    print('Open mail');
    _launchURL();
  }

  _launchURL() async {
    String destMail = REGISTRATION_RECEVE_MAIL;
    String titreMail = 'Enregistrement de compte';
    String contenuEmail = 'Merci de prendre en compte mon email afin ';
    contenuEmail += 'de me faire parvenir les nouveautés et toutes informations concernant vos logiciels et services.\n\n';
    contenuEmail += 'Société: $societe \n';
    contenuEmail += 'Nom: $nom \n';
    contenuEmail += 'Prénom: $prenom \n';
    contenuEmail += 'Email: $email \n';
    contenuEmail += 'Département: $departement \n';
    contenuEmail += 'Nombre de vehicules: $nbVehicules \n';
    contenuEmail += 'Téléphone: $telephone \n';
    contenuEmail += '\n';
    contenuEmail += 'Cordialement';
    contenuEmail += '\n$prenom $nom';

    var url = 'mailto:$destMail?subject=$titreMail&body=$contenuEmail';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


}
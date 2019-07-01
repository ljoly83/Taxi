import 'package:json_annotation/json_annotation.dart';

/**
 * Object mapping JSON (API v1.0)
 * @see  http://liburgence.aidesnsoft.fr/swagger/ui/index
 * http://liburgence.aidesnsoft.fr/DoCalcul (API REST/JSON en POST)
 */

@JsonSerializable()
class BaseResponse extends Object {
  String guidConvention;
  @JsonKey(name:'transport')
  Transport transport;
  @JsonKey(name:'detailTransportSimultane')
  DetailSimultaneousTransport detailSimultaneousTransport;
  @JsonKey(name:'param')
  Param param;
}

BaseResponse(String guidConvention, Transport transport, DetailSimultaneousTransport detailSimultaneousTransport, Param param) {
  this.guidConvention = guidConvention;
  this.tranport = transport;
  this.detailSimultaneousTransport = detailSimultaneousTransport;
  this.param = param;
)


@JsonSerializable()
class TaxiDoCalculRequest extends Object {
  String guidConvention;
  Transport tranport;
  DetailSimultaneousTransport detailSimultaneousTransport;
  Param param;
}

class Transport extends Object {
  String dateHeureDepart;	//date-time
  String dateHeureArrivee; //date-time
  String dateHeureArriveeAller; //date-time
  String dateHeureDepartRetour;	//date-time
  String dateHeureDebutAttente; //date-time
  double montantSupplement1;
  double montantSupplement2;
  double montantTotalSupplementNonRemboursable;
  double montantPeageNonRemise;
  int nombrePersonnes;
  String dureeAttente;
  double montantCompteur;
  bool cocheTarifA;
  bool cocheTarifB;
  bool cocheTarifC;
  bool cocheTarifD;
  int forfait;
  int nombreKmsA;
  int nombreKmsB;
  int nombreKmsC;
  int nombreKmsD;
  int nombreKmsApprocheA;
  int nombreKmsApprocheB;
  int nombreKmsApprocheC;
  int nombreKmsApprocheD;
  bool hospitalisation;
  double montantPriseEnCharge;
  bool prendreEnComptePriseEnCharge;
  String allerRetour;
  bool appliquerSuppplementTPMR;
  double montantCompteurApproche;
  int nombreKmsCompteur;
  bool entreeHospitalisation;
  bool sortieHospitalisation;
  double pCRemise;
  bool demiCourse;
  double montantMarcheLente;
  double montantSupplementSansAbattement;
  bool isFerie;
  bool telepeage;
  bool longueDistance;
  bool serie;
  bool accordPrealable;
  bool isNeigeVerglas;
  int numeroPersonneSimultane;
  bool moinsDe50PourCentDeTrajetEnCommun;
  String attenteAssocie;
  int nombreKmsAssocie;
  bool calculAuTransport;
}

class DetailSimultaneousTransport extends Object {
  List<DetailSimultaneousTransport> listeLignesDetailTransportSimultane;
  int diviseurPeage;
  int diviseurPriseEnCharge;
  double pourcentagePeage;
  double pourcentagePriseEnCharge;
}

class Param extends Object {
  String heureDebutNuit; //date-time
  String heureFinNuit; //date-time
  String pUAttenteNuit; //date-time
}
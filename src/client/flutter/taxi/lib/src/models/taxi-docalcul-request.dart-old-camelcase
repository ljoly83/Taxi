import 'package:json_annotation/json_annotation.dart';

part 'taxi-docalcul-request.g.dart';
/**
 * Object mapping JSON (API v1.0)
 * @see  http://liburgence.aidesnsoft.fr/swagger/ui/index
 * http://liburgence.aidesnsoft.fr/DoCalcul (API REST/JSON en POST)
 */

@JsonSerializable()
class BaseResponse extends Object {
  String guidConvention;
  @JsonKey(name: 'transport')
  Transport transport;
  @JsonKey(name: 'detailTransportSimultane')
  DetailSimultaneousTransport detailSimultaneousTransport;
  @JsonKey(name: 'param')
  Param param;

  BaseResponse(String guidConvention, Transport transport,
      DetailSimultaneousTransport detailSimultaneousTransport, Param param) {
    this.guidConvention = guidConvention;
    this.transport = transport;
    this.detailSimultaneousTransport = detailSimultaneousTransport;
    this.param = param;
  }

  factory BaseResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

@JsonSerializable()
class TaxiDoCalculRequest extends Object {
  String guidConvention;
  Transport tranport;
  DetailSimultaneousTransport detailSimultaneousTransport;
  Param param;

  TaxiDoCalculRequest(String guidConvention,Transport tranport,
  DetailSimultaneousTransport detailSimultaneousTransport,Param param){
   this.guidConvention = guidConvention;
   this.tranport = tranport;
   this.detailSimultaneousTransport = detailSimultaneousTransport;
   this.param = param;
  }

  factory TaxiDoCalculRequest.fromJson(Map<String, dynamic> json) => _$TaxiDoCalculRequestFromJson(json);
  Map<String, dynamic> toJson() => _$TaxiDoCalculRequestToJson(this);
}

@JsonSerializable()
class Transport extends Object {
  String dateHeureDepart; //date-time "2019-06-25T09:00:00"
  String dateHeureArrivee; //date-time
  String dateHeureArriveeAller; //date-time
  String dateHeureDepartRetour; //date-time
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

  Transport(
  String dateHeureDepart,
  String dateHeureArrivee,
  String dateHeureArriveeAller,
  String dateHeureDepartRetour,
  String dateHeureDebutAttente,
  double montantSupplement1,
  double montantSupplement2,
  double montantTotalSupplementNonRemboursable,
  double montantPeageNonRemise,
  int nombrePersonnes,
  String dureeAttente,
  double montantCompteur,
  bool cocheTarifA,
  bool cocheTarifB,
  bool cocheTarifC,
  bool cocheTarifD,
  int forfait,
  int nombreKmsA,
  int nombreKmsB,
  int nombreKmsC,
  int nombreKmsD,
  int nombreKmsApprocheA,
  int nombreKmsApprocheB,
  int nombreKmsApprocheC,
  int nombreKmsApprocheD,
  bool hospitalisation,
  double montantPriseEnCharge,
  bool prendreEnComptePriseEnCharge,
  String allerRetour,
  bool appliquerSuppplementTPMR,
  double montantCompteurApproche,
  int nombreKmsCompteur,
  bool entreeHospitalisation,
  bool sortieHospitalisation,
  double pCRemise,
  bool demiCourse,
  double montantMarcheLente,
  double montantSupplementSansAbattement,
  bool isFerie,
  bool telepeage,
  bool longueDistance,
  bool serie,
  bool accordPrealable,
  bool isNeigeVerglas,
  int numeroPersonneSimultane,
  bool moinsDe50PourCentDeTrajetEnCommun,
  String attenteAssocie,
  int nombreKmsAssocie,
  bool calculAuTransport){
    this.dateHeureDepart = dateHeureDepart;
    this.dateHeureArrivee = dateHeureArrivee;
    this.dateHeureArriveeAller = dateHeureArriveeAller;
    this.dateHeureDepartRetour = dateHeureDepartRetour;
    this.dateHeureDebutAttente = dateHeureDebutAttente;
    this.montantSupplement1 = montantSupplement1;
    this.montantSupplement2 = montantSupplement2;
    this.montantTotalSupplementNonRemboursable = montantTotalSupplementNonRemboursable;
    this.montantPeageNonRemise = montantPeageNonRemise;
    this.nombrePersonnes = nombrePersonnes;
    this.dureeAttente = dureeAttente;
    this.montantCompteur = montantCompteur;
    this.cocheTarifA = cocheTarifA;
    this.cocheTarifB = cocheTarifB;
    this.cocheTarifC = cocheTarifC;
    this.cocheTarifD = cocheTarifD;
    this.forfait = forfait;
    this.nombreKmsA = nombreKmsA;
    this.nombreKmsB = nombreKmsB;
    this.nombreKmsC = nombreKmsC;
    this.nombreKmsD = nombreKmsD;
    this.nombreKmsApprocheA = nombreKmsApprocheA;
    this.nombreKmsApprocheB = nombreKmsApprocheB;
    this.nombreKmsApprocheC = nombreKmsApprocheC;
    this.nombreKmsApprocheD = nombreKmsApprocheD;
    this.hospitalisation = hospitalisation;
    this.montantPriseEnCharge = montantPriseEnCharge;
    this.prendreEnComptePriseEnCharge = prendreEnComptePriseEnCharge;
    this.allerRetour = allerRetour;
    this.appliquerSuppplementTPMR = appliquerSuppplementTPMR;
    this.montantCompteurApproche = montantCompteurApproche;
    this.nombreKmsCompteur = nombreKmsCompteur;
    this.entreeHospitalisation = entreeHospitalisation;
    this.sortieHospitalisation = sortieHospitalisation;
    this.pCRemise = pCRemise;
    this.demiCourse = demiCourse;
    this.montantMarcheLente = montantMarcheLente;
    this.montantSupplementSansAbattement = montantSupplementSansAbattement;
    this.isFerie = isFerie;
    this.telepeage = telepeage;
    this.longueDistance = longueDistance;
    this.serie = serie;
    this.accordPrealable = accordPrealable;
    this.isNeigeVerglas = isNeigeVerglas;
    this.numeroPersonneSimultane = numeroPersonneSimultane;
    this.moinsDe50PourCentDeTrajetEnCommun = moinsDe50PourCentDeTrajetEnCommun;
    this.attenteAssocie = attenteAssocie;
    this.nombreKmsAssocie = nombreKmsAssocie;
    this.calculAuTransport = calculAuTransport;
  }
  factory Transport.fromJson(Map<String, dynamic> json) => _$TransportFromJson(json);
  Map<String, dynamic> toJson() => _$TransportToJson(this);
}

@JsonSerializable()
class DetailSimultaneousTransport extends Object {
  @JsonKey(name: 'list') //TODO verifier avec christophe le nom de la clé
  List<DetailSimultaneousTransport> listeLignesDetailTransportSimultane;
  int diviseurPeage;
  int diviseurPriseEnCharge;
  double pourcentagePeage;
  double pourcentagePriseEnCharge;

  DetailSimultaneousTransport(
  int diviseurPeage,
  int diviseurPriseEnCharge,
  double pourcentagePeage,
  double pourcentagePriseEnCharge)
  {
    this.diviseurPeage = diviseurPeage;
    this.diviseurPriseEnCharge = diviseurPriseEnCharge;
    this.pourcentagePeage = pourcentagePeage;
    this.pourcentagePriseEnCharge = pourcentagePriseEnCharge;
  }

  factory DetailSimultaneousTransport.fromJson(Map<String, dynamic> json) => _$DetailSimultaneousTransportFromJson(json);
  Map<String, dynamic> toJson() => _$DetailSimultaneousTransportToJson(this);
}

@JsonSerializable()
class Param extends Object {
  String heureDebutNuit; //date-time
  String heureFinNuit; //date-time
  String pUAttenteNuit; //date-time

  Param(
  String heureDebutNuit,
  String heureFinNuit,
  String pUAttenteNuit
  ){
  this.heureDebutNuit = heureDebutNuit;
  this.heureFinNuit = heureFinNuit;
  this.pUAttenteNuit = pUAttenteNuit;
  }

  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);
  Map<String, dynamic> toJson() => _$ParamToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'taxi-docalcul-request.g.dart';

/// Object mapping JSON (API v1.0)
/// @see  http://liburgence.aidesnsoft.fr/swagger/ui/index
/// http://liburgence.aidesnsoft.fr/DoCalcul (API REST/JSON en POST)

@JsonSerializable()
class BaseResponse extends Object {
  @JsonKey(name: 'Guid')
  String guid;
  @JsonKey(name: 'Param')
  Param param;
  @JsonKey(name: 'Transport')
  Transport transport;

  BaseResponse(String guid, Param param, Transport transport ) {
    this.guid = guid;
    this.transport = transport;
    this.param = param;
  }

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}

@JsonSerializable()
class TaxiDoCalculRequest extends Object {
  @JsonKey(name: 'Guid')
  String guid;
  @JsonKey(name: 'Param')
  Param param;
  @JsonKey(name: 'Transport')
  Transport tranport;

  TaxiDoCalculRequest(String guid, Param param, Transport tranport) {
    this.guid = guid;
    this.param = param;
    this.tranport = tranport;
  }

  factory TaxiDoCalculRequest.fromJson(Map<String, dynamic> json) =>
      _$TaxiDoCalculRequestFromJson(json);
  Map<String, dynamic> toJson() => _$TaxiDoCalculRequestToJson(this);
}

@JsonSerializable()
class Transport extends Object {
  String DateHeureDepart;
  String DateHeureArrivee;
  String DateHeureArriveeAller;
  String DateHeureDepartRetour;
  String DateHeureDebutAttente;
  double MontantSupplement1;
  double MontantSupplement2;
  double MontantTotalSupplementNonRemboursable;
  double MontantPeageNonRemise;
  int NombrePersonnes;
  String DureeAttente;
  double MontantCompteur;
  bool CocheTarifA;
  bool CocheTarifB;
  bool CocheTarifC;
  bool CocheTarifD;
  int Forfait;
  int NombreKmsA;
  int NombreKmsB;
  int NombreKmsC;
  int NombreKmsD;
  int NombreKmsApprocheA;
  int NombreKmsApprocheB;
  int NombreKmsApprocheC;
  int NombreKmsApprocheD;
  bool Hospitalisation;
  double MontantPriseEnCharge;
  bool PrendreEnComptePriseEnCharge;
  String AllerRetour;
  bool AppliquerSuppplementTPMR;
  double MontantCompteurApproche;
  int NombreKmsCompteur;
  bool EntreeHospitalisation;
  bool SortieHospitalisation;
  double PCRemise;
  bool DemiCourse;
  double MontantMarcheLente;
  double MontantSupplementSansAbattement;
  bool isFerie;
  bool Telepeage;
  bool LongueDistance;
  bool Serie;
  bool AccordPrealable;
  bool IsNeigeVerglas;
  int NumeroPersonneSimultane;
  bool MoinsDe50PourCentDeTrajetEnCommun;
  String AttenteAssocie;
  int NombreKmsAssocie;
  bool CalculAuTransport;
  @JsonKey(name: 'DetailTransportSimultane')
  DetailSimultaneousTransport detailSimultaneousTransport;

  Transport(
    String DateHeureDepart,
    String DateHeureArrivee,
    String DateHeureArriveeAller,
    String DateHeureDepartRetour,
    String DateHeureDebutAttente,
    double MontantSupplement1,
    double MontantSupplement2,
    double MontantTotalSupplementNonRemboursable,
    double MontantPeageNonRemise,
    int NombrePersonnes,
    String DureeAttente,
    double MontantCompteur,
    bool CocheTarifA,
    bool CocheTarifB,
    bool CocheTarifC,
    bool CocheTarifD,
    int Forfait,
    int NombreKmsA,
    int NombreKmsB,
    int NombreKmsC,
    int NombreKmsD,
    int NombreKmsApprocheA,
    int NombreKmsApprocheB,
    int NombreKmsApprocheC,
    int NombreKmsApprocheD,
    bool Hospitalisation,
    double MontantPriseEnCharge,
    bool PrendreEnComptePriseEnCharge,
    String AllerRetour,
    bool AppliquerSuppplementTPMR,
    double MontantCompteurApproche,
    int NombreKmsCompteur,
    bool EntreeHospitalisation,
    bool SortieHospitalisation,
    double PCRemise,
    bool DemiCourse,
    double MontantMarcheLente,
    double MontantSupplementSansAbattement,
    bool isFerie,
    bool Telepeage,
    bool LongueDistance,
    bool Serie,
    bool AccordPrealable,
    bool IsNeigeVerglas,
    int NumeroPersonneSimultane,
    bool MoinsDe50PourCentDeTrajetEnCommun,
    String AttenteAssocie,
    int NombreKmsAssocie,
    bool CalculAuTransport,
    @JsonKey(name: 'DetailTransportSimultane')
    DetailSimultaneousTransport detailSimultaneousTransport,
  ) {
    this.DateHeureDepart = DateHeureDepart;
    this.DateHeureArrivee = DateHeureArrivee;
    this.DateHeureArriveeAller = DateHeureArriveeAller;
    this.DateHeureDepartRetour = DateHeureDepartRetour;
    this.DateHeureDebutAttente = DateHeureDebutAttente;
    this.MontantSupplement1 = MontantSupplement1;
    this.MontantSupplement2 = MontantSupplement2;
    this.MontantTotalSupplementNonRemboursable =
        MontantTotalSupplementNonRemboursable;
    this.MontantPeageNonRemise = MontantPeageNonRemise;
    this.NombrePersonnes = NombrePersonnes;
    this.DureeAttente = DureeAttente;
    this.MontantCompteur = MontantCompteur;
    this.CocheTarifA = CocheTarifA;
    this.CocheTarifB = CocheTarifB;
    this.CocheTarifC = CocheTarifC;
    this.CocheTarifD = CocheTarifD;
    this.Forfait = Forfait;
    this.NombreKmsA = NombreKmsA;
    this.NombreKmsB = NombreKmsB;
    this.NombreKmsC = NombreKmsC;
    this.NombreKmsD = NombreKmsD;
    this.NombreKmsApprocheA = NombreKmsApprocheA;
    this.NombreKmsApprocheB = NombreKmsApprocheB;
    this.NombreKmsApprocheC = NombreKmsApprocheC;
    this.NombreKmsApprocheD = NombreKmsApprocheD;
    this.Hospitalisation = Hospitalisation;
    this.MontantPriseEnCharge = MontantPriseEnCharge;
    this.PrendreEnComptePriseEnCharge = PrendreEnComptePriseEnCharge;
    this.AllerRetour = AllerRetour;
    this.AppliquerSuppplementTPMR = AppliquerSuppplementTPMR;
    this.MontantCompteurApproche = MontantCompteurApproche;
    this.NombreKmsCompteur = NombreKmsCompteur;
    this.EntreeHospitalisation = EntreeHospitalisation;
    this.SortieHospitalisation = SortieHospitalisation;
    this.PCRemise = PCRemise;
    this.DemiCourse = DemiCourse;
    this.MontantMarcheLente = MontantMarcheLente;
    this.MontantSupplementSansAbattement = MontantSupplementSansAbattement;
    this.isFerie = isFerie;
    this.Telepeage = Telepeage;
    this.LongueDistance = LongueDistance;
    this.Serie = Serie;
    this.AccordPrealable = AccordPrealable;
    this.IsNeigeVerglas = IsNeigeVerglas;
    this.NumeroPersonneSimultane = NumeroPersonneSimultane;
    this.MoinsDe50PourCentDeTrajetEnCommun = MoinsDe50PourCentDeTrajetEnCommun;
    this.AttenteAssocie = AttenteAssocie;
    this.NombreKmsAssocie = NombreKmsAssocie;
    this.CalculAuTransport = CalculAuTransport;
    this.detailSimultaneousTransport = detailSimultaneousTransport;
  }

  factory Transport.fromJson(Map<String, dynamic> json) =>
      _$TransportFromJson(json);
  Map<String, dynamic> toJson() => _$TransportToJson(this);
}

@JsonSerializable()
class LigneDetailTransportSimultane extends Object {
  int NombreKmsA;
  int NombreKmsB;
  int NombreKmsC;
  int NombreKmsD;

  LigneDetailTransportSimultane(
    int NombreKmsA,
    int NombreKmsB,
    int NombreKmsC,
    int NombreKmsD,
  ) {
    this.NombreKmsA = NombreKmsA;
    this.NombreKmsB = NombreKmsB;
    this.NombreKmsC = NombreKmsC;
    this.NombreKmsD = NombreKmsD;
  }

  factory LigneDetailTransportSimultane.fromJson(Map<String, dynamic> json) =>
      _$LigneDetailTransportSimultaneFromJson(json);
  Map<String, dynamic> toJson() => _$LigneDetailTransportSimultaneToJson(this);
}

@JsonSerializable()
class DetailSimultaneousTransport extends Object {
  List<LigneDetailTransportSimultane> ListeLignesDetailTransportSimultane;
  int DiviseurPeage;
  int DiviseurPriseEnCharge;
  double PourcentagePeage;
  double PourcentagePriseEnCharge;

  DetailSimultaneousTransport(
      List<LigneDetailTransportSimultane> ListeLignesDetailTransportSimultane,
      int DiviseurPeage,
      int DiviseurPriseEnCharge,
      double PourcentagePeage,
      double PourcentagePriseEnCharge) {
    this.ListeLignesDetailTransportSimultane = ListeLignesDetailTransportSimultane == null ? [] : ListeLignesDetailTransportSimultane;
    this.DiviseurPeage = DiviseurPeage;
    this.DiviseurPriseEnCharge = DiviseurPriseEnCharge;
    this.PourcentagePeage = PourcentagePeage;
    this.PourcentagePriseEnCharge = PourcentagePriseEnCharge;
  }

  factory DetailSimultaneousTransport.fromJson(Map<String, dynamic> json) =>
      _$DetailSimultaneousTransportFromJson(json);
  Map<String, dynamic> toJson() => _$DetailSimultaneousTransportToJson(this);
}

@JsonSerializable()
class Param extends Object {
  double PCRemiseCD;
  double TarifMiniPerception;
  double PUTarifA;
  double PUTarifB;
  double PUTarifC;
  double PUTarifD;
  double MontantPriseEnCharge;
  double PUAttente;
  double PCAbattementSimultane2Personnes;
  double PCAbattementSimultane3Personnes;
  bool AppliquerApproche;
  bool AuCompteur;
  double PCRemiseIndexation;
  bool SimultaneeSurPeage;
  bool AppliquerIndexation;
  String HeureDebutNuit;
  String HeureFinNuit;
  double PUAttenteNuit;

  Param(
      double PCRemiseCD,
      double TarifMiniPerception,
      double PUTarifA,
      double PUTarifB,
      double PUTarifC,
      double PUTarifD,
      double MontantPriseEnCharge,
      double PUAttente,
      double PCAbattementSimultane2Personnes,
      double PCAbattementSimultane3Personnes,
      bool AppliquerApproche,
      bool AuCompteur,
      double PCRemiseIndexation,
      bool SimultaneeSurPeage,
      bool AppliquerIndexation,
      String HeureDebutNuit,
      String HeureFinNuit,
      double PUAttenteNuit) {
    this.PCRemiseCD = PCRemiseCD;
    this.TarifMiniPerception = TarifMiniPerception;
    this.PUTarifA = PUTarifA;
    this.PUTarifB = PUTarifB;
    this.PUTarifC = PUTarifC;
    this.PUTarifD = PUTarifD;
    this.MontantPriseEnCharge = MontantPriseEnCharge;
    this.PUAttente = PUAttente;
    this.PCAbattementSimultane2Personnes = PCAbattementSimultane2Personnes;
    this.PCAbattementSimultane3Personnes = PCAbattementSimultane3Personnes;
    this.AppliquerApproche = AppliquerApproche;
    this.AuCompteur = AuCompteur;
    this.PCRemiseIndexation = PCRemiseIndexation;
    this.SimultaneeSurPeage = SimultaneeSurPeage;
    this.AppliquerIndexation = AppliquerIndexation;
    this.HeureDebutNuit = HeureDebutNuit;
    this.HeureFinNuit = HeureFinNuit;
    this.PUAttenteNuit = PUAttenteNuit;
  }
  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);
  Map<String, dynamic> toJson() => _$ParamToJson(this);
}

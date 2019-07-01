/**
 * Object mapping JSON (API v1.0)
 * @see  http://liburgence.aidesnsoft.fr/swagger/ui/index
 * http://liburgence.aidesnsoft.fr/DoCalcul (API REST/JSON en POST)
 */
class CalculsTaxi {
  List<Messages> messages;
  int minutesDeNuit;
  int minutesFeries;
  int pCRemise;
  TaxiJustificatifCalculs taxiJustificatifCalculs;
  int montantTotalAttente;
  bool cocheTarifA;
  bool cocheTarifB;
  bool cocheTarifC;
  bool cocheTarifD;
  int nombreKmsA;
  int nombreKmsB;
  int nombreKmsC;
  int nombreKmsD;
  int nombreTotalKms;
  String dureeAttente;
  int pUAttente;
  int forfait;
  int montantKmsA;
  int montantKmsB;
  int montantKmsC;
  int montantKmsD;
  int montantKms;
  int montantPriseEnCharge;
  int montantCompteur;
  int montantTotalSupplement;
  int montantBaseRemise;
  int montantAbattementConvention;
  int montantTotalApresAbattementConvention;
  int montantAbattementSimultanne;
  int montantTotalApresAbattementSimultanee;
  int montantPeages;
  int montantBaseDeRemboursement;
  int montantTotal;
  int nombreKmsApprocheA;
  int nombreKmsApprocheB;
  int nombreKmsApprocheC;
  int nombreKmsApprocheD;
  int nombreTotalKmsApproche;
  bool prendreEnComptePriseEnCharge;
  int montantCompteurApproche;
  int montantTotalApproche;
  int nombreKmsCompteur;
  bool isFerie;
  int montantMarcheLente;
  int pCRemiseSimultanee;
  int montantSupplementSansAbattement;
  int cptMontantForfait;
  int cptMontantSuppRemb;
  int cptMontantAbattement;
  int cptMontantKms;
  int cptMontantSuppNonRemb;
  int cptMontantPeages;

  CalculsTaxi(
      {this.messages,
        this.minutesDeNuit,
        this.minutesFeries,
        this.pCRemise,
        this.taxiJustificatifCalculs,
        this.montantTotalAttente,
        this.cocheTarifA,
        this.cocheTarifB,
        this.cocheTarifC,
        this.cocheTarifD,
        this.nombreKmsA,
        this.nombreKmsB,
        this.nombreKmsC,
        this.nombreKmsD,
        this.nombreTotalKms,
        this.dureeAttente,
        this.pUAttente,
        this.forfait,
        this.montantKmsA,
        this.montantKmsB,
        this.montantKmsC,
        this.montantKmsD,
        this.montantKms,
        this.montantPriseEnCharge,
        this.montantCompteur,
        this.montantTotalSupplement,
        this.montantBaseRemise,
        this.montantAbattementConvention,
        this.montantTotalApresAbattementConvention,
        this.montantAbattementSimultanne,
        this.montantTotalApresAbattementSimultanee,
        this.montantPeages,
        this.montantBaseDeRemboursement,
        this.montantTotal,
        this.nombreKmsApprocheA,
        this.nombreKmsApprocheB,
        this.nombreKmsApprocheC,
        this.nombreKmsApprocheD,
        this.nombreTotalKmsApproche,
        this.prendreEnComptePriseEnCharge,
        this.montantCompteurApproche,
        this.montantTotalApproche,
        this.nombreKmsCompteur,
        this.isFerie,
        this.montantMarcheLente,
        this.pCRemiseSimultanee,
        this.montantSupplementSansAbattement,
        this.cptMontantForfait,
        this.cptMontantSuppRemb,
        this.cptMontantAbattement,
        this.cptMontantKms,
        this.cptMontantSuppNonRemb,
        this.cptMontantPeages});

  CalculsTaxi.fromJson(Map<String, dynamic> json) {
    if (json['Messages'] != null) {
      messages = new List<Messages>();
      json['Messages'].forEach((v) {
        messages.add(new Messages.fromJson(v));
      });
    }
    minutesDeNuit = json['MinutesDeNuit'];
    minutesFeries = json['MinutesFeries'];
    pCRemise = json['PCRemise'];
    taxiJustificatifCalculs = json['TaxiJustificatifCalculs'] != null
        ? new TaxiJustificatifCalculs.fromJson(json['TaxiJustificatifCalculs'])
        : null;
    montantTotalAttente = json['MontantTotalAttente'];
    cocheTarifA = json['CocheTarifA'];
    cocheTarifB = json['CocheTarifB'];
    cocheTarifC = json['CocheTarifC'];
    cocheTarifD = json['CocheTarifD'];
    nombreKmsA = json['NombreKmsA'];
    nombreKmsB = json['NombreKmsB'];
    nombreKmsC = json['NombreKmsC'];
    nombreKmsD = json['NombreKmsD'];
    nombreTotalKms = json['NombreTotalKms'];
    dureeAttente = json['DureeAttente'];
    pUAttente = json['PUAttente'];
    forfait = json['Forfait'];
    montantKmsA = json['MontantKmsA'];
    montantKmsB = json['MontantKmsB'];
    montantKmsC = json['MontantKmsC'];
    montantKmsD = json['MontantKmsD'];
    montantKms = json['MontantKms'];
    montantPriseEnCharge = json['MontantPriseEnCharge'];
    montantCompteur = json['MontantCompteur'];
    montantTotalSupplement = json['MontantTotalSupplement'];
    montantBaseRemise = json['MontantBaseRemise'];
    montantAbattementConvention = json['MontantAbattementConvention'];
    montantTotalApresAbattementConvention =
    json['MontantTotalApresAbattementConvention'];
    montantAbattementSimultanne = json['MontantAbattementSimultanne'];
    montantTotalApresAbattementSimultanee =
    json['MontantTotalApresAbattementSimultanee'];
    montantPeages = json['MontantPeages'];
    montantBaseDeRemboursement = json['MontantBaseDeRemboursement'];
    montantTotal = json['MontantTotal'];
    nombreKmsApprocheA = json['NombreKmsApprocheA'];
    nombreKmsApprocheB = json['NombreKmsApprocheB'];
    nombreKmsApprocheC = json['NombreKmsApprocheC'];
    nombreKmsApprocheD = json['NombreKmsApprocheD'];
    nombreTotalKmsApproche = json['NombreTotalKmsApproche'];
    prendreEnComptePriseEnCharge = json['PrendreEnComptePriseEnCharge'];
    montantCompteurApproche = json['MontantCompteurApproche'];
    montantTotalApproche = json['MontantTotalApproche'];
    nombreKmsCompteur = json['NombreKmsCompteur'];
    isFerie = json['IsFerie'];
    montantMarcheLente = json['MontantMarcheLente'];
    pCRemiseSimultanee = json['PCRemiseSimultanee'];
    montantSupplementSansAbattement = json['MontantSupplementSansAbattement'];
    cptMontantForfait = json['Cpt_MontantForfait'];
    cptMontantSuppRemb = json['Cpt_MontantSuppRemb'];
    cptMontantAbattement = json['Cpt_MontantAbattement'];
    cptMontantKms = json['Cpt_MontantKms'];
    cptMontantSuppNonRemb = json['Cpt_MontantSuppNonRemb'];
    cptMontantPeages = json['Cpt_MontantPeages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.messages != null) {
      data['Messages'] = this.messages.map((v) => v.toJson()).toList();
    }
    data['MinutesDeNuit'] = this.minutesDeNuit;
    data['MinutesFeries'] = this.minutesFeries;
    data['PCRemise'] = this.pCRemise;
    if (this.taxiJustificatifCalculs != null) {
      data['TaxiJustificatifCalculs'] = this.taxiJustificatifCalculs.toJson();
    }
    data['MontantTotalAttente'] = this.montantTotalAttente;
    data['CocheTarifA'] = this.cocheTarifA;
    data['CocheTarifB'] = this.cocheTarifB;
    data['CocheTarifC'] = this.cocheTarifC;
    data['CocheTarifD'] = this.cocheTarifD;
    data['NombreKmsA'] = this.nombreKmsA;
    data['NombreKmsB'] = this.nombreKmsB;
    data['NombreKmsC'] = this.nombreKmsC;
    data['NombreKmsD'] = this.nombreKmsD;
    data['NombreTotalKms'] = this.nombreTotalKms;
    data['DureeAttente'] = this.dureeAttente;
    data['PUAttente'] = this.pUAttente;
    data['Forfait'] = this.forfait;
    data['MontantKmsA'] = this.montantKmsA;
    data['MontantKmsB'] = this.montantKmsB;
    data['MontantKmsC'] = this.montantKmsC;
    data['MontantKmsD'] = this.montantKmsD;
    data['MontantKms'] = this.montantKms;
    data['MontantPriseEnCharge'] = this.montantPriseEnCharge;
    data['MontantCompteur'] = this.montantCompteur;
    data['MontantTotalSupplement'] = this.montantTotalSupplement;
    data['MontantBaseRemise'] = this.montantBaseRemise;
    data['MontantAbattementConvention'] = this.montantAbattementConvention;
    data['MontantTotalApresAbattementConvention'] =
        this.montantTotalApresAbattementConvention;
    data['MontantAbattementSimultanne'] = this.montantAbattementSimultanne;
    data['MontantTotalApresAbattementSimultanee'] =
        this.montantTotalApresAbattementSimultanee;
    data['MontantPeages'] = this.montantPeages;
    data['MontantBaseDeRemboursement'] = this.montantBaseDeRemboursement;
    data['MontantTotal'] = this.montantTotal;
    data['NombreKmsApprocheA'] = this.nombreKmsApprocheA;
    data['NombreKmsApprocheB'] = this.nombreKmsApprocheB;
    data['NombreKmsApprocheC'] = this.nombreKmsApprocheC;
    data['NombreKmsApprocheD'] = this.nombreKmsApprocheD;
    data['NombreTotalKmsApproche'] = this.nombreTotalKmsApproche;
    data['PrendreEnComptePriseEnCharge'] = this.prendreEnComptePriseEnCharge;
    data['MontantCompteurApproche'] = this.montantCompteurApproche;
    data['MontantTotalApproche'] = this.montantTotalApproche;
    data['NombreKmsCompteur'] = this.nombreKmsCompteur;
    data['IsFerie'] = this.isFerie;
    data['MontantMarcheLente'] = this.montantMarcheLente;
    data['PCRemiseSimultanee'] = this.pCRemiseSimultanee;
    data['MontantSupplementSansAbattement'] =
        this.montantSupplementSansAbattement;
    data['Cpt_MontantForfait'] = this.cptMontantForfait;
    data['Cpt_MontantSuppRemb'] = this.cptMontantSuppRemb;
    data['Cpt_MontantAbattement'] = this.cptMontantAbattement;
    data['Cpt_MontantKms'] = this.cptMontantKms;
    data['Cpt_MontantSuppNonRemb'] = this.cptMontantSuppNonRemb;
    data['Cpt_MontantPeages'] = this.cptMontantPeages;
    return data;
  }
}

class Messages {
  int niveauErreur;
  String message;

  Messages({this.niveauErreur, this.message});

  Messages.fromJson(Map<String, dynamic> json) {
    niveauErreur = json['NiveauErreur'];
    message = json['Message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['NiveauErreur'] = this.niveauErreur;
    data['Message'] = this.message;
    return data;
  }
}

class TaxiJustificatifCalculs {
  int justificatifDistance;
  String descriptifCalcul;
  int qteMinPerc;
  int pUMinPerc;
  List<TabTaxiJustificatifCalculs> tabTaxiJustificatifCalculs;

  TaxiJustificatifCalculs(
      {this.justificatifDistance,
        this.descriptifCalcul,
        this.qteMinPerc,
        this.pUMinPerc,
        this.tabTaxiJustificatifCalculs});

  TaxiJustificatifCalculs.fromJson(Map<String, dynamic> json) {
    justificatifDistance = json['JustificatifDistance'];
    descriptifCalcul = json['DescriptifCalcul'];
    qteMinPerc = json['QteMinPerc'];
    pUMinPerc = json['PUMinPerc'];
    if (json['TabTaxiJustificatifCalculs'] != null) {
      tabTaxiJustificatifCalculs = new List<TabTaxiJustificatifCalculs>();
      json['TabTaxiJustificatifCalculs'].forEach((v) {
        tabTaxiJustificatifCalculs
            .add(new TabTaxiJustificatifCalculs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['JustificatifDistance'] = this.justificatifDistance;
    data['DescriptifCalcul'] = this.descriptifCalcul;
    data['QteMinPerc'] = this.qteMinPerc;
    data['PUMinPerc'] = this.pUMinPerc;
    if (this.tabTaxiJustificatifCalculs != null) {
      data['TabTaxiJustificatifCalculs'] =
          this.tabTaxiJustificatifCalculs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TabTaxiJustificatifCalculs {
  int qtePriseCharge;
  int pUPriseCharge;
  int qteTarifA;
  int pUTarifA;
  int qteTarifB;
  int pUTarifB;
  int qteTarifC;
  int pUTarifC;
  int qteTarifD;
  int pUTarifD;
  int qteAttenteEnH;
  int pUAttente;
  String remiseTarif;
  int qteMinPerc;
  int pUMinPerc;
  int totalMinPerc;
  int mNTPriseCharge;
  int mNTTransportSpeciaux;
  int mNTTransportAutres;
  int qteMarcheLenteEnH;
  int pUMarcheLente;

  TabTaxiJustificatifCalculs(
      {this.qtePriseCharge,
        this.pUPriseCharge,
        this.qteTarifA,
        this.pUTarifA,
        this.qteTarifB,
        this.pUTarifB,
        this.qteTarifC,
        this.pUTarifC,
        this.qteTarifD,
        this.pUTarifD,
        this.qteAttenteEnH,
        this.pUAttente,
        this.remiseTarif,
        this.qteMinPerc,
        this.pUMinPerc,
        this.totalMinPerc,
        this.mNTPriseCharge,
        this.mNTTransportSpeciaux,
        this.mNTTransportAutres,
        this.qteMarcheLenteEnH,
        this.pUMarcheLente});

  TabTaxiJustificatifCalculs.fromJson(Map<String, dynamic> json) {
    qtePriseCharge = json['QtePriseCharge'];
    pUPriseCharge = json['PUPriseCharge'];
    qteTarifA = json['QteTarifA'];
    pUTarifA = json['PUTarifA'];
    qteTarifB = json['QteTarifB'];
    pUTarifB = json['PUTarifB'];
    qteTarifC = json['QteTarifC'];
    pUTarifC = json['PUTarifC'];
    qteTarifD = json['QteTarifD'];
    pUTarifD = json['PUTarifD'];
    qteAttenteEnH = json['QteAttente_en_h'];
    pUAttente = json['PUAttente'];
    remiseTarif = json['RemiseTarif'];
    qteMinPerc = json['QteMinPerc'];
    pUMinPerc = json['PUMinPerc'];
    totalMinPerc = json['TotalMinPerc'];
    mNTPriseCharge = json['MNTPriseCharge'];
    mNTTransportSpeciaux = json['MNTTransportSpeciaux'];
    mNTTransportAutres = json['MNTTransportAutres'];
    qteMarcheLenteEnH = json['QteMarcheLente_en_h'];
    pUMarcheLente = json['PUMarcheLente'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['QtePriseCharge'] = this.qtePriseCharge;
    data['PUPriseCharge'] = this.pUPriseCharge;
    data['QteTarifA'] = this.qteTarifA;
    data['PUTarifA'] = this.pUTarifA;
    data['QteTarifB'] = this.qteTarifB;
    data['PUTarifB'] = this.pUTarifB;
    data['QteTarifC'] = this.qteTarifC;
    data['PUTarifC'] = this.pUTarifC;
    data['QteTarifD'] = this.qteTarifD;
    data['PUTarifD'] = this.pUTarifD;
    data['QteAttente_en_h'] = this.qteAttenteEnH;
    data['PUAttente'] = this.pUAttente;
    data['RemiseTarif'] = this.remiseTarif;
    data['QteMinPerc'] = this.qteMinPerc;
    data['PUMinPerc'] = this.pUMinPerc;
    data['TotalMinPerc'] = this.totalMinPerc;
    data['MNTPriseCharge'] = this.mNTPriseCharge;
    data['MNTTransportSpeciaux'] = this.mNTTransportSpeciaux;
    data['MNTTransportAutres'] = this.mNTTransportAutres;
    data['QteMarcheLente_en_h'] = this.qteMarcheLenteEnH;
    data['PUMarcheLente'] = this.pUMarcheLente;
    return data;
  }
}
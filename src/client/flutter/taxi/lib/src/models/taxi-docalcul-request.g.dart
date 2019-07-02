// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxi-docalcul-request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return BaseResponse(
      json['Guid'] as String,
      json['Transport'] == null
          ? null
          : Transport.fromJson(json['Transport'] as Map<String, dynamic>),
      json['Param'] == null
          ? null
          : Param.fromJson(json['Param'] as Map<String, dynamic>));
}

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'Guid': instance.guid,
      'Transport': instance.transport,
      'Param': instance.param
    };

TaxiDoCalculRequest _$TaxiDoCalculRequestFromJson(Map<String, dynamic> json) {
  return TaxiDoCalculRequest(
      json['Guid'] as String,
      json['tranport'] == null
          ? null
          : Transport.fromJson(json['tranport'] as Map<String, dynamic>),
      json['param'] == null
          ? null
          : Param.fromJson(json['param'] as Map<String, dynamic>));
}

Map<String, dynamic> _$TaxiDoCalculRequestToJson(
        TaxiDoCalculRequest instance) =>
    <String, dynamic>{
      'Guid': instance.guid,
      'tranport': instance.tranport,
      'param': instance.param
    };

Transport _$TransportFromJson(Map<String, dynamic> json) {
  return Transport(
      json['DateHeureDepart'] as String,
      json['DateHeureArrivee'] as String,
      json['DateHeureArriveeAller'] as String,
      json['DateHeureDepartRetour'] as String,
      json['DateHeureDebutAttente'] as String,
      (json['MontantSupplement1'] as num)?.toDouble(),
      (json['MontantSupplement2'] as num)?.toDouble(),
      (json['MontantTotalSupplementNonRemboursable'] as num)?.toDouble(),
      (json['MontantPeageNonRemise'] as num)?.toDouble(),
      json['NombrePersonnes'] as int,
      json['DureeAttente'] as String,
      (json['MontantCompteur'] as num)?.toDouble(),
      json['CocheTarifA'] as bool,
      json['CocheTarifB'] as bool,
      json['CocheTarifC'] as bool,
      json['CocheTarifD'] as bool,
      json['Forfait'] as int,
      json['NombreKmsA'] as int,
      json['NombreKmsB'] as int,
      json['NombreKmsC'] as int,
      json['NombreKmsD'] as int,
      json['NombreKmsApprocheA'] as int,
      json['NombreKmsApprocheB'] as int,
      json['NombreKmsApprocheC'] as int,
      json['NombreKmsApprocheD'] as int,
      json['Hospitalisation'] as bool,
      (json['MontantPriseEnCharge'] as num)?.toDouble(),
      json['PrendreEnComptePriseEnCharge'] as bool,
      json['AllerRetour'] as String,
      json['AppliquerSuppplementTPMR'] as bool,
      (json['MontantCompteurApproche'] as num)?.toDouble(),
      json['NombreKmsCompteur'] as int,
      json['EntreeHospitalisation'] as bool,
      json['SortieHospitalisation'] as bool,
      (json['PCRemise'] as num)?.toDouble(),
      json['DemiCourse'] as bool,
      (json['MontantMarcheLente'] as num)?.toDouble(),
      (json['MontantSupplementSansAbattement'] as num)?.toDouble(),
      json['isFerie'] as bool,
      json['Telepeage'] as bool,
      json['LongueDistance'] as bool,
      json['Serie'] as bool,
      json['AccordPrealable'] as bool,
      json['IsNeigeVerglas'] as bool,
      json['NumeroPersonneSimultane'] as int,
      json['MoinsDe50PourCentDeTrajetEnCommun'] as bool,
      json['AttenteAssocie'] as String,
      json['NombreKmsAssocie'] as int,
      json['CalculAuTransport'] as bool,
      json['DetailTransportSimultane'] == null
          ? null
          : DetailSimultaneousTransport.fromJson(
              json['DetailTransportSimultane'] as Map<String, dynamic>),
      (json['listeLignesDetailTransportSimultane'] as List)
          ?.map((e) => e == null
              ? null
              : LigneDetailTransportSimultane.fromJson(
                  e as Map<String, dynamic>))
          ?.toList())
    ..DiviseurPeage = json['DiviseurPeage'] as int
    ..DiviseurPriseEnCharge = json['DiviseurPriseEnCharge'] as int
    ..PourcentagePeage = (json['PourcentagePeage'] as num)?.toDouble()
    ..PourcentagePriseEnCharge =
        (json['PourcentagePriseEnCharge'] as num)?.toDouble();
}

Map<String, dynamic> _$TransportToJson(Transport instance) => <String, dynamic>{
      'DateHeureDepart': instance.DateHeureDepart,
      'DateHeureArrivee': instance.DateHeureArrivee,
      'DateHeureArriveeAller': instance.DateHeureArriveeAller,
      'DateHeureDepartRetour': instance.DateHeureDepartRetour,
      'DateHeureDebutAttente': instance.DateHeureDebutAttente,
      'MontantSupplement1': instance.MontantSupplement1,
      'MontantSupplement2': instance.MontantSupplement2,
      'MontantTotalSupplementNonRemboursable':
          instance.MontantTotalSupplementNonRemboursable,
      'MontantPeageNonRemise': instance.MontantPeageNonRemise,
      'NombrePersonnes': instance.NombrePersonnes,
      'DureeAttente': instance.DureeAttente,
      'MontantCompteur': instance.MontantCompteur,
      'CocheTarifA': instance.CocheTarifA,
      'CocheTarifB': instance.CocheTarifB,
      'CocheTarifC': instance.CocheTarifC,
      'CocheTarifD': instance.CocheTarifD,
      'Forfait': instance.Forfait,
      'NombreKmsA': instance.NombreKmsA,
      'NombreKmsB': instance.NombreKmsB,
      'NombreKmsC': instance.NombreKmsC,
      'NombreKmsD': instance.NombreKmsD,
      'NombreKmsApprocheA': instance.NombreKmsApprocheA,
      'NombreKmsApprocheB': instance.NombreKmsApprocheB,
      'NombreKmsApprocheC': instance.NombreKmsApprocheC,
      'NombreKmsApprocheD': instance.NombreKmsApprocheD,
      'Hospitalisation': instance.Hospitalisation,
      'MontantPriseEnCharge': instance.MontantPriseEnCharge,
      'PrendreEnComptePriseEnCharge': instance.PrendreEnComptePriseEnCharge,
      'AllerRetour': instance.AllerRetour,
      'AppliquerSuppplementTPMR': instance.AppliquerSuppplementTPMR,
      'MontantCompteurApproche': instance.MontantCompteurApproche,
      'NombreKmsCompteur': instance.NombreKmsCompteur,
      'EntreeHospitalisation': instance.EntreeHospitalisation,
      'SortieHospitalisation': instance.SortieHospitalisation,
      'PCRemise': instance.PCRemise,
      'DemiCourse': instance.DemiCourse,
      'MontantMarcheLente': instance.MontantMarcheLente,
      'MontantSupplementSansAbattement':
          instance.MontantSupplementSansAbattement,
      'isFerie': instance.isFerie,
      'Telepeage': instance.Telepeage,
      'LongueDistance': instance.LongueDistance,
      'Serie': instance.Serie,
      'AccordPrealable': instance.AccordPrealable,
      'IsNeigeVerglas': instance.IsNeigeVerglas,
      'NumeroPersonneSimultane': instance.NumeroPersonneSimultane,
      'MoinsDe50PourCentDeTrajetEnCommun':
          instance.MoinsDe50PourCentDeTrajetEnCommun,
      'AttenteAssocie': instance.AttenteAssocie,
      'NombreKmsAssocie': instance.NombreKmsAssocie,
      'CalculAuTransport': instance.CalculAuTransport,
      'DetailTransportSimultane': instance.detailSimultaneousTransport,
      'listeLignesDetailTransportSimultane':
          instance.listeLignesDetailTransportSimultane,
      'DiviseurPeage': instance.DiviseurPeage,
      'DiviseurPriseEnCharge': instance.DiviseurPriseEnCharge,
      'PourcentagePeage': instance.PourcentagePeage,
      'PourcentagePriseEnCharge': instance.PourcentagePriseEnCharge
    };

LigneDetailTransportSimultane _$LigneDetailTransportSimultaneFromJson(
    Map<String, dynamic> json) {
  return LigneDetailTransportSimultane(
      json['NombreKmsA'] as int,
      json['NombreKmsB'] as int,
      json['NombreKmsC'] as int,
      json['NombreKmsD'] as int);
}

Map<String, dynamic> _$LigneDetailTransportSimultaneToJson(
        LigneDetailTransportSimultane instance) =>
    <String, dynamic>{
      'NombreKmsA': instance.NombreKmsA,
      'NombreKmsB': instance.NombreKmsB,
      'NombreKmsC': instance.NombreKmsC,
      'NombreKmsD': instance.NombreKmsD
    };

DetailSimultaneousTransport _$DetailSimultaneousTransportFromJson(
    Map<String, dynamic> json) {
  return DetailSimultaneousTransport(
      (json['ListeLignesDetailTransportSimultane'] as List)
          ?.map((e) => e == null
              ? null
              : LigneDetailTransportSimultane.fromJson(
                  e as Map<String, dynamic>))
          ?.toList(),
      json['DiviseurPeage'] as int,
      json['DiviseurPriseEnCharge'] as int,
      (json['PourcentagePeage'] as num)?.toDouble(),
      (json['PourcentagePriseEnCharge'] as num)?.toDouble());
}

Map<String, dynamic> _$DetailSimultaneousTransportToJson(
        DetailSimultaneousTransport instance) =>
    <String, dynamic>{
      'ListeLignesDetailTransportSimultane':
          instance.ListeLignesDetailTransportSimultane,
      'DiviseurPeage': instance.DiviseurPeage,
      'DiviseurPriseEnCharge': instance.DiviseurPriseEnCharge,
      'PourcentagePeage': instance.PourcentagePeage,
      'PourcentagePriseEnCharge': instance.PourcentagePriseEnCharge
    };

Param _$ParamFromJson(Map<String, dynamic> json) {
  return Param(
      (json['PCRemiseCD'] as num)?.toDouble(),
      (json['TarifMiniPerception'] as num)?.toDouble(),
      (json['PUTarifA'] as num)?.toDouble(),
      (json['PUTarifB'] as num)?.toDouble(),
      (json['PUTarifC'] as num)?.toDouble(),
      (json['PUTarifD'] as num)?.toDouble(),
      (json['MontantPriseEnCharge'] as num)?.toDouble(),
      (json['PUAttente'] as num)?.toDouble(),
      (json['PCAbattementSimultane2Personnes'] as num)?.toDouble(),
      (json['PCAbattementSimultane3Personnes'] as num)?.toDouble(),
      json['AppliquerApproche'] as bool,
      json['AuCompteur'] as bool,
      (json['PCRemiseIndexation'] as num)?.toDouble(),
      json['SimultaneeSurPeage'] as bool,
      json['AppliquerIndexation'] as bool,
      json['HeureDebutNuit'] as String,
      json['HeureFinNuit'] as String,
      json['PUAttenteNuit'] as String);
}

Map<String, dynamic> _$ParamToJson(Param instance) => <String, dynamic>{
      'PCRemiseCD': instance.PCRemiseCD,
      'TarifMiniPerception': instance.TarifMiniPerception,
      'PUTarifA': instance.PUTarifA,
      'PUTarifB': instance.PUTarifB,
      'PUTarifC': instance.PUTarifC,
      'PUTarifD': instance.PUTarifD,
      'MontantPriseEnCharge': instance.MontantPriseEnCharge,
      'PUAttente': instance.PUAttente,
      'PCAbattementSimultane2Personnes':
          instance.PCAbattementSimultane2Personnes,
      'PCAbattementSimultane3Personnes':
          instance.PCAbattementSimultane3Personnes,
      'AppliquerApproche': instance.AppliquerApproche,
      'AuCompteur': instance.AuCompteur,
      'PCRemiseIndexation': instance.PCRemiseIndexation,
      'SimultaneeSurPeage': instance.SimultaneeSurPeage,
      'AppliquerIndexation': instance.AppliquerIndexation,
      'HeureDebutNuit': instance.HeureDebutNuit,
      'HeureFinNuit': instance.HeureFinNuit,
      'PUAttenteNuit': instance.PUAttenteNuit
    };

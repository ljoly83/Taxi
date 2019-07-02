// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxi-docalcul-request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return BaseResponse(
      json['guidConvention'] as String,
      json['transport'] == null
          ? null
          : Transport.fromJson(json['transport'] as Map<String, dynamic>),
      json['detailTransportSimultane'] == null
          ? null
          : DetailSimultaneousTransport.fromJson(
              json['detailTransportSimultane'] as Map<String, dynamic>),
      json['param'] == null
          ? null
          : Param.fromJson(json['param'] as Map<String, dynamic>));
}

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'guidConvention': instance.guidConvention,
      'transport': instance.transport,
      'detailTransportSimultane': instance.detailSimultaneousTransport,
      'param': instance.param
    };

TaxiDoCalculRequest _$TaxiDoCalculRequestFromJson(Map<String, dynamic> json) {
  return TaxiDoCalculRequest(
      json['guidConvention'] as String,
      json['tranport'] == null
          ? null
          : Transport.fromJson(json['tranport'] as Map<String, dynamic>),
      json['detailSimultaneousTransport'] == null
          ? null
          : DetailSimultaneousTransport.fromJson(
              json['detailSimultaneousTransport'] as Map<String, dynamic>),
      json['param'] == null
          ? null
          : Param.fromJson(json['param'] as Map<String, dynamic>));
}

Map<String, dynamic> _$TaxiDoCalculRequestToJson(
        TaxiDoCalculRequest instance) =>
    <String, dynamic>{
      'guidConvention': instance.guidConvention,
      'tranport': instance.tranport,
      'detailSimultaneousTransport': instance.detailSimultaneousTransport,
      'param': instance.param
    };

Transport _$TransportFromJson(Map<String, dynamic> json) {
  return Transport(
      json['dateHeureDepart'] as String,
      json['dateHeureArrivee'] as String,
      json['dateHeureArriveeAller'] as String,
      json['dateHeureDepartRetour'] as String,
      json['dateHeureDebutAttente'] as String,
      (json['montantSupplement1'] as num)?.toDouble(),
      (json['montantSupplement2'] as num)?.toDouble(),
      (json['montantTotalSupplementNonRemboursable'] as num)?.toDouble(),
      (json['montantPeageNonRemise'] as num)?.toDouble(),
      json['nombrePersonnes'] as int,
      json['dureeAttente'] as String,
      (json['montantCompteur'] as num)?.toDouble(),
      json['cocheTarifA'] as bool,
      json['cocheTarifB'] as bool,
      json['cocheTarifC'] as bool,
      json['cocheTarifD'] as bool,
      json['forfait'] as int,
      json['nombreKmsA'] as int,
      json['nombreKmsB'] as int,
      json['nombreKmsC'] as int,
      json['nombreKmsD'] as int,
      json['nombreKmsApprocheA'] as int,
      json['nombreKmsApprocheB'] as int,
      json['nombreKmsApprocheC'] as int,
      json['nombreKmsApprocheD'] as int,
      json['hospitalisation'] as bool,
      (json['montantPriseEnCharge'] as num)?.toDouble(),
      json['prendreEnComptePriseEnCharge'] as bool,
      json['allerRetour'] as String,
      json['appliquerSuppplementTPMR'] as bool,
      (json['montantCompteurApproche'] as num)?.toDouble(),
      json['nombreKmsCompteur'] as int,
      json['entreeHospitalisation'] as bool,
      json['sortieHospitalisation'] as bool,
      (json['pCRemise'] as num)?.toDouble(),
      json['demiCourse'] as bool,
      (json['montantMarcheLente'] as num)?.toDouble(),
      (json['montantSupplementSansAbattement'] as num)?.toDouble(),
      json['isFerie'] as bool,
      json['telepeage'] as bool,
      json['longueDistance'] as bool,
      json['serie'] as bool,
      json['accordPrealable'] as bool,
      json['isNeigeVerglas'] as bool,
      json['numeroPersonneSimultane'] as int,
      json['moinsDe50PourCentDeTrajetEnCommun'] as bool,
      json['attenteAssocie'] as String,
      json['nombreKmsAssocie'] as int,
      json['calculAuTransport'] as bool);
}

Map<String, dynamic> _$TransportToJson(Transport instance) => <String, dynamic>{
      'dateHeureDepart': instance.dateHeureDepart,
      'dateHeureArrivee': instance.dateHeureArrivee,
      'dateHeureArriveeAller': instance.dateHeureArriveeAller,
      'dateHeureDepartRetour': instance.dateHeureDepartRetour,
      'dateHeureDebutAttente': instance.dateHeureDebutAttente,
      'montantSupplement1': instance.montantSupplement1,
      'montantSupplement2': instance.montantSupplement2,
      'montantTotalSupplementNonRemboursable':
          instance.montantTotalSupplementNonRemboursable,
      'montantPeageNonRemise': instance.montantPeageNonRemise,
      'nombrePersonnes': instance.nombrePersonnes,
      'dureeAttente': instance.dureeAttente,
      'montantCompteur': instance.montantCompteur,
      'cocheTarifA': instance.cocheTarifA,
      'cocheTarifB': instance.cocheTarifB,
      'cocheTarifC': instance.cocheTarifC,
      'cocheTarifD': instance.cocheTarifD,
      'forfait': instance.forfait,
      'nombreKmsA': instance.nombreKmsA,
      'nombreKmsB': instance.nombreKmsB,
      'nombreKmsC': instance.nombreKmsC,
      'nombreKmsD': instance.nombreKmsD,
      'nombreKmsApprocheA': instance.nombreKmsApprocheA,
      'nombreKmsApprocheB': instance.nombreKmsApprocheB,
      'nombreKmsApprocheC': instance.nombreKmsApprocheC,
      'nombreKmsApprocheD': instance.nombreKmsApprocheD,
      'hospitalisation': instance.hospitalisation,
      'montantPriseEnCharge': instance.montantPriseEnCharge,
      'prendreEnComptePriseEnCharge': instance.prendreEnComptePriseEnCharge,
      'allerRetour': instance.allerRetour,
      'appliquerSuppplementTPMR': instance.appliquerSuppplementTPMR,
      'montantCompteurApproche': instance.montantCompteurApproche,
      'nombreKmsCompteur': instance.nombreKmsCompteur,
      'entreeHospitalisation': instance.entreeHospitalisation,
      'sortieHospitalisation': instance.sortieHospitalisation,
      'pCRemise': instance.pCRemise,
      'demiCourse': instance.demiCourse,
      'montantMarcheLente': instance.montantMarcheLente,
      'montantSupplementSansAbattement':
          instance.montantSupplementSansAbattement,
      'isFerie': instance.isFerie,
      'telepeage': instance.telepeage,
      'longueDistance': instance.longueDistance,
      'serie': instance.serie,
      'accordPrealable': instance.accordPrealable,
      'isNeigeVerglas': instance.isNeigeVerglas,
      'numeroPersonneSimultane': instance.numeroPersonneSimultane,
      'moinsDe50PourCentDeTrajetEnCommun':
          instance.moinsDe50PourCentDeTrajetEnCommun,
      'attenteAssocie': instance.attenteAssocie,
      'nombreKmsAssocie': instance.nombreKmsAssocie,
      'calculAuTransport': instance.calculAuTransport
    };

DetailSimultaneousTransport _$DetailSimultaneousTransportFromJson(
    Map<String, dynamic> json) {
  return DetailSimultaneousTransport(
      json['diviseurPeage'] as int,
      json['diviseurPriseEnCharge'] as int,
      (json['pourcentagePeage'] as num)?.toDouble(),
      (json['pourcentagePriseEnCharge'] as num)?.toDouble())
    ..listeLignesDetailTransportSimultane = (json['list'] as List)
        ?.map((e) => e == null
            ? null
            : DetailSimultaneousTransport.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DetailSimultaneousTransportToJson(
        DetailSimultaneousTransport instance) =>
    <String, dynamic>{
      'list': instance.listeLignesDetailTransportSimultane,
      'diviseurPeage': instance.diviseurPeage,
      'diviseurPriseEnCharge': instance.diviseurPriseEnCharge,
      'pourcentagePeage': instance.pourcentagePeage,
      'pourcentagePriseEnCharge': instance.pourcentagePriseEnCharge
    };

Param _$ParamFromJson(Map<String, dynamic> json) {
  return Param(json['heureDebutNuit'] as String, json['heureFinNuit'] as String,
      json['pUAttenteNuit'] as String);
}

Map<String, dynamic> _$ParamToJson(Param instance) => <String, dynamic>{
      'heureDebutNuit': instance.heureDebutNuit,
      'heureFinNuit': instance.heureFinNuit,
      'pUAttenteNuit': instance.pUAttenteNuit
    };

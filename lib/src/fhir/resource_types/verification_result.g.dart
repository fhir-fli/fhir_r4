// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerificationResult _$VerificationResultFromJson(Map<String, dynamic> json) =>
    VerificationResult(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      meta: json['meta'] == null
          ? null
          : FhirMeta.fromJson(json['meta'] as Map<String, dynamic>),
      implicitRules: json['implicitRules'] == null
          ? null
          : FhirUri.fromJson(json['implicitRules']),
      implicitRulesElement: json['implicitRulesElement'] == null
          ? null
          : Element.fromJson(
              json['implicitRulesElement'] as Map<String, dynamic>),
      language:
          json['language'] == null ? null : FhirCode.fromJson(json['language']),
      languageElement: json['languageElement'] == null
          ? null
          : Element.fromJson(json['languageElement'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : Narrative.fromJson(json['text'] as Map<String, dynamic>),
      contained: (json['contained'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      target: (json['target'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      targetLocation: (json['targetLocation'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      targetLocationElement: (json['_targetLocation'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      need: json['need'] == null
          ? null
          : CodeableConcept.fromJson(json['need'] as Map<String, dynamic>),
      status: FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      statusDate: json['statusDate'] == null
          ? null
          : FhirDateTime.fromJson(json['statusDate'] as String),
      statusDateElement: json['_statusDate'] == null
          ? null
          : Element.fromJson(json['_statusDate'] as Map<String, dynamic>),
      validationType: json['validationType'] == null
          ? null
          : CodeableConcept.fromJson(
              json['validationType'] as Map<String, dynamic>),
      validationProcess: (json['validationProcess'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      frequency: json['frequency'] == null
          ? null
          : Timing.fromJson(json['frequency'] as Map<String, dynamic>),
      lastPerformed: json['lastPerformed'] == null
          ? null
          : FhirDateTime.fromJson(json['lastPerformed'] as String),
      lastPerformedElement: json['_lastPerformed'] == null
          ? null
          : Element.fromJson(json['_lastPerformed'] as Map<String, dynamic>),
      nextScheduled: json['nextScheduled'] == null
          ? null
          : FhirDate.fromJson(json['nextScheduled'] as String),
      nextScheduledElement: json['_nextScheduled'] == null
          ? null
          : Element.fromJson(json['_nextScheduled'] as Map<String, dynamic>),
      failureAction: json['failureAction'] == null
          ? null
          : CodeableConcept.fromJson(
              json['failureAction'] as Map<String, dynamic>),
      primarySource: (json['primarySource'] as List<dynamic>?)
          ?.map((e) => VerificationResultPrimarySource.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      attestation: json['attestation'] == null
          ? null
          : VerificationResultAttestation.fromJson(
              json['attestation'] as Map<String, dynamic>),
      validator: (json['validator'] as List<dynamic>?)
          ?.map((e) =>
              VerificationResultValidator.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$VerificationResultToJson(VerificationResult instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('meta', instance.meta?.toJson());
  writeNotNull('implicitRules', instance.implicitRules?.toJson());
  writeNotNull('implicitRulesElement', instance.implicitRulesElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  writeNotNull('languageElement', instance.languageElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull(
      'contained', instance.contained?.map((e) => e.toJson()).toList());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('target', instance.target?.map((e) => e.toJson()).toList());
  writeNotNull('targetLocation',
      instance.targetLocation?.map((e) => e.toJson()).toList());
  writeNotNull('_targetLocation',
      instance.targetLocationElement?.map((e) => e.toJson()).toList());
  writeNotNull('need', instance.need?.toJson());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('statusDate', instance.statusDate?.toJson());
  writeNotNull('_statusDate', instance.statusDateElement?.toJson());
  writeNotNull('validationType', instance.validationType?.toJson());
  writeNotNull('validationProcess',
      instance.validationProcess?.map((e) => e.toJson()).toList());
  writeNotNull('frequency', instance.frequency?.toJson());
  writeNotNull('lastPerformed', instance.lastPerformed?.toJson());
  writeNotNull('_lastPerformed', instance.lastPerformedElement?.toJson());
  writeNotNull('nextScheduled', instance.nextScheduled?.toJson());
  writeNotNull('_nextScheduled', instance.nextScheduledElement?.toJson());
  writeNotNull('failureAction', instance.failureAction?.toJson());
  writeNotNull(
      'primarySource', instance.primarySource?.map((e) => e.toJson()).toList());
  writeNotNull('attestation', instance.attestation?.toJson());
  writeNotNull(
      'validator', instance.validator?.map((e) => e.toJson()).toList());
  return val;
}

VerificationResultPrimarySource _$VerificationResultPrimarySourceFromJson(
        Map<String, dynamic> json) =>
    VerificationResultPrimarySource(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      who: json['who'] == null
          ? null
          : Reference.fromJson(json['who'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      communicationMethod: (json['communicationMethod'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      validationStatus: json['validationStatus'] == null
          ? null
          : CodeableConcept.fromJson(
              json['validationStatus'] as Map<String, dynamic>),
      validationDate: json['validationDate'] == null
          ? null
          : FhirDateTime.fromJson(json['validationDate'] as String),
      validationDateElement: json['_validationDate'] == null
          ? null
          : Element.fromJson(json['_validationDate'] as Map<String, dynamic>),
      canPushUpdates: json['canPushUpdates'] == null
          ? null
          : CodeableConcept.fromJson(
              json['canPushUpdates'] as Map<String, dynamic>),
      pushTypeAvailable: (json['pushTypeAvailable'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$VerificationResultPrimarySourceToJson(
    VerificationResultPrimarySource instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('who', instance.who?.toJson());
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('communicationMethod',
      instance.communicationMethod?.map((e) => e.toJson()).toList());
  writeNotNull('validationStatus', instance.validationStatus?.toJson());
  writeNotNull('validationDate', instance.validationDate?.toJson());
  writeNotNull('_validationDate', instance.validationDateElement?.toJson());
  writeNotNull('canPushUpdates', instance.canPushUpdates?.toJson());
  writeNotNull('pushTypeAvailable',
      instance.pushTypeAvailable?.map((e) => e.toJson()).toList());
  return val;
}

VerificationResultAttestation _$VerificationResultAttestationFromJson(
        Map<String, dynamic> json) =>
    VerificationResultAttestation(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      who: json['who'] == null
          ? null
          : Reference.fromJson(json['who'] as Map<String, dynamic>),
      onBehalfOf: json['onBehalfOf'] == null
          ? null
          : Reference.fromJson(json['onBehalfOf'] as Map<String, dynamic>),
      communicationMethod: json['communicationMethod'] == null
          ? null
          : CodeableConcept.fromJson(
              json['communicationMethod'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirDate.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      sourceIdentityCertificate: json['sourceIdentityCertificate'] == null
          ? null
          : FhirString.fromJson(json['sourceIdentityCertificate']),
      sourceIdentityCertificateElement:
          json['_sourceIdentityCertificate'] == null
              ? null
              : Element.fromJson(
                  json['_sourceIdentityCertificate'] as Map<String, dynamic>),
      proxyIdentityCertificate: json['proxyIdentityCertificate'] == null
          ? null
          : FhirString.fromJson(json['proxyIdentityCertificate']),
      proxyIdentityCertificateElement: json['_proxyIdentityCertificate'] == null
          ? null
          : Element.fromJson(
              json['_proxyIdentityCertificate'] as Map<String, dynamic>),
      proxySignature: json['proxySignature'] == null
          ? null
          : Signature.fromJson(json['proxySignature'] as Map<String, dynamic>),
      sourceSignature: json['sourceSignature'] == null
          ? null
          : Signature.fromJson(json['sourceSignature'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$VerificationResultAttestationToJson(
    VerificationResultAttestation instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  writeNotNull('who', instance.who?.toJson());
  writeNotNull('onBehalfOf', instance.onBehalfOf?.toJson());
  writeNotNull('communicationMethod', instance.communicationMethod?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('sourceIdentityCertificate',
      instance.sourceIdentityCertificate?.toJson());
  writeNotNull('_sourceIdentityCertificate',
      instance.sourceIdentityCertificateElement?.toJson());
  writeNotNull(
      'proxyIdentityCertificate', instance.proxyIdentityCertificate?.toJson());
  writeNotNull('_proxyIdentityCertificate',
      instance.proxyIdentityCertificateElement?.toJson());
  writeNotNull('proxySignature', instance.proxySignature?.toJson());
  writeNotNull('sourceSignature', instance.sourceSignature?.toJson());
  return val;
}

VerificationResultValidator _$VerificationResultValidatorFromJson(
        Map<String, dynamic> json) =>
    VerificationResultValidator(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      organization:
          Reference.fromJson(json['organization'] as Map<String, dynamic>),
      identityCertificate: json['identityCertificate'] == null
          ? null
          : FhirString.fromJson(json['identityCertificate']),
      identityCertificateElement: json['_identityCertificate'] == null
          ? null
          : Element.fromJson(
              json['_identityCertificate'] as Map<String, dynamic>),
      attestationSignature: json['attestationSignature'] == null
          ? null
          : Signature.fromJson(
              json['attestationSignature'] as Map<String, dynamic>),
      userData: json['userData'] as Map<String, dynamic>? ??
          const <String, Object?>{},
      formatCommentsPre: (json['formatCommentsPre'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      formatCommentsPost: (json['formatCommentsPost'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      annotations: json['annotations'] as List<dynamic>? ?? const <dynamic>[],
      children: (json['children'] as List<dynamic>?)
              ?.map(FhirBase.fromJson)
              .toList() ??
          const <FhirBase>[],
      namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, FhirBase.fromJson(e)),
          ) ??
          const <String, FhirBase>{},
    );

Map<String, dynamic> _$VerificationResultValidatorToJson(
    VerificationResultValidator instance) {
  final val = <String, dynamic>{
    'userData': instance.userData,
    'formatCommentsPre': instance.formatCommentsPre,
    'formatCommentsPost': instance.formatCommentsPost,
    'annotations': instance.annotations,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'namedChildren':
        instance.namedChildren.map((k, e) => MapEntry(k, e.toJson())),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull(
      'extension_', instance.extension_?.map((e) => e.toJson()).toList());
  writeNotNull('modifierExtension',
      instance.modifierExtension?.map((e) => e.toJson()).toList());
  val['organization'] = instance.organization.toJson();
  writeNotNull('identityCertificate', instance.identityCertificate?.toJson());
  writeNotNull(
      '_identityCertificate', instance.identityCertificateElement?.toJson());
  writeNotNull('attestationSignature', instance.attestationSignature?.toJson());
  return val;
}

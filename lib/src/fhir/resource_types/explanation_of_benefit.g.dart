// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explanation_of_benefit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExplanationOfBenefit _$ExplanationOfBenefitFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefit(
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
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      subType: json['subType'] == null
          ? null
          : CodeableConcept.fromJson(json['subType'] as Map<String, dynamic>),
      use: FhirCode.fromJson(json['use']),
      useElement: json['_use'] == null
          ? null
          : Element.fromJson(json['_use'] as Map<String, dynamic>),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      billablePeriod: json['billablePeriod'] == null
          ? null
          : Period.fromJson(json['billablePeriod'] as Map<String, dynamic>),
      created: FhirDateTime.fromJson(json['created'] as String),
      createdElement: json['_created'] == null
          ? null
          : Element.fromJson(json['_created'] as Map<String, dynamic>),
      enterer: json['enterer'] == null
          ? null
          : Reference.fromJson(json['enterer'] as Map<String, dynamic>),
      insurer: Reference.fromJson(json['insurer'] as Map<String, dynamic>),
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      priority: json['priority'] == null
          ? null
          : CodeableConcept.fromJson(json['priority'] as Map<String, dynamic>),
      fundsReserveRequested: json['fundsReserveRequested'] == null
          ? null
          : CodeableConcept.fromJson(
              json['fundsReserveRequested'] as Map<String, dynamic>),
      fundsReserve: json['fundsReserve'] == null
          ? null
          : CodeableConcept.fromJson(
              json['fundsReserve'] as Map<String, dynamic>),
      related: (json['related'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitRelated.fromJson(e as Map<String, dynamic>))
          .toList(),
      prescription: json['prescription'] == null
          ? null
          : Reference.fromJson(json['prescription'] as Map<String, dynamic>),
      originalPrescription: json['originalPrescription'] == null
          ? null
          : Reference.fromJson(
              json['originalPrescription'] as Map<String, dynamic>),
      payee: json['payee'] == null
          ? null
          : ExplanationOfBenefitPayee.fromJson(
              json['payee'] as Map<String, dynamic>),
      referral: json['referral'] == null
          ? null
          : Reference.fromJson(json['referral'] as Map<String, dynamic>),
      facility: json['facility'] == null
          ? null
          : Reference.fromJson(json['facility'] as Map<String, dynamic>),
      claim: json['claim'] == null
          ? null
          : Reference.fromJson(json['claim'] as Map<String, dynamic>),
      claimResponse: json['claimResponse'] == null
          ? null
          : Reference.fromJson(json['claimResponse'] as Map<String, dynamic>),
      outcome: FhirCode.fromJson(json['outcome']),
      outcomeElement: json['_outcome'] == null
          ? null
          : Element.fromJson(json['_outcome'] as Map<String, dynamic>),
      disposition: json['disposition'] == null
          ? null
          : FhirString.fromJson(json['disposition']),
      dispositionElement: json['_disposition'] == null
          ? null
          : Element.fromJson(json['_disposition'] as Map<String, dynamic>),
      preAuthRef: (json['preAuthRef'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      preAuthRefElement: (json['_preAuthRef'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      preAuthRefPeriod: (json['preAuthRefPeriod'] as List<dynamic>?)
          ?.map((e) => Period.fromJson(e as Map<String, dynamic>))
          .toList(),
      careTeam: (json['careTeam'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitCareTeam.fromJson(e as Map<String, dynamic>))
          .toList(),
      supportingInfo: (json['supportingInfo'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitSupportingInfo.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      diagnosis: (json['diagnosis'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitDiagnosis.fromJson(e as Map<String, dynamic>))
          .toList(),
      procedure: (json['procedure'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitProcedure.fromJson(e as Map<String, dynamic>))
          .toList(),
      precedence: json['precedence'] == null
          ? null
          : FhirPositiveInt.fromJson(json['precedence']),
      precedenceElement: json['_precedence'] == null
          ? null
          : Element.fromJson(json['_precedence'] as Map<String, dynamic>),
      insurance: (json['insurance'] as List<dynamic>)
          .map((e) =>
              ExplanationOfBenefitInsurance.fromJson(e as Map<String, dynamic>))
          .toList(),
      accident: json['accident'] == null
          ? null
          : ExplanationOfBenefitAccident.fromJson(
              json['accident'] as Map<String, dynamic>),
      item: (json['item'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      addItem: (json['addItem'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitAddItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitTotal.fromJson(e as Map<String, dynamic>))
          .toList(),
      payment: json['payment'] == null
          ? null
          : ExplanationOfBenefitPayment.fromJson(
              json['payment'] as Map<String, dynamic>),
      formCode: json['formCode'] == null
          ? null
          : CodeableConcept.fromJson(json['formCode'] as Map<String, dynamic>),
      form: json['form'] == null
          ? null
          : Attachment.fromJson(json['form'] as Map<String, dynamic>),
      processNote: (json['processNote'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitProcessNote.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      benefitPeriod: json['benefitPeriod'] == null
          ? null
          : Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>),
      benefitBalance: (json['benefitBalance'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitBenefitBalance.fromJson(
              e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitToJson(
    ExplanationOfBenefit instance) {
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
  writeNotNull(
      'identifier', instance.identifier?.map((e) => e.toJson()).toList());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  val['type'] = instance.type.toJson();
  writeNotNull('subType', instance.subType?.toJson());
  val['use'] = instance.use.toJson();
  writeNotNull('_use', instance.useElement?.toJson());
  val['patient'] = instance.patient.toJson();
  writeNotNull('billablePeriod', instance.billablePeriod?.toJson());
  val['created'] = instance.created.toJson();
  writeNotNull('_created', instance.createdElement?.toJson());
  writeNotNull('enterer', instance.enterer?.toJson());
  val['insurer'] = instance.insurer.toJson();
  val['provider'] = instance.provider.toJson();
  writeNotNull('priority', instance.priority?.toJson());
  writeNotNull(
      'fundsReserveRequested', instance.fundsReserveRequested?.toJson());
  writeNotNull('fundsReserve', instance.fundsReserve?.toJson());
  writeNotNull('related', instance.related?.map((e) => e.toJson()).toList());
  writeNotNull('prescription', instance.prescription?.toJson());
  writeNotNull('originalPrescription', instance.originalPrescription?.toJson());
  writeNotNull('payee', instance.payee?.toJson());
  writeNotNull('referral', instance.referral?.toJson());
  writeNotNull('facility', instance.facility?.toJson());
  writeNotNull('claim', instance.claim?.toJson());
  writeNotNull('claimResponse', instance.claimResponse?.toJson());
  val['outcome'] = instance.outcome.toJson();
  writeNotNull('_outcome', instance.outcomeElement?.toJson());
  writeNotNull('disposition', instance.disposition?.toJson());
  writeNotNull('_disposition', instance.dispositionElement?.toJson());
  writeNotNull(
      'preAuthRef', instance.preAuthRef?.map((e) => e.toJson()).toList());
  writeNotNull('_preAuthRef',
      instance.preAuthRefElement?.map((e) => e.toJson()).toList());
  writeNotNull('preAuthRefPeriod',
      instance.preAuthRefPeriod?.map((e) => e.toJson()).toList());
  writeNotNull('careTeam', instance.careTeam?.map((e) => e.toJson()).toList());
  writeNotNull('supportingInfo',
      instance.supportingInfo?.map((e) => e.toJson()).toList());
  writeNotNull(
      'diagnosis', instance.diagnosis?.map((e) => e.toJson()).toList());
  writeNotNull(
      'procedure', instance.procedure?.map((e) => e.toJson()).toList());
  writeNotNull('precedence', instance.precedence?.toJson());
  writeNotNull('_precedence', instance.precedenceElement?.toJson());
  val['insurance'] = instance.insurance.map((e) => e.toJson()).toList();
  writeNotNull('accident', instance.accident?.toJson());
  writeNotNull('item', instance.item?.map((e) => e.toJson()).toList());
  writeNotNull('addItem', instance.addItem?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull('total', instance.total?.map((e) => e.toJson()).toList());
  writeNotNull('payment', instance.payment?.toJson());
  writeNotNull('formCode', instance.formCode?.toJson());
  writeNotNull('form', instance.form?.toJson());
  writeNotNull(
      'processNote', instance.processNote?.map((e) => e.toJson()).toList());
  writeNotNull('benefitPeriod', instance.benefitPeriod?.toJson());
  writeNotNull('benefitBalance',
      instance.benefitBalance?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitRelated _$ExplanationOfBenefitRelatedFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitRelated(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      claim: json['claim'] == null
          ? null
          : Reference.fromJson(json['claim'] as Map<String, dynamic>),
      relationship: json['relationship'] == null
          ? null
          : CodeableConcept.fromJson(
              json['relationship'] as Map<String, dynamic>),
      reference: json['reference'] == null
          ? null
          : Identifier.fromJson(json['reference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitRelatedToJson(
    ExplanationOfBenefitRelated instance) {
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
  writeNotNull('claim', instance.claim?.toJson());
  writeNotNull('relationship', instance.relationship?.toJson());
  writeNotNull('reference', instance.reference?.toJson());
  return val;
}

ExplanationOfBenefitPayee _$ExplanationOfBenefitPayeeFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitPayee(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      party: json['party'] == null
          ? null
          : Reference.fromJson(json['party'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitPayeeToJson(
    ExplanationOfBenefitPayee instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('party', instance.party?.toJson());
  return val;
}

ExplanationOfBenefitCareTeam _$ExplanationOfBenefitCareTeamFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitCareTeam(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      provider: Reference.fromJson(json['provider'] as Map<String, dynamic>),
      responsible: json['responsible'] == null
          ? null
          : FhirBoolean.fromJson(json['responsible']),
      responsibleElement: json['_responsible'] == null
          ? null
          : Element.fromJson(json['_responsible'] as Map<String, dynamic>),
      role: json['role'] == null
          ? null
          : CodeableConcept.fromJson(json['role'] as Map<String, dynamic>),
      qualification: json['qualification'] == null
          ? null
          : CodeableConcept.fromJson(
              json['qualification'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitCareTeamToJson(
    ExplanationOfBenefitCareTeam instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  val['provider'] = instance.provider.toJson();
  writeNotNull('responsible', instance.responsible?.toJson());
  writeNotNull('_responsible', instance.responsibleElement?.toJson());
  writeNotNull('role', instance.role?.toJson());
  writeNotNull('qualification', instance.qualification?.toJson());
  return val;
}

ExplanationOfBenefitSupportingInfo _$ExplanationOfBenefitSupportingInfoFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitSupportingInfo(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      timingDate: json['timingDate'] == null
          ? null
          : FhirDate.fromJson(json['timingDate'] as String),
      timingDateElement: json['_timingDate'] == null
          ? null
          : Element.fromJson(json['_timingDate'] as Map<String, dynamic>),
      timingPeriod: json['timingPeriod'] == null
          ? null
          : Period.fromJson(json['timingPeriod'] as Map<String, dynamic>),
      valueBoolean: json['valueBoolean'] == null
          ? null
          : FhirBoolean.fromJson(json['valueBoolean']),
      valueBooleanElement: json['_valueBoolean'] == null
          ? null
          : Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>),
      valueString: json['valueString'] == null
          ? null
          : FhirString.fromJson(json['valueString']),
      valueStringElement: json['_valueString'] == null
          ? null
          : Element.fromJson(json['_valueString'] as Map<String, dynamic>),
      valueQuantity: json['valueQuantity'] == null
          ? null
          : Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
      valueAttachment: json['valueAttachment'] == null
          ? null
          : Attachment.fromJson(
              json['valueAttachment'] as Map<String, dynamic>),
      valueReference: json['valueReference'] == null
          ? null
          : Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
      reason: json['reason'] == null
          ? null
          : Coding.fromJson(json['reason'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitSupportingInfoToJson(
    ExplanationOfBenefitSupportingInfo instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  val['category'] = instance.category.toJson();
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('timingDate', instance.timingDate?.toJson());
  writeNotNull('_timingDate', instance.timingDateElement?.toJson());
  writeNotNull('timingPeriod', instance.timingPeriod?.toJson());
  writeNotNull('valueBoolean', instance.valueBoolean?.toJson());
  writeNotNull('_valueBoolean', instance.valueBooleanElement?.toJson());
  writeNotNull('valueString', instance.valueString?.toJson());
  writeNotNull('_valueString', instance.valueStringElement?.toJson());
  writeNotNull('valueQuantity', instance.valueQuantity?.toJson());
  writeNotNull('valueAttachment', instance.valueAttachment?.toJson());
  writeNotNull('valueReference', instance.valueReference?.toJson());
  writeNotNull('reason', instance.reason?.toJson());
  return val;
}

ExplanationOfBenefitDiagnosis _$ExplanationOfBenefitDiagnosisFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitDiagnosis(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      diagnosisCodeableConcept: CodeableConcept.fromJson(
          json['diagnosisCodeableConcept'] as Map<String, dynamic>),
      diagnosisReference: Reference.fromJson(
          json['diagnosisReference'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      onAdmission: json['onAdmission'] == null
          ? null
          : CodeableConcept.fromJson(
              json['onAdmission'] as Map<String, dynamic>),
      packageCode: json['packageCode'] == null
          ? null
          : CodeableConcept.fromJson(
              json['packageCode'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitDiagnosisToJson(
    ExplanationOfBenefitDiagnosis instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  val['diagnosisCodeableConcept'] = instance.diagnosisCodeableConcept.toJson();
  val['diagnosisReference'] = instance.diagnosisReference.toJson();
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('onAdmission', instance.onAdmission?.toJson());
  writeNotNull('packageCode', instance.packageCode?.toJson());
  return val;
}

ExplanationOfBenefitProcedure _$ExplanationOfBenefitProcedureFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitProcedure(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] == null
          ? null
          : FhirDateTime.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      procedureCodeableConcept: CodeableConcept.fromJson(
          json['procedureCodeableConcept'] as Map<String, dynamic>),
      procedureReference: Reference.fromJson(
          json['procedureReference'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitProcedureToJson(
    ExplanationOfBenefitProcedure instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('type', instance.type?.map((e) => e.toJson()).toList());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  val['procedureCodeableConcept'] = instance.procedureCodeableConcept.toJson();
  val['procedureReference'] = instance.procedureReference.toJson();
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitInsurance _$ExplanationOfBenefitInsuranceFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitInsurance(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      focal: FhirBoolean.fromJson(json['focal']),
      focalElement: json['_focal'] == null
          ? null
          : Element.fromJson(json['_focal'] as Map<String, dynamic>),
      coverage: Reference.fromJson(json['coverage'] as Map<String, dynamic>),
      preAuthRef: (json['preAuthRef'] as List<dynamic>?)
          ?.map(FhirString.fromJson)
          .toList(),
      preAuthRefElement: (json['_preAuthRef'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitInsuranceToJson(
    ExplanationOfBenefitInsurance instance) {
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
  val['focal'] = instance.focal.toJson();
  writeNotNull('_focal', instance.focalElement?.toJson());
  val['coverage'] = instance.coverage.toJson();
  writeNotNull(
      'preAuthRef', instance.preAuthRef?.map((e) => e.toJson()).toList());
  writeNotNull('_preAuthRef',
      instance.preAuthRefElement?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitAccident _$ExplanationOfBenefitAccidentFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitAccident(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      date: json['date'] == null
          ? null
          : FhirDate.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      locationAddress: json['locationAddress'] == null
          ? null
          : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
      locationReference: json['locationReference'] == null
          ? null
          : Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitAccidentToJson(
    ExplanationOfBenefitAccident instance) {
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
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  return val;
}

ExplanationOfBenefitItem _$ExplanationOfBenefitItemFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitItem(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      careTeamSequence: (json['careTeamSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      careTeamSequenceElement: (json['_careTeamSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      diagnosisSequence: (json['diagnosisSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      diagnosisSequenceElement: (json['_diagnosisSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      procedureSequence: (json['procedureSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      procedureSequenceElement: (json['_procedureSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      informationSequence: (json['informationSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      informationSequenceElement:
          (json['_informationSequence'] as List<dynamic>?)
              ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
              .toList(),
      revenue: json['revenue'] == null
          ? null
          : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      servicedDate: json['servicedDate'] == null
          ? null
          : FhirDate.fromJson(json['servicedDate'] as String),
      servicedDateElement: json['_servicedDate'] == null
          ? null
          : Element.fromJson(json['_servicedDate'] as Map<String, dynamic>),
      servicedPeriod: json['servicedPeriod'] == null
          ? null
          : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
      locationCodeableConcept: json['locationCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['locationCodeableConcept'] as Map<String, dynamic>),
      locationAddress: json['locationAddress'] == null
          ? null
          : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
      locationReference: json['locationReference'] == null
          ? null
          : Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      bodySite: json['bodySite'] == null
          ? null
          : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      encounter: (json['encounter'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitItemToJson(
    ExplanationOfBenefitItem instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('careTeamSequence',
      instance.careTeamSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_careTeamSequence',
      instance.careTeamSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('diagnosisSequence',
      instance.diagnosisSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_diagnosisSequence',
      instance.diagnosisSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('procedureSequence',
      instance.procedureSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_procedureSequence',
      instance.procedureSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('informationSequence',
      instance.informationSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_informationSequence',
      instance.informationSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('servicedDate', instance.servicedDate?.toJson());
  writeNotNull('_servicedDate', instance.servicedDateElement?.toJson());
  writeNotNull('servicedPeriod', instance.servicedPeriod?.toJson());
  writeNotNull(
      'locationCodeableConcept', instance.locationCodeableConcept?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('subSite', instance.subSite?.map((e) => e.toJson()).toList());
  writeNotNull(
      'encounter', instance.encounter?.map((e) => e.toJson()).toList());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull('detail', instance.detail?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitAdjudication _$ExplanationOfBenefitAdjudicationFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitAdjudication(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      reason: json['reason'] == null
          ? null
          : CodeableConcept.fromJson(json['reason'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : Money.fromJson(json['amount'] as Map<String, dynamic>),
      value: json['value'] == null ? null : FhirDecimal.fromJson(json['value']),
      valueElement: json['_value'] == null
          ? null
          : Element.fromJson(json['_value'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitAdjudicationToJson(
    ExplanationOfBenefitAdjudication instance) {
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
  val['category'] = instance.category.toJson();
  writeNotNull('reason', instance.reason?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('value', instance.value?.toJson());
  writeNotNull('_value', instance.valueElement?.toJson());
  return val;
}

ExplanationOfBenefitDetail _$ExplanationOfBenefitDetailFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitDetail(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      revenue: json['revenue'] == null
          ? null
          : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitSubDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitDetailToJson(
    ExplanationOfBenefitDetail instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull(
      'subDetail', instance.subDetail?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitSubDetail _$ExplanationOfBenefitSubDetailFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitSubDetail(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      sequence: FhirPositiveInt.fromJson(json['sequence']),
      sequenceElement: json['_sequence'] == null
          ? null
          : Element.fromJson(json['_sequence'] as Map<String, dynamic>),
      revenue: json['revenue'] == null
          ? null
          : CodeableConcept.fromJson(json['revenue'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      udi: (json['udi'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitSubDetailToJson(
    ExplanationOfBenefitSubDetail instance) {
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
  val['sequence'] = instance.sequence.toJson();
  writeNotNull('_sequence', instance.sequenceElement?.toJson());
  writeNotNull('revenue', instance.revenue?.toJson());
  writeNotNull('category', instance.category?.toJson());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('udi', instance.udi?.map((e) => e.toJson()).toList());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitAddItem _$ExplanationOfBenefitAddItemFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitAddItem(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemSequence: (json['itemSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      itemSequenceElement: (json['_itemSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      detailSequence: (json['detailSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      detailSequenceElement: (json['_detailSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      subDetailSequence: (json['subDetailSequence'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      subDetailSequenceElement: (json['_subDetailSequence'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      provider: (json['provider'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      programCode: (json['programCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      servicedDate: json['servicedDate'] == null
          ? null
          : FhirDate.fromJson(json['servicedDate'] as String),
      servicedDateElement: json['_servicedDate'] == null
          ? null
          : Element.fromJson(json['_servicedDate'] as Map<String, dynamic>),
      servicedPeriod: json['servicedPeriod'] == null
          ? null
          : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
      locationCodeableConcept: json['locationCodeableConcept'] == null
          ? null
          : CodeableConcept.fromJson(
              json['locationCodeableConcept'] as Map<String, dynamic>),
      locationAddress: json['locationAddress'] == null
          ? null
          : Address.fromJson(json['locationAddress'] as Map<String, dynamic>),
      locationReference: json['locationReference'] == null
          ? null
          : Reference.fromJson(
              json['locationReference'] as Map<String, dynamic>),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      bodySite: json['bodySite'] == null
          ? null
          : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
      subSite: (json['subSite'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitAddItemToJson(
    ExplanationOfBenefitAddItem instance) {
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
  writeNotNull(
      'itemSequence', instance.itemSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_itemSequence',
      instance.itemSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('detailSequence',
      instance.detailSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_detailSequence',
      instance.detailSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('subDetailSequence',
      instance.subDetailSequence?.map((e) => e.toJson()).toList());
  writeNotNull('_subDetailSequence',
      instance.subDetailSequenceElement?.map((e) => e.toJson()).toList());
  writeNotNull('provider', instance.provider?.map((e) => e.toJson()).toList());
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull(
      'programCode', instance.programCode?.map((e) => e.toJson()).toList());
  writeNotNull('servicedDate', instance.servicedDate?.toJson());
  writeNotNull('_servicedDate', instance.servicedDateElement?.toJson());
  writeNotNull('servicedPeriod', instance.servicedPeriod?.toJson());
  writeNotNull(
      'locationCodeableConcept', instance.locationCodeableConcept?.toJson());
  writeNotNull('locationAddress', instance.locationAddress?.toJson());
  writeNotNull('locationReference', instance.locationReference?.toJson());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('subSite', instance.subSite?.map((e) => e.toJson()).toList());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull('detail', instance.detail?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitDetail1 _$ExplanationOfBenefitDetail1FromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitDetail1(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      subDetail: (json['subDetail'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitSubDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitDetail1ToJson(
    ExplanationOfBenefitDetail1 instance) {
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
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  writeNotNull(
      'subDetail', instance.subDetail?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitSubDetail1 _$ExplanationOfBenefitSubDetail1FromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitSubDetail1(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      productOrService: CodeableConcept.fromJson(
          json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] == null
          ? null
          : Quantity.fromJson(json['quantity'] as Map<String, dynamic>),
      unitPrice: json['unitPrice'] == null
          ? null
          : Money.fromJson(json['unitPrice'] as Map<String, dynamic>),
      factor:
          json['factor'] == null ? null : FhirDecimal.fromJson(json['factor']),
      factorElement: json['_factor'] == null
          ? null
          : Element.fromJson(json['_factor'] as Map<String, dynamic>),
      net: json['net'] == null
          ? null
          : Money.fromJson(json['net'] as Map<String, dynamic>),
      noteNumber: (json['noteNumber'] as List<dynamic>?)
          ?.map(FhirPositiveInt.fromJson)
          .toList(),
      noteNumberElement: (json['_noteNumber'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      adjudication: (json['adjudication'] as List<dynamic>?)
          ?.map((e) => ExplanationOfBenefitAdjudication.fromJson(
              e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitSubDetail1ToJson(
    ExplanationOfBenefitSubDetail1 instance) {
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
  val['productOrService'] = instance.productOrService.toJson();
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull('quantity', instance.quantity?.toJson());
  writeNotNull('unitPrice', instance.unitPrice?.toJson());
  writeNotNull('factor', instance.factor?.toJson());
  writeNotNull('_factor', instance.factorElement?.toJson());
  writeNotNull('net', instance.net?.toJson());
  writeNotNull(
      'noteNumber', instance.noteNumber?.map((e) => e.toJson()).toList());
  writeNotNull('_noteNumber',
      instance.noteNumberElement?.map((e) => e.toJson()).toList());
  writeNotNull(
      'adjudication', instance.adjudication?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitTotal _$ExplanationOfBenefitTotalFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitTotal(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitTotalToJson(
    ExplanationOfBenefitTotal instance) {
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
  val['category'] = instance.category.toJson();
  val['amount'] = instance.amount.toJson();
  return val;
}

ExplanationOfBenefitPayment _$ExplanationOfBenefitPaymentFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitPayment(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      adjustment: json['adjustment'] == null
          ? null
          : Money.fromJson(json['adjustment'] as Map<String, dynamic>),
      adjustmentReason: json['adjustmentReason'] == null
          ? null
          : CodeableConcept.fromJson(
              json['adjustmentReason'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : FhirDate.fromJson(json['date'] as String),
      dateElement: json['_date'] == null
          ? null
          : Element.fromJson(json['_date'] as Map<String, dynamic>),
      amount: json['amount'] == null
          ? null
          : Money.fromJson(json['amount'] as Map<String, dynamic>),
      identifier: json['identifier'] == null
          ? null
          : Identifier.fromJson(json['identifier'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitPaymentToJson(
    ExplanationOfBenefitPayment instance) {
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
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('adjustment', instance.adjustment?.toJson());
  writeNotNull('adjustmentReason', instance.adjustmentReason?.toJson());
  writeNotNull('date', instance.date?.toJson());
  writeNotNull('_date', instance.dateElement?.toJson());
  writeNotNull('amount', instance.amount?.toJson());
  writeNotNull('identifier', instance.identifier?.toJson());
  return val;
}

ExplanationOfBenefitProcessNote _$ExplanationOfBenefitProcessNoteFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitProcessNote(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      number: json['number'] == null
          ? null
          : FhirPositiveInt.fromJson(json['number']),
      numberElement: json['_number'] == null
          ? null
          : Element.fromJson(json['_number'] as Map<String, dynamic>),
      type: json['type'] == null ? null : FhirCode.fromJson(json['type']),
      typeElement: json['_type'] == null
          ? null
          : Element.fromJson(json['_type'] as Map<String, dynamic>),
      text: json['text'] == null ? null : FhirString.fromJson(json['text']),
      textElement: json['_text'] == null
          ? null
          : Element.fromJson(json['_text'] as Map<String, dynamic>),
      language: json['language'] == null
          ? null
          : CodeableConcept.fromJson(json['language'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitProcessNoteToJson(
    ExplanationOfBenefitProcessNote instance) {
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
  writeNotNull('number', instance.number?.toJson());
  writeNotNull('_number', instance.numberElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('_type', instance.typeElement?.toJson());
  writeNotNull('text', instance.text?.toJson());
  writeNotNull('_text', instance.textElement?.toJson());
  writeNotNull('language', instance.language?.toJson());
  return val;
}

ExplanationOfBenefitBenefitBalance _$ExplanationOfBenefitBenefitBalanceFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitBenefitBalance(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      category:
          CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      excluded: json['excluded'] == null
          ? null
          : FhirBoolean.fromJson(json['excluded']),
      excludedElement: json['_excluded'] == null
          ? null
          : Element.fromJson(json['_excluded'] as Map<String, dynamic>),
      name: json['name'] == null ? null : FhirString.fromJson(json['name']),
      nameElement: json['_name'] == null
          ? null
          : Element.fromJson(json['_name'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      network: json['network'] == null
          ? null
          : CodeableConcept.fromJson(json['network'] as Map<String, dynamic>),
      unit: json['unit'] == null
          ? null
          : CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>),
      term: json['term'] == null
          ? null
          : CodeableConcept.fromJson(json['term'] as Map<String, dynamic>),
      financial: (json['financial'] as List<dynamic>?)
          ?.map((e) =>
              ExplanationOfBenefitFinancial.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$ExplanationOfBenefitBenefitBalanceToJson(
    ExplanationOfBenefitBenefitBalance instance) {
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
  val['category'] = instance.category.toJson();
  writeNotNull('excluded', instance.excluded?.toJson());
  writeNotNull('_excluded', instance.excludedElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('network', instance.network?.toJson());
  writeNotNull('unit', instance.unit?.toJson());
  writeNotNull('term', instance.term?.toJson());
  writeNotNull(
      'financial', instance.financial?.map((e) => e.toJson()).toList());
  return val;
}

ExplanationOfBenefitFinancial _$ExplanationOfBenefitFinancialFromJson(
        Map<String, dynamic> json) =>
    ExplanationOfBenefitFinancial(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      allowedUnsignedInt: json['allowedUnsignedInt'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['allowedUnsignedInt']),
      allowedUnsignedIntElement: json['_allowedUnsignedInt'] == null
          ? null
          : Element.fromJson(
              json['_allowedUnsignedInt'] as Map<String, dynamic>),
      allowedString: json['allowedString'] == null
          ? null
          : FhirString.fromJson(json['allowedString']),
      allowedStringElement: json['_allowedString'] == null
          ? null
          : Element.fromJson(json['_allowedString'] as Map<String, dynamic>),
      allowedMoney: json['allowedMoney'] == null
          ? null
          : Money.fromJson(json['allowedMoney'] as Map<String, dynamic>),
      usedUnsignedInt: json['usedUnsignedInt'] == null
          ? null
          : FhirUnsignedInt.fromJson(json['usedUnsignedInt']),
      usedUnsignedIntElement: json['_usedUnsignedInt'] == null
          ? null
          : Element.fromJson(json['_usedUnsignedInt'] as Map<String, dynamic>),
      usedMoney: json['usedMoney'] == null
          ? null
          : Money.fromJson(json['usedMoney'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ExplanationOfBenefitFinancialToJson(
    ExplanationOfBenefitFinancial instance) {
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
  val['type'] = instance.type.toJson();
  writeNotNull('allowedUnsignedInt', instance.allowedUnsignedInt?.toJson());
  writeNotNull(
      '_allowedUnsignedInt', instance.allowedUnsignedIntElement?.toJson());
  writeNotNull('allowedString', instance.allowedString?.toJson());
  writeNotNull('_allowedString', instance.allowedStringElement?.toJson());
  writeNotNull('allowedMoney', instance.allowedMoney?.toJson());
  writeNotNull('usedUnsignedInt', instance.usedUnsignedInt?.toJson());
  writeNotNull('_usedUnsignedInt', instance.usedUnsignedIntElement?.toJson());
  writeNotNull('usedMoney', instance.usedMoney?.toJson());
  return val;
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverage_eligibility_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoverageEligibilityResponse _$CoverageEligibilityResponseFromJson(
        Map<String, dynamic> json) =>
    CoverageEligibilityResponse(
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
      purpose:
          (json['purpose'] as List<dynamic>).map(FhirCode.fromJson).toList(),
      purposeElement: (json['_purpose'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      patient: Reference.fromJson(json['patient'] as Map<String, dynamic>),
      servicedDate: json['servicedDate'] == null
          ? null
          : FhirDate.fromJson(json['servicedDate'] as String),
      servicedDateElement: json['_servicedDate'] == null
          ? null
          : Element.fromJson(json['_servicedDate'] as Map<String, dynamic>),
      servicedPeriod: json['servicedPeriod'] == null
          ? null
          : Period.fromJson(json['servicedPeriod'] as Map<String, dynamic>),
      created: FhirDateTime.fromJson(json['created'] as String),
      createdElement: json['_created'] == null
          ? null
          : Element.fromJson(json['_created'] as Map<String, dynamic>),
      requestor: json['requestor'] == null
          ? null
          : Reference.fromJson(json['requestor'] as Map<String, dynamic>),
      request: Reference.fromJson(json['request'] as Map<String, dynamic>),
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
      insurer: Reference.fromJson(json['insurer'] as Map<String, dynamic>),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityResponseInsurance.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      preAuthRef: json['preAuthRef'] == null
          ? null
          : FhirString.fromJson(json['preAuthRef']),
      preAuthRefElement: json['_preAuthRef'] == null
          ? null
          : Element.fromJson(json['_preAuthRef'] as Map<String, dynamic>),
      form: json['form'] == null
          ? null
          : CodeableConcept.fromJson(json['form'] as Map<String, dynamic>),
      error: (json['error'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityResponseError.fromJson(
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

Map<String, dynamic> _$CoverageEligibilityResponseToJson(
    CoverageEligibilityResponse instance) {
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
  val['purpose'] = instance.purpose.map((e) => e.toJson()).toList();
  writeNotNull(
      '_purpose', instance.purposeElement?.map((e) => e.toJson()).toList());
  val['patient'] = instance.patient.toJson();
  writeNotNull('servicedDate', instance.servicedDate?.toJson());
  writeNotNull('_servicedDate', instance.servicedDateElement?.toJson());
  writeNotNull('servicedPeriod', instance.servicedPeriod?.toJson());
  val['created'] = instance.created.toJson();
  writeNotNull('_created', instance.createdElement?.toJson());
  writeNotNull('requestor', instance.requestor?.toJson());
  val['request'] = instance.request.toJson();
  val['outcome'] = instance.outcome.toJson();
  writeNotNull('_outcome', instance.outcomeElement?.toJson());
  writeNotNull('disposition', instance.disposition?.toJson());
  writeNotNull('_disposition', instance.dispositionElement?.toJson());
  val['insurer'] = instance.insurer.toJson();
  writeNotNull(
      'insurance', instance.insurance?.map((e) => e.toJson()).toList());
  writeNotNull('preAuthRef', instance.preAuthRef?.toJson());
  writeNotNull('_preAuthRef', instance.preAuthRefElement?.toJson());
  writeNotNull('form', instance.form?.toJson());
  writeNotNull('error', instance.error?.map((e) => e.toJson()).toList());
  return val;
}

CoverageEligibilityResponseInsurance
    _$CoverageEligibilityResponseInsuranceFromJson(Map<String, dynamic> json) =>
        CoverageEligibilityResponseInsurance(
          id: json['id'] == null ? null : FhirString.fromJson(json['id']),
          extension_: (json['extension_'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          modifierExtension: (json['modifierExtension'] as List<dynamic>?)
              ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
              .toList(),
          coverage:
              Reference.fromJson(json['coverage'] as Map<String, dynamic>),
          inforce: json['inforce'] == null
              ? null
              : FhirBoolean.fromJson(json['inforce']),
          inforceElement: json['_inforce'] == null
              ? null
              : Element.fromJson(json['_inforce'] as Map<String, dynamic>),
          benefitPeriod: json['benefitPeriod'] == null
              ? null
              : Period.fromJson(json['benefitPeriod'] as Map<String, dynamic>),
          item: (json['item'] as List<dynamic>?)
              ?.map((e) => CoverageEligibilityResponseItem.fromJson(
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
          annotations:
              json['annotations'] as List<dynamic>? ?? const <dynamic>[],
          children: (json['children'] as List<dynamic>?)
                  ?.map(FhirBase.fromJson)
                  .toList() ??
              const <FhirBase>[],
          namedChildren: (json['namedChildren'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, FhirBase.fromJson(e)),
              ) ??
              const <String, FhirBase>{},
        );

Map<String, dynamic> _$CoverageEligibilityResponseInsuranceToJson(
    CoverageEligibilityResponseInsurance instance) {
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
  val['coverage'] = instance.coverage.toJson();
  writeNotNull('inforce', instance.inforce?.toJson());
  writeNotNull('_inforce', instance.inforceElement?.toJson());
  writeNotNull('benefitPeriod', instance.benefitPeriod?.toJson());
  writeNotNull('item', instance.item?.map((e) => e.toJson()).toList());
  return val;
}

CoverageEligibilityResponseItem _$CoverageEligibilityResponseItemFromJson(
        Map<String, dynamic> json) =>
    CoverageEligibilityResponseItem(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] == null
          ? null
          : CodeableConcept.fromJson(json['category'] as Map<String, dynamic>),
      productOrService: json['productOrService'] == null
          ? null
          : CodeableConcept.fromJson(
              json['productOrService'] as Map<String, dynamic>),
      modifier: (json['modifier'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      provider: json['provider'] == null
          ? null
          : Reference.fromJson(json['provider'] as Map<String, dynamic>),
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
      benefit: (json['benefit'] as List<dynamic>?)
          ?.map((e) => CoverageEligibilityResponseBenefit.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      authorizationRequired: json['authorizationRequired'] == null
          ? null
          : FhirBoolean.fromJson(json['authorizationRequired']),
      authorizationRequiredElement: json['_authorizationRequired'] == null
          ? null
          : Element.fromJson(
              json['_authorizationRequired'] as Map<String, dynamic>),
      authorizationSupporting:
          (json['authorizationSupporting'] as List<dynamic>?)
              ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
              .toList(),
      authorizationUrl: json['authorizationUrl'] == null
          ? null
          : FhirUri.fromJson(json['authorizationUrl']),
      authorizationUrlElement: json['_authorizationUrl'] == null
          ? null
          : Element.fromJson(json['_authorizationUrl'] as Map<String, dynamic>),
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

Map<String, dynamic> _$CoverageEligibilityResponseItemToJson(
    CoverageEligibilityResponseItem instance) {
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
  writeNotNull('category', instance.category?.toJson());
  writeNotNull('productOrService', instance.productOrService?.toJson());
  writeNotNull('modifier', instance.modifier?.map((e) => e.toJson()).toList());
  writeNotNull('provider', instance.provider?.toJson());
  writeNotNull('excluded', instance.excluded?.toJson());
  writeNotNull('_excluded', instance.excludedElement?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('_name', instance.nameElement?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('network', instance.network?.toJson());
  writeNotNull('unit', instance.unit?.toJson());
  writeNotNull('term', instance.term?.toJson());
  writeNotNull('benefit', instance.benefit?.map((e) => e.toJson()).toList());
  writeNotNull(
      'authorizationRequired', instance.authorizationRequired?.toJson());
  writeNotNull('_authorizationRequired',
      instance.authorizationRequiredElement?.toJson());
  writeNotNull('authorizationSupporting',
      instance.authorizationSupporting?.map((e) => e.toJson()).toList());
  writeNotNull('authorizationUrl', instance.authorizationUrl?.toJson());
  writeNotNull('_authorizationUrl', instance.authorizationUrlElement?.toJson());
  return val;
}

CoverageEligibilityResponseBenefit _$CoverageEligibilityResponseBenefitFromJson(
        Map<String, dynamic> json) =>
    CoverageEligibilityResponseBenefit(
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
      usedString: json['usedString'] == null
          ? null
          : FhirString.fromJson(json['usedString']),
      usedStringElement: json['_usedString'] == null
          ? null
          : Element.fromJson(json['_usedString'] as Map<String, dynamic>),
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

Map<String, dynamic> _$CoverageEligibilityResponseBenefitToJson(
    CoverageEligibilityResponseBenefit instance) {
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
  writeNotNull('usedString', instance.usedString?.toJson());
  writeNotNull('_usedString', instance.usedStringElement?.toJson());
  writeNotNull('usedMoney', instance.usedMoney?.toJson());
  return val;
}

CoverageEligibilityResponseError _$CoverageEligibilityResponseErrorFromJson(
        Map<String, dynamic> json) =>
    CoverageEligibilityResponseError(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
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

Map<String, dynamic> _$CoverageEligibilityResponseErrorToJson(
    CoverageEligibilityResponseError instance) {
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
  val['code'] = instance.code.toJson();
  return val;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
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
      instantiatesCanonical: json['instantiatesCanonical'] == null
          ? null
          : FhirCanonical.fromJson(json['instantiatesCanonical']),
      instantiatesCanonicalElement: json['_instantiatesCanonical'] == null
          ? null
          : Element.fromJson(
              json['_instantiatesCanonical'] as Map<String, dynamic>),
      instantiatesUri: json['instantiatesUri'] == null
          ? null
          : FhirUri.fromJson(json['instantiatesUri']),
      instantiatesUriElement: json['_instantiatesUri'] == null
          ? null
          : Element.fromJson(json['_instantiatesUri'] as Map<String, dynamic>),
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupIdentifier: json['groupIdentifier'] == null
          ? null
          : Identifier.fromJson(
              json['groupIdentifier'] as Map<String, dynamic>),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      statusReason: json['statusReason'] == null
          ? null
          : CodeableConcept.fromJson(
              json['statusReason'] as Map<String, dynamic>),
      businessStatus: json['businessStatus'] == null
          ? null
          : CodeableConcept.fromJson(
              json['businessStatus'] as Map<String, dynamic>),
      intent: FhirCode.fromJson(json['intent']),
      intentElement: json['_intent'] == null
          ? null
          : Element.fromJson(json['_intent'] as Map<String, dynamic>),
      priority:
          json['priority'] == null ? null : FhirCode.fromJson(json['priority']),
      priorityElement: json['_priority'] == null
          ? null
          : Element.fromJson(json['_priority'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      description: json['description'] == null
          ? null
          : FhirString.fromJson(json['description']),
      descriptionElement: json['_description'] == null
          ? null
          : Element.fromJson(json['_description'] as Map<String, dynamic>),
      focus: json['focus'] == null
          ? null
          : Reference.fromJson(json['focus'] as Map<String, dynamic>),
      for_: json['for'] == null
          ? null
          : Reference.fromJson(json['for'] as Map<String, dynamic>),
      encounter: json['encounter'] == null
          ? null
          : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
      executionPeriod: json['executionPeriod'] == null
          ? null
          : Period.fromJson(json['executionPeriod'] as Map<String, dynamic>),
      authoredOn: json['authoredOn'] == null
          ? null
          : FhirDateTime.fromJson(json['authoredOn'] as String),
      authoredOnElement: json['_authoredOn'] == null
          ? null
          : Element.fromJson(json['_authoredOn'] as Map<String, dynamic>),
      lastModified: json['lastModified'] == null
          ? null
          : FhirDateTime.fromJson(json['lastModified'] as String),
      lastModifiedElement: json['_lastModified'] == null
          ? null
          : Element.fromJson(json['_lastModified'] as Map<String, dynamic>),
      requester: json['requester'] == null
          ? null
          : Reference.fromJson(json['requester'] as Map<String, dynamic>),
      performerType: (json['performerType'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      owner: json['owner'] == null
          ? null
          : Reference.fromJson(json['owner'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Reference.fromJson(json['location'] as Map<String, dynamic>),
      reasonCode: json['reasonCode'] == null
          ? null
          : CodeableConcept.fromJson(
              json['reasonCode'] as Map<String, dynamic>),
      reasonReference: json['reasonReference'] == null
          ? null
          : Reference.fromJson(json['reasonReference'] as Map<String, dynamic>),
      insurance: (json['insurance'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
          .toList(),
      relevantHistory: (json['relevantHistory'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      restriction: json['restriction'] == null
          ? null
          : TaskRestriction.fromJson(
              json['restriction'] as Map<String, dynamic>),
      input: (json['input'] as List<dynamic>?)
          ?.map((e) => TaskInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      output: (json['output'] as List<dynamic>?)
          ?.map((e) => TaskOutput.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$TaskToJson(Task instance) {
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
  writeNotNull(
      'instantiatesCanonical', instance.instantiatesCanonical?.toJson());
  writeNotNull('_instantiatesCanonical',
      instance.instantiatesCanonicalElement?.toJson());
  writeNotNull('instantiatesUri', instance.instantiatesUri?.toJson());
  writeNotNull('_instantiatesUri', instance.instantiatesUriElement?.toJson());
  writeNotNull('basedOn', instance.basedOn?.map((e) => e.toJson()).toList());
  writeNotNull('groupIdentifier', instance.groupIdentifier?.toJson());
  writeNotNull('partOf', instance.partOf?.map((e) => e.toJson()).toList());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('statusReason', instance.statusReason?.toJson());
  writeNotNull('businessStatus', instance.businessStatus?.toJson());
  val['intent'] = instance.intent.toJson();
  writeNotNull('_intent', instance.intentElement?.toJson());
  writeNotNull('priority', instance.priority?.toJson());
  writeNotNull('_priority', instance.priorityElement?.toJson());
  writeNotNull('code', instance.code?.toJson());
  writeNotNull('description', instance.description?.toJson());
  writeNotNull('_description', instance.descriptionElement?.toJson());
  writeNotNull('focus', instance.focus?.toJson());
  writeNotNull('for', instance.for_?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('executionPeriod', instance.executionPeriod?.toJson());
  writeNotNull('authoredOn', instance.authoredOn?.toJson());
  writeNotNull('_authoredOn', instance.authoredOnElement?.toJson());
  writeNotNull('lastModified', instance.lastModified?.toJson());
  writeNotNull('_lastModified', instance.lastModifiedElement?.toJson());
  writeNotNull('requester', instance.requester?.toJson());
  writeNotNull(
      'performerType', instance.performerType?.map((e) => e.toJson()).toList());
  writeNotNull('owner', instance.owner?.toJson());
  writeNotNull('location', instance.location?.toJson());
  writeNotNull('reasonCode', instance.reasonCode?.toJson());
  writeNotNull('reasonReference', instance.reasonReference?.toJson());
  writeNotNull(
      'insurance', instance.insurance?.map((e) => e.toJson()).toList());
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  writeNotNull('relevantHistory',
      instance.relevantHistory?.map((e) => e.toJson()).toList());
  writeNotNull('restriction', instance.restriction?.toJson());
  writeNotNull('input', instance.input?.map((e) => e.toJson()).toList());
  writeNotNull('output', instance.output?.map((e) => e.toJson()).toList());
  return val;
}

TaskRestriction _$TaskRestrictionFromJson(Map<String, dynamic> json) =>
    TaskRestriction(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      repetitions: json['repetitions'] == null
          ? null
          : FhirPositiveInt.fromJson(json['repetitions']),
      repetitionsElement: json['_repetitions'] == null
          ? null
          : Element.fromJson(json['_repetitions'] as Map<String, dynamic>),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
      recipient: (json['recipient'] as List<dynamic>?)
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

Map<String, dynamic> _$TaskRestrictionToJson(TaskRestriction instance) {
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
  writeNotNull('repetitions', instance.repetitions?.toJson());
  writeNotNull('_repetitions', instance.repetitionsElement?.toJson());
  writeNotNull('period', instance.period?.toJson());
  writeNotNull(
      'recipient', instance.recipient?.map((e) => e.toJson()).toList());
  return val;
}

TaskInput _$TaskInputFromJson(Map<String, dynamic> json) => TaskInput(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      valueBase64Binary: FhirBase64Binary.fromJson(json['valueBase64Binary']),
      valueBase64BinaryElement: json['_valueBase64Binary'] == null
          ? null
          : Element.fromJson(
              json['_valueBase64Binary'] as Map<String, dynamic>),
      valueBoolean: FhirBoolean.fromJson(json['valueBoolean']),
      valueBooleanElement: json['_valueBoolean'] == null
          ? null
          : Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>),
      valueCanonical: FhirCanonical.fromJson(json['valueCanonical']),
      valueCanonicalElement: json['_valueCanonical'] == null
          ? null
          : Element.fromJson(json['_valueCanonical'] as Map<String, dynamic>),
      valueCode: FhirCode.fromJson(json['valueCode']),
      valueCodeElement: json['_valueCode'] == null
          ? null
          : Element.fromJson(json['_valueCode'] as Map<String, dynamic>),
      valueDate: FhirDate.fromJson(json['valueDate'] as String),
      valueDateElement: json['_valueDate'] == null
          ? null
          : Element.fromJson(json['_valueDate'] as Map<String, dynamic>),
      valueDateTime: FhirDateTime.fromJson(json['valueDateTime'] as String),
      valueDateTimeElement: json['_valueDateTime'] == null
          ? null
          : Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>),
      valueDecimal: FhirDecimal.fromJson(json['valueDecimal']),
      valueDecimalElement: json['_valueDecimal'] == null
          ? null
          : Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>),
      valueId: FhirId.fromJson(json['valueId']),
      valueIdElement: json['_valueId'] == null
          ? null
          : Element.fromJson(json['_valueId'] as Map<String, dynamic>),
      valueInstant: FhirInstant.fromJson(json['valueInstant'] as String),
      valueInstantElement: json['_valueInstant'] == null
          ? null
          : Element.fromJson(json['_valueInstant'] as Map<String, dynamic>),
      valueInteger: FhirInteger.fromJson(json['valueInteger']),
      valueIntegerElement: json['_valueInteger'] == null
          ? null
          : Element.fromJson(json['_valueInteger'] as Map<String, dynamic>),
      valueMarkdown: FhirMarkdown.fromJson(json['valueMarkdown']),
      valueMarkdownElement: json['_valueMarkdown'] == null
          ? null
          : Element.fromJson(json['_valueMarkdown'] as Map<String, dynamic>),
      valueOid: FhirOid.fromJson(json['valueOid']),
      valueOidElement: json['_valueOid'] == null
          ? null
          : Element.fromJson(json['_valueOid'] as Map<String, dynamic>),
      valuePositiveInt: FhirPositiveInt.fromJson(json['valuePositiveInt']),
      valuePositiveIntElement: json['_valuePositiveInt'] == null
          ? null
          : Element.fromJson(json['_valuePositiveInt'] as Map<String, dynamic>),
      valueString: FhirString.fromJson(json['valueString']),
      valueStringElement: json['_valueString'] == null
          ? null
          : Element.fromJson(json['_valueString'] as Map<String, dynamic>),
      valueTime: FhirTime.fromJson(json['valueTime']),
      valueTimeElement: json['_valueTime'] == null
          ? null
          : Element.fromJson(json['_valueTime'] as Map<String, dynamic>),
      valueUnsignedInt: FhirUnsignedInt.fromJson(json['valueUnsignedInt']),
      valueUnsignedIntElement: json['_valueUnsignedInt'] == null
          ? null
          : Element.fromJson(json['_valueUnsignedInt'] as Map<String, dynamic>),
      valueUri: FhirUri.fromJson(json['valueUri']),
      valueUriElement: json['_valueUri'] == null
          ? null
          : Element.fromJson(json['_valueUri'] as Map<String, dynamic>),
      valueUrl: FhirUrl.fromJson(json['valueUrl']),
      valueUrlElement: json['_valueUrl'] == null
          ? null
          : Element.fromJson(json['_valueUrl'] as Map<String, dynamic>),
      valueUuid: FhirUuid.fromJson(json['valueUuid']),
      valueUuidElement: json['_valueUuid'] == null
          ? null
          : Element.fromJson(json['_valueUuid'] as Map<String, dynamic>),
      valueAddress:
          Address.fromJson(json['valueAddress'] as Map<String, dynamic>),
      valueAge: Age.fromJson(json['valueAge'] as Map<String, dynamic>),
      valueAnnotation:
          Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>),
      valueAttachment:
          Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
      valueCodeableConcept: CodeableConcept.fromJson(
          json['valueCodeableConcept'] as Map<String, dynamic>),
      valueCoding: Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
      valueContactPoint: ContactPoint.fromJson(
          json['valueContactPoint'] as Map<String, dynamic>),
      valueCount: Count.fromJson(json['valueCount'] as Map<String, dynamic>),
      valueDistance:
          Distance.fromJson(json['valueDistance'] as Map<String, dynamic>),
      valueDuration:
          FhirDuration.fromJson(json['valueDuration'] as Map<String, dynamic>),
      valueHumanName:
          HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>),
      valueIdentifier:
          Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>),
      valueMoney: Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
      valuePeriod: Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
      valueQuantity:
          Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
      valueRange: Range.fromJson(json['valueRange'] as Map<String, dynamic>),
      valueRatio: Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
      valueReference:
          Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
      valueSampledData: SampledData.fromJson(
          json['valueSampledData'] as Map<String, dynamic>),
      valueSignature:
          Signature.fromJson(json['valueSignature'] as Map<String, dynamic>),
      valueTiming: Timing.fromJson(json['valueTiming'] as Map<String, dynamic>),
      valueContactDetail: ContactDetail.fromJson(
          json['valueContactDetail'] as Map<String, dynamic>),
      valueContributor: Contributor.fromJson(
          json['valueContributor'] as Map<String, dynamic>),
      valueDataRequirement: DataRequirement.fromJson(
          json['valueDataRequirement'] as Map<String, dynamic>),
      valueExpression: FhirExpression.fromJson(
          json['valueExpression'] as Map<String, dynamic>),
      valueParameterDefinition: ParameterDefinition.fromJson(
          json['valueParameterDefinition'] as Map<String, dynamic>),
      valueRelatedArtifact: RelatedArtifact.fromJson(
          json['valueRelatedArtifact'] as Map<String, dynamic>),
      valueTriggerDefinition: TriggerDefinition.fromJson(
          json['valueTriggerDefinition'] as Map<String, dynamic>),
      valueUsageContext: UsageContext.fromJson(
          json['valueUsageContext'] as Map<String, dynamic>),
      valueDosage: Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>),
      valueMeta: FhirMeta.fromJson(json['valueMeta'] as Map<String, dynamic>),
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

Map<String, dynamic> _$TaskInputToJson(TaskInput instance) {
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
  val['valueBase64Binary'] = instance.valueBase64Binary.toJson();
  writeNotNull(
      '_valueBase64Binary', instance.valueBase64BinaryElement?.toJson());
  val['valueBoolean'] = instance.valueBoolean.toJson();
  writeNotNull('_valueBoolean', instance.valueBooleanElement?.toJson());
  val['valueCanonical'] = instance.valueCanonical.toJson();
  writeNotNull('_valueCanonical', instance.valueCanonicalElement?.toJson());
  val['valueCode'] = instance.valueCode.toJson();
  writeNotNull('_valueCode', instance.valueCodeElement?.toJson());
  val['valueDate'] = instance.valueDate.toJson();
  writeNotNull('_valueDate', instance.valueDateElement?.toJson());
  val['valueDateTime'] = instance.valueDateTime.toJson();
  writeNotNull('_valueDateTime', instance.valueDateTimeElement?.toJson());
  val['valueDecimal'] = instance.valueDecimal.toJson();
  writeNotNull('_valueDecimal', instance.valueDecimalElement?.toJson());
  val['valueId'] = instance.valueId.toJson();
  writeNotNull('_valueId', instance.valueIdElement?.toJson());
  val['valueInstant'] = instance.valueInstant.toJson();
  writeNotNull('_valueInstant', instance.valueInstantElement?.toJson());
  val['valueInteger'] = instance.valueInteger.toJson();
  writeNotNull('_valueInteger', instance.valueIntegerElement?.toJson());
  val['valueMarkdown'] = instance.valueMarkdown.toJson();
  writeNotNull('_valueMarkdown', instance.valueMarkdownElement?.toJson());
  val['valueOid'] = instance.valueOid.toJson();
  writeNotNull('_valueOid', instance.valueOidElement?.toJson());
  val['valuePositiveInt'] = instance.valuePositiveInt.toJson();
  writeNotNull('_valuePositiveInt', instance.valuePositiveIntElement?.toJson());
  val['valueString'] = instance.valueString.toJson();
  writeNotNull('_valueString', instance.valueStringElement?.toJson());
  val['valueTime'] = instance.valueTime.toJson();
  writeNotNull('_valueTime', instance.valueTimeElement?.toJson());
  val['valueUnsignedInt'] = instance.valueUnsignedInt.toJson();
  writeNotNull('_valueUnsignedInt', instance.valueUnsignedIntElement?.toJson());
  val['valueUri'] = instance.valueUri.toJson();
  writeNotNull('_valueUri', instance.valueUriElement?.toJson());
  val['valueUrl'] = instance.valueUrl.toJson();
  writeNotNull('_valueUrl', instance.valueUrlElement?.toJson());
  val['valueUuid'] = instance.valueUuid.toJson();
  writeNotNull('_valueUuid', instance.valueUuidElement?.toJson());
  val['valueAddress'] = instance.valueAddress.toJson();
  val['valueAge'] = instance.valueAge.toJson();
  val['valueAnnotation'] = instance.valueAnnotation.toJson();
  val['valueAttachment'] = instance.valueAttachment.toJson();
  val['valueCodeableConcept'] = instance.valueCodeableConcept.toJson();
  val['valueCoding'] = instance.valueCoding.toJson();
  val['valueContactPoint'] = instance.valueContactPoint.toJson();
  val['valueCount'] = instance.valueCount.toJson();
  val['valueDistance'] = instance.valueDistance.toJson();
  val['valueDuration'] = instance.valueDuration.toJson();
  val['valueHumanName'] = instance.valueHumanName.toJson();
  val['valueIdentifier'] = instance.valueIdentifier.toJson();
  val['valueMoney'] = instance.valueMoney.toJson();
  val['valuePeriod'] = instance.valuePeriod.toJson();
  val['valueQuantity'] = instance.valueQuantity.toJson();
  val['valueRange'] = instance.valueRange.toJson();
  val['valueRatio'] = instance.valueRatio.toJson();
  val['valueReference'] = instance.valueReference.toJson();
  val['valueSampledData'] = instance.valueSampledData.toJson();
  val['valueSignature'] = instance.valueSignature.toJson();
  val['valueTiming'] = instance.valueTiming.toJson();
  val['valueContactDetail'] = instance.valueContactDetail.toJson();
  val['valueContributor'] = instance.valueContributor.toJson();
  val['valueDataRequirement'] = instance.valueDataRequirement.toJson();
  val['valueExpression'] = instance.valueExpression.toJson();
  val['valueParameterDefinition'] = instance.valueParameterDefinition.toJson();
  val['valueRelatedArtifact'] = instance.valueRelatedArtifact.toJson();
  val['valueTriggerDefinition'] = instance.valueTriggerDefinition.toJson();
  val['valueUsageContext'] = instance.valueUsageContext.toJson();
  val['valueDosage'] = instance.valueDosage.toJson();
  val['valueMeta'] = instance.valueMeta.toJson();
  return val;
}

TaskOutput _$TaskOutputFromJson(Map<String, dynamic> json) => TaskOutput(
      id: json['id'] == null ? null : FhirString.fromJson(json['id']),
      extension_: (json['extension_'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map((e) => FhirExtension.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      valueBase64Binary: FhirBase64Binary.fromJson(json['valueBase64Binary']),
      valueBase64BinaryElement: json['_valueBase64Binary'] == null
          ? null
          : Element.fromJson(
              json['_valueBase64Binary'] as Map<String, dynamic>),
      valueBoolean: FhirBoolean.fromJson(json['valueBoolean']),
      valueBooleanElement: json['_valueBoolean'] == null
          ? null
          : Element.fromJson(json['_valueBoolean'] as Map<String, dynamic>),
      valueCanonical: FhirCanonical.fromJson(json['valueCanonical']),
      valueCanonicalElement: json['_valueCanonical'] == null
          ? null
          : Element.fromJson(json['_valueCanonical'] as Map<String, dynamic>),
      valueCode: FhirCode.fromJson(json['valueCode']),
      valueCodeElement: json['_valueCode'] == null
          ? null
          : Element.fromJson(json['_valueCode'] as Map<String, dynamic>),
      valueDate: FhirDate.fromJson(json['valueDate'] as String),
      valueDateElement: json['_valueDate'] == null
          ? null
          : Element.fromJson(json['_valueDate'] as Map<String, dynamic>),
      valueDateTime: FhirDateTime.fromJson(json['valueDateTime'] as String),
      valueDateTimeElement: json['_valueDateTime'] == null
          ? null
          : Element.fromJson(json['_valueDateTime'] as Map<String, dynamic>),
      valueDecimal: FhirDecimal.fromJson(json['valueDecimal']),
      valueDecimalElement: json['_valueDecimal'] == null
          ? null
          : Element.fromJson(json['_valueDecimal'] as Map<String, dynamic>),
      valueId: FhirId.fromJson(json['valueId']),
      valueIdElement: json['_valueId'] == null
          ? null
          : Element.fromJson(json['_valueId'] as Map<String, dynamic>),
      valueInstant: FhirInstant.fromJson(json['valueInstant'] as String),
      valueInstantElement: json['_valueInstant'] == null
          ? null
          : Element.fromJson(json['_valueInstant'] as Map<String, dynamic>),
      valueInteger: FhirInteger.fromJson(json['valueInteger']),
      valueIntegerElement: json['_valueInteger'] == null
          ? null
          : Element.fromJson(json['_valueInteger'] as Map<String, dynamic>),
      valueMarkdown: FhirMarkdown.fromJson(json['valueMarkdown']),
      valueMarkdownElement: json['_valueMarkdown'] == null
          ? null
          : Element.fromJson(json['_valueMarkdown'] as Map<String, dynamic>),
      valueOid: FhirOid.fromJson(json['valueOid']),
      valueOidElement: json['_valueOid'] == null
          ? null
          : Element.fromJson(json['_valueOid'] as Map<String, dynamic>),
      valuePositiveInt: FhirPositiveInt.fromJson(json['valuePositiveInt']),
      valuePositiveIntElement: json['_valuePositiveInt'] == null
          ? null
          : Element.fromJson(json['_valuePositiveInt'] as Map<String, dynamic>),
      valueString: FhirString.fromJson(json['valueString']),
      valueStringElement: json['_valueString'] == null
          ? null
          : Element.fromJson(json['_valueString'] as Map<String, dynamic>),
      valueTime: FhirTime.fromJson(json['valueTime']),
      valueTimeElement: json['_valueTime'] == null
          ? null
          : Element.fromJson(json['_valueTime'] as Map<String, dynamic>),
      valueUnsignedInt: FhirUnsignedInt.fromJson(json['valueUnsignedInt']),
      valueUnsignedIntElement: json['_valueUnsignedInt'] == null
          ? null
          : Element.fromJson(json['_valueUnsignedInt'] as Map<String, dynamic>),
      valueUri: FhirUri.fromJson(json['valueUri']),
      valueUriElement: json['_valueUri'] == null
          ? null
          : Element.fromJson(json['_valueUri'] as Map<String, dynamic>),
      valueUrl: FhirUrl.fromJson(json['valueUrl']),
      valueUrlElement: json['_valueUrl'] == null
          ? null
          : Element.fromJson(json['_valueUrl'] as Map<String, dynamic>),
      valueUuid: FhirUuid.fromJson(json['valueUuid']),
      valueUuidElement: json['_valueUuid'] == null
          ? null
          : Element.fromJson(json['_valueUuid'] as Map<String, dynamic>),
      valueAddress:
          Address.fromJson(json['valueAddress'] as Map<String, dynamic>),
      valueAge: Age.fromJson(json['valueAge'] as Map<String, dynamic>),
      valueAnnotation:
          Annotation.fromJson(json['valueAnnotation'] as Map<String, dynamic>),
      valueAttachment:
          Attachment.fromJson(json['valueAttachment'] as Map<String, dynamic>),
      valueCodeableConcept: CodeableConcept.fromJson(
          json['valueCodeableConcept'] as Map<String, dynamic>),
      valueCoding: Coding.fromJson(json['valueCoding'] as Map<String, dynamic>),
      valueContactPoint: ContactPoint.fromJson(
          json['valueContactPoint'] as Map<String, dynamic>),
      valueCount: Count.fromJson(json['valueCount'] as Map<String, dynamic>),
      valueDistance:
          Distance.fromJson(json['valueDistance'] as Map<String, dynamic>),
      valueDuration:
          FhirDuration.fromJson(json['valueDuration'] as Map<String, dynamic>),
      valueHumanName:
          HumanName.fromJson(json['valueHumanName'] as Map<String, dynamic>),
      valueIdentifier:
          Identifier.fromJson(json['valueIdentifier'] as Map<String, dynamic>),
      valueMoney: Money.fromJson(json['valueMoney'] as Map<String, dynamic>),
      valuePeriod: Period.fromJson(json['valuePeriod'] as Map<String, dynamic>),
      valueQuantity:
          Quantity.fromJson(json['valueQuantity'] as Map<String, dynamic>),
      valueRange: Range.fromJson(json['valueRange'] as Map<String, dynamic>),
      valueRatio: Ratio.fromJson(json['valueRatio'] as Map<String, dynamic>),
      valueReference:
          Reference.fromJson(json['valueReference'] as Map<String, dynamic>),
      valueSampledData: SampledData.fromJson(
          json['valueSampledData'] as Map<String, dynamic>),
      valueSignature:
          Signature.fromJson(json['valueSignature'] as Map<String, dynamic>),
      valueTiming: Timing.fromJson(json['valueTiming'] as Map<String, dynamic>),
      valueContactDetail: ContactDetail.fromJson(
          json['valueContactDetail'] as Map<String, dynamic>),
      valueContributor: Contributor.fromJson(
          json['valueContributor'] as Map<String, dynamic>),
      valueDataRequirement: DataRequirement.fromJson(
          json['valueDataRequirement'] as Map<String, dynamic>),
      valueExpression: FhirExpression.fromJson(
          json['valueExpression'] as Map<String, dynamic>),
      valueParameterDefinition: ParameterDefinition.fromJson(
          json['valueParameterDefinition'] as Map<String, dynamic>),
      valueRelatedArtifact: RelatedArtifact.fromJson(
          json['valueRelatedArtifact'] as Map<String, dynamic>),
      valueTriggerDefinition: TriggerDefinition.fromJson(
          json['valueTriggerDefinition'] as Map<String, dynamic>),
      valueUsageContext: UsageContext.fromJson(
          json['valueUsageContext'] as Map<String, dynamic>),
      valueDosage: Dosage.fromJson(json['valueDosage'] as Map<String, dynamic>),
      valueMeta: FhirMeta.fromJson(json['valueMeta'] as Map<String, dynamic>),
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

Map<String, dynamic> _$TaskOutputToJson(TaskOutput instance) {
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
  val['valueBase64Binary'] = instance.valueBase64Binary.toJson();
  writeNotNull(
      '_valueBase64Binary', instance.valueBase64BinaryElement?.toJson());
  val['valueBoolean'] = instance.valueBoolean.toJson();
  writeNotNull('_valueBoolean', instance.valueBooleanElement?.toJson());
  val['valueCanonical'] = instance.valueCanonical.toJson();
  writeNotNull('_valueCanonical', instance.valueCanonicalElement?.toJson());
  val['valueCode'] = instance.valueCode.toJson();
  writeNotNull('_valueCode', instance.valueCodeElement?.toJson());
  val['valueDate'] = instance.valueDate.toJson();
  writeNotNull('_valueDate', instance.valueDateElement?.toJson());
  val['valueDateTime'] = instance.valueDateTime.toJson();
  writeNotNull('_valueDateTime', instance.valueDateTimeElement?.toJson());
  val['valueDecimal'] = instance.valueDecimal.toJson();
  writeNotNull('_valueDecimal', instance.valueDecimalElement?.toJson());
  val['valueId'] = instance.valueId.toJson();
  writeNotNull('_valueId', instance.valueIdElement?.toJson());
  val['valueInstant'] = instance.valueInstant.toJson();
  writeNotNull('_valueInstant', instance.valueInstantElement?.toJson());
  val['valueInteger'] = instance.valueInteger.toJson();
  writeNotNull('_valueInteger', instance.valueIntegerElement?.toJson());
  val['valueMarkdown'] = instance.valueMarkdown.toJson();
  writeNotNull('_valueMarkdown', instance.valueMarkdownElement?.toJson());
  val['valueOid'] = instance.valueOid.toJson();
  writeNotNull('_valueOid', instance.valueOidElement?.toJson());
  val['valuePositiveInt'] = instance.valuePositiveInt.toJson();
  writeNotNull('_valuePositiveInt', instance.valuePositiveIntElement?.toJson());
  val['valueString'] = instance.valueString.toJson();
  writeNotNull('_valueString', instance.valueStringElement?.toJson());
  val['valueTime'] = instance.valueTime.toJson();
  writeNotNull('_valueTime', instance.valueTimeElement?.toJson());
  val['valueUnsignedInt'] = instance.valueUnsignedInt.toJson();
  writeNotNull('_valueUnsignedInt', instance.valueUnsignedIntElement?.toJson());
  val['valueUri'] = instance.valueUri.toJson();
  writeNotNull('_valueUri', instance.valueUriElement?.toJson());
  val['valueUrl'] = instance.valueUrl.toJson();
  writeNotNull('_valueUrl', instance.valueUrlElement?.toJson());
  val['valueUuid'] = instance.valueUuid.toJson();
  writeNotNull('_valueUuid', instance.valueUuidElement?.toJson());
  val['valueAddress'] = instance.valueAddress.toJson();
  val['valueAge'] = instance.valueAge.toJson();
  val['valueAnnotation'] = instance.valueAnnotation.toJson();
  val['valueAttachment'] = instance.valueAttachment.toJson();
  val['valueCodeableConcept'] = instance.valueCodeableConcept.toJson();
  val['valueCoding'] = instance.valueCoding.toJson();
  val['valueContactPoint'] = instance.valueContactPoint.toJson();
  val['valueCount'] = instance.valueCount.toJson();
  val['valueDistance'] = instance.valueDistance.toJson();
  val['valueDuration'] = instance.valueDuration.toJson();
  val['valueHumanName'] = instance.valueHumanName.toJson();
  val['valueIdentifier'] = instance.valueIdentifier.toJson();
  val['valueMoney'] = instance.valueMoney.toJson();
  val['valuePeriod'] = instance.valuePeriod.toJson();
  val['valueQuantity'] = instance.valueQuantity.toJson();
  val['valueRange'] = instance.valueRange.toJson();
  val['valueRatio'] = instance.valueRatio.toJson();
  val['valueReference'] = instance.valueReference.toJson();
  val['valueSampledData'] = instance.valueSampledData.toJson();
  val['valueSignature'] = instance.valueSignature.toJson();
  val['valueTiming'] = instance.valueTiming.toJson();
  val['valueContactDetail'] = instance.valueContactDetail.toJson();
  val['valueContributor'] = instance.valueContributor.toJson();
  val['valueDataRequirement'] = instance.valueDataRequirement.toJson();
  val['valueExpression'] = instance.valueExpression.toJson();
  val['valueParameterDefinition'] = instance.valueParameterDefinition.toJson();
  val['valueRelatedArtifact'] = instance.valueRelatedArtifact.toJson();
  val['valueTriggerDefinition'] = instance.valueTriggerDefinition.toJson();
  val['valueUsageContext'] = instance.valueUsageContext.toJson();
  val['valueDosage'] = instance.valueDosage.toJson();
  val['valueMeta'] = instance.valueMeta.toJson();
  return val;
}

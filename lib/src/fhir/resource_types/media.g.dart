// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
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
      basedOn: (json['basedOn'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      partOf: (json['partOf'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: FhirCode.fromJson(json['status']),
      statusElement: json['_status'] == null
          ? null
          : Element.fromJson(json['_status'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : CodeableConcept.fromJson(json['type'] as Map<String, dynamic>),
      modality: json['modality'] == null
          ? null
          : CodeableConcept.fromJson(json['modality'] as Map<String, dynamic>),
      view: json['view'] == null
          ? null
          : CodeableConcept.fromJson(json['view'] as Map<String, dynamic>),
      subject: json['subject'] == null
          ? null
          : Reference.fromJson(json['subject'] as Map<String, dynamic>),
      encounter: json['encounter'] == null
          ? null
          : Reference.fromJson(json['encounter'] as Map<String, dynamic>),
      createdDateTime: json['createdDateTime'] == null
          ? null
          : FhirDateTime.fromJson(json['createdDateTime'] as String),
      createdDateTimeElement: json['_createdDateTime'] == null
          ? null
          : Element.fromJson(json['_createdDateTime'] as Map<String, dynamic>),
      createdPeriod: json['createdPeriod'] == null
          ? null
          : Period.fromJson(json['createdPeriod'] as Map<String, dynamic>),
      issued: json['issued'] == null
          ? null
          : FhirInstant.fromJson(json['issued'] as String),
      issuedElement: json['_issued'] == null
          ? null
          : Element.fromJson(json['_issued'] as Map<String, dynamic>),
      operator_: json['operator'] == null
          ? null
          : Reference.fromJson(json['operator'] as Map<String, dynamic>),
      reasonCode: (json['reasonCode'] as List<dynamic>?)
          ?.map((e) => CodeableConcept.fromJson(e as Map<String, dynamic>))
          .toList(),
      bodySite: json['bodySite'] == null
          ? null
          : CodeableConcept.fromJson(json['bodySite'] as Map<String, dynamic>),
      deviceName: json['deviceName'] == null
          ? null
          : FhirString.fromJson(json['deviceName']),
      deviceNameElement: json['_deviceName'] == null
          ? null
          : Element.fromJson(json['_deviceName'] as Map<String, dynamic>),
      device: json['device'] == null
          ? null
          : Reference.fromJson(json['device'] as Map<String, dynamic>),
      height: json['height'] == null
          ? null
          : FhirPositiveInt.fromJson(json['height']),
      heightElement: json['_height'] == null
          ? null
          : Element.fromJson(json['_height'] as Map<String, dynamic>),
      width: json['width'] == null
          ? null
          : FhirPositiveInt.fromJson(json['width']),
      widthElement: json['_width'] == null
          ? null
          : Element.fromJson(json['_width'] as Map<String, dynamic>),
      frames: json['frames'] == null
          ? null
          : FhirPositiveInt.fromJson(json['frames']),
      framesElement: json['_frames'] == null
          ? null
          : Element.fromJson(json['_frames'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : FhirDecimal.fromJson(json['duration']),
      durationElement: json['_duration'] == null
          ? null
          : Element.fromJson(json['_duration'] as Map<String, dynamic>),
      content: Attachment.fromJson(json['content'] as Map<String, dynamic>),
      note: (json['note'] as List<dynamic>?)
          ?.map((e) => Annotation.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$MediaToJson(Media instance) {
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
  writeNotNull('basedOn', instance.basedOn?.map((e) => e.toJson()).toList());
  writeNotNull('partOf', instance.partOf?.map((e) => e.toJson()).toList());
  val['status'] = instance.status.toJson();
  writeNotNull('_status', instance.statusElement?.toJson());
  writeNotNull('type', instance.type?.toJson());
  writeNotNull('modality', instance.modality?.toJson());
  writeNotNull('view', instance.view?.toJson());
  writeNotNull('subject', instance.subject?.toJson());
  writeNotNull('encounter', instance.encounter?.toJson());
  writeNotNull('createdDateTime', instance.createdDateTime?.toJson());
  writeNotNull('_createdDateTime', instance.createdDateTimeElement?.toJson());
  writeNotNull('createdPeriod', instance.createdPeriod?.toJson());
  writeNotNull('issued', instance.issued?.toJson());
  writeNotNull('_issued', instance.issuedElement?.toJson());
  writeNotNull('operator', instance.operator_?.toJson());
  writeNotNull(
      'reasonCode', instance.reasonCode?.map((e) => e.toJson()).toList());
  writeNotNull('bodySite', instance.bodySite?.toJson());
  writeNotNull('deviceName', instance.deviceName?.toJson());
  writeNotNull('_deviceName', instance.deviceNameElement?.toJson());
  writeNotNull('device', instance.device?.toJson());
  writeNotNull('height', instance.height?.toJson());
  writeNotNull('_height', instance.heightElement?.toJson());
  writeNotNull('width', instance.width?.toJson());
  writeNotNull('_width', instance.widthElement?.toJson());
  writeNotNull('frames', instance.frames?.toJson());
  writeNotNull('_frames', instance.framesElement?.toJson());
  writeNotNull('duration', instance.duration?.toJson());
  writeNotNull('_duration', instance.durationElement?.toJson());
  val['content'] = instance.content.toJson();
  writeNotNull('note', instance.note?.map((e) => e.toJson()).toList());
  return val;
}

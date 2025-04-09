// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'media.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $MediaCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<Reference>? basedOn,
    List<Reference>? partOf,
    EventStatus? status,
    CodeableConcept? type,
    CodeableConcept? modality,
    CodeableConcept? view,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? createdX,
    FhirInstant? issued,
    Reference? operator_,
    List<CodeableConcept>? reasonCode,
    CodeableConcept? bodySite,
    FhirString? deviceName,
    Reference? device,
    FhirPositiveInt? height,
    FhirPositiveInt? width,
    FhirPositiveInt? frames,
    FhirDecimal? duration,
    Attachment? content,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$MediaCopyWithImpl<T> implements $MediaCopyWith<T> {
  final Media _value;
  final T Function(Media) _then;

  _$MediaCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? basedOn = fhirSentinel,
    Object? partOf = fhirSentinel,
    Object? status = fhirSentinel,
    Object? type = fhirSentinel,
    Object? modality = fhirSentinel,
    Object? view = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? createdX = fhirSentinel,
    Object? issued = fhirSentinel,
    Object? operator_ = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? deviceName = fhirSentinel,
    Object? device = fhirSentinel,
    Object? height = fhirSentinel,
    Object? width = fhirSentinel,
    Object? frames = fhirSentinel,
    Object? duration = fhirSentinel,
    Object? content = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Media(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        basedOn: identical(basedOn, fhirSentinel)
            ? _value.basedOn
            : basedOn as List<Reference>?,
        partOf: identical(partOf, fhirSentinel)
            ? _value.partOf
            : partOf as List<Reference>?,
        status: status as EventStatus? ?? _value.status,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        modality: identical(modality, fhirSentinel)
            ? _value.modality
            : modality as CodeableConcept?,
        view: identical(view, fhirSentinel)
            ? _value.view
            : view as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        createdX: identical(createdX, fhirSentinel)
            ? _value.createdX
            : createdX as FhirDateTime?,
        issued: identical(issued, fhirSentinel)
            ? _value.issued
            : issued as FhirInstant?,
        operator_: identical(operator_, fhirSentinel)
            ? _value.operator_
            : operator_ as Reference?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableConcept?,
        deviceName: identical(deviceName, fhirSentinel)
            ? _value.deviceName
            : deviceName as FhirString?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : device as Reference?,
        height: identical(height, fhirSentinel)
            ? _value.height
            : height as FhirPositiveInt?,
        width: identical(width, fhirSentinel)
            ? _value.width
            : width as FhirPositiveInt?,
        frames: identical(frames, fhirSentinel)
            ? _value.frames
            : frames as FhirPositiveInt?,
        duration: identical(duration, fhirSentinel)
            ? _value.duration
            : duration as FhirDecimal?,
        content: content as Attachment? ?? _value.content,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension MediaCopyWithExtension on Media {
  $MediaCopyWith<Media> get copyWith => _$MediaCopyWithImpl<Media>(
        this,
        (value) => value,
      );
}

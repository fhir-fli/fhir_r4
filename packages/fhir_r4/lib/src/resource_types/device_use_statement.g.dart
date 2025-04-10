// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'device_use_statement.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DeviceUseStatementCopyWith<T>
    extends $DomainResourceCopyWith<T> {
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
    DeviceUseStatementStatus? status,
    Reference? subject,
    List<Reference>? derivedFrom,
    Timing? timingX,
    FhirDateTime? recordedOn,
    Reference? source,
    Reference? device,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    CodeableConcept? bodySite,
    List<Annotation>? note,
    bool? disallowExtensions,
  });
}

class _$DeviceUseStatementCopyWithImpl<T>
    implements $DeviceUseStatementCopyWith<T> {
  final DeviceUseStatement _value;
  final T Function(DeviceUseStatement) _then;

  _$DeviceUseStatementCopyWithImpl(this._value, this._then);

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
    Object? status = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? derivedFrom = fhirSentinel,
    Object? timingX = fhirSentinel,
    Object? recordedOn = fhirSentinel,
    Object? source = fhirSentinel,
    Object? device = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? bodySite = fhirSentinel,
    Object? note = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DeviceUseStatement(
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
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as DeviceUseStatementStatus?) ?? _value.status,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : (subject as Reference?) ?? _value.subject,
        derivedFrom: identical(derivedFrom, fhirSentinel)
            ? _value.derivedFrom
            : derivedFrom as List<Reference>?,
        timingX: identical(timingX, fhirSentinel)
            ? _value.timingX
            : timingX as Timing?,
        recordedOn: identical(recordedOn, fhirSentinel)
            ? _value.recordedOn
            : recordedOn as FhirDateTime?,
        source: identical(source, fhirSentinel)
            ? _value.source
            : source as Reference?,
        device: identical(device, fhirSentinel)
            ? _value.device
            : (device as Reference?) ?? _value.device,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        bodySite: identical(bodySite, fhirSentinel)
            ? _value.bodySite
            : bodySite as CodeableConcept?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
      ),
    );
  }
}

extension DeviceUseStatementCopyWithExtension on DeviceUseStatement {
  $DeviceUseStatementCopyWith<DeviceUseStatement> get copyWith =>
      _$DeviceUseStatementCopyWithImpl<DeviceUseStatement>(
        this,
        (value) => value,
      );
}

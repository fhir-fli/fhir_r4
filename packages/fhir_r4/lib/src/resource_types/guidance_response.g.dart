// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'guidance_response.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $GuidanceResponseCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    Identifier? requestIdentifier,
    List<Identifier>? identifier,
    FhirUri? moduleX,
    GuidanceResponseStatus? status,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? occurrenceDateTime,
    Reference? performer,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<Annotation>? note,
    List<Reference>? evaluationMessage,
    Reference? outputParameters,
    Reference? result,
    List<DataRequirement>? dataRequirement,
    bool? disallowExtensions,
  });
}

class _$GuidanceResponseCopyWithImpl<T>
    implements $GuidanceResponseCopyWith<T> {
  final GuidanceResponse _value;
  final T Function(GuidanceResponse) _then;

  _$GuidanceResponseCopyWithImpl(this._value, this._then);

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
    Object? requestIdentifier = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? moduleX = fhirSentinel,
    Object? status = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? encounter = fhirSentinel,
    Object? occurrenceDateTime = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? note = fhirSentinel,
    Object? evaluationMessage = fhirSentinel,
    Object? outputParameters = fhirSentinel,
    Object? result = fhirSentinel,
    Object? dataRequirement = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      GuidanceResponse(
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
        requestIdentifier: identical(requestIdentifier, fhirSentinel)
            ? _value.requestIdentifier
            : requestIdentifier as Identifier?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        moduleX: moduleX as FhirUri? ?? _value.moduleX,
        status: status as GuidanceResponseStatus? ?? _value.status,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as Reference?,
        encounter: identical(encounter, fhirSentinel)
            ? _value.encounter
            : encounter as Reference?,
        occurrenceDateTime: identical(occurrenceDateTime, fhirSentinel)
            ? _value.occurrenceDateTime
            : occurrenceDateTime as FhirDateTime?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as Reference?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        evaluationMessage: identical(evaluationMessage, fhirSentinel)
            ? _value.evaluationMessage
            : evaluationMessage as List<Reference>?,
        outputParameters: identical(outputParameters, fhirSentinel)
            ? _value.outputParameters
            : outputParameters as Reference?,
        result: identical(result, fhirSentinel)
            ? _value.result
            : result as Reference?,
        dataRequirement: identical(dataRequirement, fhirSentinel)
            ? _value.dataRequirement
            : dataRequirement as List<DataRequirement>?,
      ),
    );
  }
}

extension GuidanceResponseCopyWithExtension on GuidanceResponse {
  $GuidanceResponseCopyWith<GuidanceResponse> get copyWith =>
      _$GuidanceResponseCopyWithImpl<GuidanceResponse>(
        this,
        (value) => value,
      );
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'body_structure.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $BodyStructureCopyWith<T> extends $DomainResourceCopyWith<T> {
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
    FhirBoolean? active,
    CodeableConcept? morphology,
    CodeableConcept? location,
    List<CodeableConcept>? locationQualifier,
    FhirString? description,
    List<Attachment>? image,
    Reference? patient,
    bool? disallowExtensions,
  });
}

class _$BodyStructureCopyWithImpl<T> implements $BodyStructureCopyWith<T> {
  final BodyStructure _value;
  final T Function(BodyStructure) _then;

  _$BodyStructureCopyWithImpl(this._value, this._then);

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
    Object? active = fhirSentinel,
    Object? morphology = fhirSentinel,
    Object? location = fhirSentinel,
    Object? locationQualifier = fhirSentinel,
    Object? description = fhirSentinel,
    Object? image = fhirSentinel,
    Object? patient = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      BodyStructure(
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
        active: identical(active, fhirSentinel)
            ? _value.active
            : active as FhirBoolean?,
        morphology: identical(morphology, fhirSentinel)
            ? _value.morphology
            : morphology as CodeableConcept?,
        location: identical(location, fhirSentinel)
            ? _value.location
            : location as CodeableConcept?,
        locationQualifier: identical(locationQualifier, fhirSentinel)
            ? _value.locationQualifier
            : locationQualifier as List<CodeableConcept>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        image: identical(image, fhirSentinel)
            ? _value.image
            : image as List<Attachment>?,
        patient: patient as Reference? ?? _value.patient,
      ),
    );
  }
}

extension BodyStructureCopyWithExtension on BodyStructure {
  $BodyStructureCopyWith<BodyStructure> get copyWith =>
      _$BodyStructureCopyWithImpl<BodyStructure>(
        this,
        (value) => value,
      );
}

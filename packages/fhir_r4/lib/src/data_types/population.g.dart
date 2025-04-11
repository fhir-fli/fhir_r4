// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'population.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $PopulationCopyWith<T> extends $BackboneTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Range? ageX,
    CodeableConcept? gender,
    CodeableConcept? race,
    CodeableConcept? physiologicalCondition,
    bool? disallowExtensions,
  });
}

class _$PopulationCopyWithImpl<T> implements $PopulationCopyWith<T> {
  final Population _value;
  final T Function(Population) _then;

  _$PopulationCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? ageX = fhirSentinel,
    Object? gender = fhirSentinel,
    Object? race = fhirSentinel,
    Object? physiologicalCondition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Population(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        ageX: identical(ageX, fhirSentinel) ? _value.ageX : ageX as Range?,
        gender: identical(gender, fhirSentinel)
            ? _value.gender
            : gender as CodeableConcept?,
        race: identical(race, fhirSentinel)
            ? _value.race
            : race as CodeableConcept?,
        physiologicalCondition: identical(physiologicalCondition, fhirSentinel)
            ? _value.physiologicalCondition
            : physiologicalCondition as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension PopulationCopyWithExtension on Population {
  $PopulationCopyWith<Population> get copyWith =>
      _$PopulationCopyWithImpl<Population>(
        this,
        (value) => value,
      );
}

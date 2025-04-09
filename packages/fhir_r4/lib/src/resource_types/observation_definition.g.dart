// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'observation_definition.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ObservationDefinitionCopyWith<T>
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
    List<CodeableConcept>? category,
    CodeableConcept? code,
    List<Identifier>? identifier,
    List<ObservationDataType>? permittedDataType,
    FhirBoolean? multipleResultsAllowed,
    CodeableConcept? method,
    FhirString? preferredReportName,
    ObservationDefinitionQuantitativeDetails? quantitativeDetails,
    List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,
    Reference? validCodedValueSet,
    Reference? normalCodedValueSet,
    Reference? abnormalCodedValueSet,
    Reference? criticalCodedValueSet,
    bool? disallowExtensions,
  });
}

class _$ObservationDefinitionCopyWithImpl<T>
    implements $ObservationDefinitionCopyWith<T> {
  final ObservationDefinition _value;
  final T Function(ObservationDefinition) _then;

  _$ObservationDefinitionCopyWithImpl(this._value, this._then);

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
    Object? category = fhirSentinel,
    Object? code = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? permittedDataType = fhirSentinel,
    Object? multipleResultsAllowed = fhirSentinel,
    Object? method = fhirSentinel,
    Object? preferredReportName = fhirSentinel,
    Object? quantitativeDetails = fhirSentinel,
    Object? qualifiedInterval = fhirSentinel,
    Object? validCodedValueSet = fhirSentinel,
    Object? normalCodedValueSet = fhirSentinel,
    Object? abnormalCodedValueSet = fhirSentinel,
    Object? criticalCodedValueSet = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ObservationDefinition(
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
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<CodeableConcept>?,
        code: code as CodeableConcept? ?? _value.code,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        permittedDataType: identical(permittedDataType, fhirSentinel)
            ? _value.permittedDataType
            : permittedDataType as List<ObservationDataType>?,
        multipleResultsAllowed: identical(multipleResultsAllowed, fhirSentinel)
            ? _value.multipleResultsAllowed
            : multipleResultsAllowed as FhirBoolean?,
        method: identical(method, fhirSentinel)
            ? _value.method
            : method as CodeableConcept?,
        preferredReportName: identical(preferredReportName, fhirSentinel)
            ? _value.preferredReportName
            : preferredReportName as FhirString?,
        quantitativeDetails: identical(quantitativeDetails, fhirSentinel)
            ? _value.quantitativeDetails
            : quantitativeDetails as ObservationDefinitionQuantitativeDetails?,
        qualifiedInterval: identical(qualifiedInterval, fhirSentinel)
            ? _value.qualifiedInterval
            : qualifiedInterval
                as List<ObservationDefinitionQualifiedInterval>?,
        validCodedValueSet: identical(validCodedValueSet, fhirSentinel)
            ? _value.validCodedValueSet
            : validCodedValueSet as Reference?,
        normalCodedValueSet: identical(normalCodedValueSet, fhirSentinel)
            ? _value.normalCodedValueSet
            : normalCodedValueSet as Reference?,
        abnormalCodedValueSet: identical(abnormalCodedValueSet, fhirSentinel)
            ? _value.abnormalCodedValueSet
            : abnormalCodedValueSet as Reference?,
        criticalCodedValueSet: identical(criticalCodedValueSet, fhirSentinel)
            ? _value.criticalCodedValueSet
            : criticalCodedValueSet as Reference?,
      ),
    );
  }
}

extension ObservationDefinitionCopyWithExtension on ObservationDefinition {
  $ObservationDefinitionCopyWith<ObservationDefinition> get copyWith =>
      _$ObservationDefinitionCopyWithImpl<ObservationDefinition>(
        this,
        (value) => value,
      );
}

abstract class $ObservationDefinitionQuantitativeDetailsCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? customaryUnit,
    CodeableConcept? unit,
    FhirDecimal? conversionFactor,
    FhirInteger? decimalPrecision,
    bool? disallowExtensions,
  });
}

class _$ObservationDefinitionQuantitativeDetailsCopyWithImpl<T>
    implements $ObservationDefinitionQuantitativeDetailsCopyWith<T> {
  final ObservationDefinitionQuantitativeDetails _value;
  final T Function(ObservationDefinitionQuantitativeDetails) _then;

  _$ObservationDefinitionQuantitativeDetailsCopyWithImpl(
      this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? customaryUnit = fhirSentinel,
    Object? unit = fhirSentinel,
    Object? conversionFactor = fhirSentinel,
    Object? decimalPrecision = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ObservationDefinitionQuantitativeDetails(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        customaryUnit: identical(customaryUnit, fhirSentinel)
            ? _value.customaryUnit
            : customaryUnit as CodeableConcept?,
        unit: identical(unit, fhirSentinel)
            ? _value.unit
            : unit as CodeableConcept?,
        conversionFactor: identical(conversionFactor, fhirSentinel)
            ? _value.conversionFactor
            : conversionFactor as FhirDecimal?,
        decimalPrecision: identical(decimalPrecision, fhirSentinel)
            ? _value.decimalPrecision
            : decimalPrecision as FhirInteger?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ObservationDefinitionQuantitativeDetailsCopyWithExtension
    on ObservationDefinitionQuantitativeDetails {
  $ObservationDefinitionQuantitativeDetailsCopyWith<
          ObservationDefinitionQuantitativeDetails>
      get copyWith => _$ObservationDefinitionQuantitativeDetailsCopyWithImpl<
              ObservationDefinitionQuantitativeDetails>(
            this,
            (value) => value,
          );
}

abstract class $ObservationDefinitionQualifiedIntervalCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ObservationRangeCategory? category,
    Range? range,
    CodeableConcept? context,
    List<CodeableConcept>? appliesTo,
    AdministrativeGender? gender,
    Range? age,
    Range? gestationalAge,
    FhirString? condition,
    bool? disallowExtensions,
  });
}

class _$ObservationDefinitionQualifiedIntervalCopyWithImpl<T>
    implements $ObservationDefinitionQualifiedIntervalCopyWith<T> {
  final ObservationDefinitionQualifiedInterval _value;
  final T Function(ObservationDefinitionQualifiedInterval) _then;

  _$ObservationDefinitionQualifiedIntervalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? category = fhirSentinel,
    Object? range = fhirSentinel,
    Object? context = fhirSentinel,
    Object? appliesTo = fhirSentinel,
    Object? gender = fhirSentinel,
    Object? age = fhirSentinel,
    Object? gestationalAge = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ObservationDefinitionQualifiedInterval(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as ObservationRangeCategory?,
        range: identical(range, fhirSentinel) ? _value.range : range as Range?,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as CodeableConcept?,
        appliesTo: identical(appliesTo, fhirSentinel)
            ? _value.appliesTo
            : appliesTo as List<CodeableConcept>?,
        gender: identical(gender, fhirSentinel)
            ? _value.gender
            : gender as AdministrativeGender?,
        age: identical(age, fhirSentinel) ? _value.age : age as Range?,
        gestationalAge: identical(gestationalAge, fhirSentinel)
            ? _value.gestationalAge
            : gestationalAge as Range?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ObservationDefinitionQualifiedIntervalCopyWithExtension
    on ObservationDefinitionQualifiedInterval {
  $ObservationDefinitionQualifiedIntervalCopyWith<
          ObservationDefinitionQualifiedInterval>
      get copyWith => _$ObservationDefinitionQualifiedIntervalCopyWithImpl<
              ObservationDefinitionQualifiedInterval>(
            this,
            (value) => value,
          );
}

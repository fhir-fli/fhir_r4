// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'observation_definition.freezed.dart';
part 'observation_definition.g.dart';

/// [ObservationDefinition] Set of definitional characteristics for a kind of
@freezed
class ObservationDefinition extends DomainResource
    with _$ObservationDefinition {
  /// [ObservationDefinition] Set of definitional characteristics for a kind of
  ObservationDefinition._();

  /// [ObservationDefinition] Set of definitional characteristics for a kind of
  /// observation or measurement produced or consumed by an orderable health
  ///  care service.
  ///
  /// [resourceType] This is a ObservationDefinition resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [category] A code that classifies the general type of observation.
  ///
  /// [code] Describes what will be observed. Sometimes this is called the
  ///  observation "name".
  ///
  /// [identifier] A unique identifier assigned to this ObservationDefinition
  ///  artifact.
  ///
  /// [permittedDataType] The data types allowed for the value element of the
  ///  instance observations conforming to this ObservationDefinition.
  ///
  /// [permittedDataTypeElement] Extensions for permittedDataType
  ///
  /// [multipleResultsAllowed] Multiple results allowed for observations
  ///  conforming to this ObservationDefinition.
  ///
  /// [multipleResultsAllowedElement] Extensions for multipleResultsAllowed
  ///
  /// [method] The method or technique used to perform the observation.
  ///
  /// [preferredReportName] The preferred name to be used when reporting the
  ///  results of observations conforming to this ObservationDefinition.
  ///
  /// [preferredReportNameElement] Extensions for preferredReportName
  ///
  /// [quantitativeDetails] Characteristics for quantitative results of this
  ///  observation.
  ///
  /// [qualifiedInterval] Multiple  ranges of results qualified by different
  /// contexts for ordinal or continuous observations conforming to this
  ///  ObservationDefinition.
  ///
  /// [validCodedValueSet] The set of valid coded results for the observations
  ///  conforming to this ObservationDefinition.
  ///
  /// [normalCodedValueSet] The set of normal coded results for the
  ///  observations conforming to this ObservationDefinition.
  ///
  /// [abnormalCodedValueSet] The set of abnormal coded results for the
  ///  observation conforming to this ObservationDefinition.
  ///
  /// [criticalCodedValueSet] The set of critical coded results for the
  ///  observation conforming to this ObservationDefinition.
  const factory ObservationDefinition({
    @Default(R4ResourceType.ObservationDefinition)
    @JsonKey(unknownEnumValue: R4ResourceType.ObservationDefinition)

    /// [resourceType] This is a ObservationDefinition resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the resource and that modifies the
    /// understanding of the element that contains it and/or the understanding of
    /// the containing element's descendants. Usually modifier elements provide
    /// negation or qualification. To make the use of extensions safe and
    /// manageable, there is a strict set of governance applied to the definition
    /// and use of extensions. Though any implementer is allowed to define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [category] A code that classifies the general type of observation.
    List<CodeableConcept>? category,

    /// [code] Describes what will be observed. Sometimes this is called the
    ///  observation "name".
    required CodeableConcept code,

    /// [identifier] A unique identifier assigned to this ObservationDefinition
    ///  artifact.
    List<Identifier>? identifier,

    /// [permittedDataType] The data types allowed for the value element of the
    ///  instance observations conforming to this ObservationDefinition.
    List<FhirCode>? permittedDataType,
    @JsonKey(name: '_permittedDataType')

    /// [permittedDataTypeElement] Extensions for permittedDataType
    List<PrimitiveElement>? permittedDataTypeElement,

    /// [multipleResultsAllowed] Multiple results allowed for observations
    ///  conforming to this ObservationDefinition.
    FhirBoolean? multipleResultsAllowed,
    @JsonKey(name: '_multipleResultsAllowed')

    /// [multipleResultsAllowedElement] Extensions for multipleResultsAllowed
    PrimitiveElement? multipleResultsAllowedElement,

    /// [method] The method or technique used to perform the observation.
    CodeableConcept? method,

    /// [preferredReportName] The preferred name to be used when reporting the
    ///  results of observations conforming to this ObservationDefinition.
    String? preferredReportName,

    /// [preferredReportNameElement] Extensions for preferredReportName
    @JsonKey(name: '_preferredReportName')
    PrimitiveElement? preferredReportNameElement,

    /// [quantitativeDetails] Characteristics for quantitative results of this
    ///  observation.
    ObservationDefinitionQuantitativeDetails? quantitativeDetails,

    /// [qualifiedInterval] Multiple  ranges of results qualified by different
    /// contexts for ordinal or continuous observations conforming to this
    ///  ObservationDefinition.
    List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,

    /// [validCodedValueSet] The set of valid coded results for the observations
    ///  conforming to this ObservationDefinition.
    Reference? validCodedValueSet,

    /// [normalCodedValueSet] The set of normal coded results for the
    ///  observations conforming to this ObservationDefinition.
    Reference? normalCodedValueSet,

    /// [abnormalCodedValueSet] The set of abnormal coded results for the
    ///  observation conforming to this ObservationDefinition.
    Reference? abnormalCodedValueSet,

    /// [criticalCodedValueSet] The set of critical coded results for the
    ///  observation conforming to this ObservationDefinition.
    Reference? criticalCodedValueSet,
  }) = _ObservationDefinition;

  @override
  String get fhirType => 'ObservationDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ObservationDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ObservationDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ObservationDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ObservationDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinition.fromJson(Map<String, dynamic> json) =>
      _$ObservationDefinitionFromJson(json);

  /// Acts like a constructor, returns a [ObservationDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ObservationDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ObservationDefinitionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta, bool versionIdAsTime = false}) =>
      copyWith(meta: updateFhirMetaVersion(oldMeta ?? meta, versionIdAsTime));
}

@freezed
@freezed
class ObservationDefinitionQuantitativeDetails extends BackboneElement
    with _$ObservationDefinitionQuantitativeDetails {
  ObservationDefinitionQuantitativeDetails._();

  /// [ObservationDefinitionQuantitativeDetails] Set of definitional
  /// characteristics for a kind of observation or measurement produced or
  ///  consumed by an orderable health care service.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [customaryUnit] Customary unit used to report quantitative results of
  ///  observations conforming to this ObservationDefinition.
  ///
  /// [unit] SI unit used to report quantitative results of observations
  ///  conforming to this ObservationDefinition.
  ///
  /// [conversionFactor] Factor for converting value expressed with SI unit to
  ///  value expressed with customary unit.
  ///
  /// [conversionFactorElement] Extensions for conversionFactor
  ///
  /// [decimalPrecision] Number of digits after decimal separator when the
  ///  results of such observations are of type Quantity.
  ///
  /// [decimalPrecisionElement] Extensions for decimalPrecision
  const factory ObservationDefinitionQuantitativeDetails({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [customaryUnit] Customary unit used to report quantitative results of
    ///  observations conforming to this ObservationDefinition.
    CodeableConcept? customaryUnit,

    /// [unit] SI unit used to report quantitative results of observations
    ///  conforming to this ObservationDefinition.
    CodeableConcept? unit,

    /// [conversionFactor] Factor for converting value expressed with SI unit to
    ///  value expressed with customary unit.
    FhirDecimal? conversionFactor,

    /// [conversionFactorElement] Extensions for conversionFactor
    @JsonKey(name: '_conversionFactor')
    PrimitiveElement? conversionFactorElement,

    /// [decimalPrecision] Number of digits after decimal separator when the
    ///  results of such observations are of type Quantity.
    FhirInteger? decimalPrecision,

    /// [decimalPrecisionElement] Extensions for decimalPrecision
    @JsonKey(name: '_decimalPrecision')
    PrimitiveElement? decimalPrecisionElement,
  }) = _ObservationDefinitionQuantitativeDetails;

  @override
  String get fhirType => 'ObservationDefinitionQuantitativeDetails';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ObservationDefinitionQuantitativeDetails.fromYaml(dynamic yaml) => yaml
          is String
      ? ObservationDefinitionQuantitativeDetails.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ObservationDefinitionQuantitativeDetails.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ObservationDefinitionQuantitativeDetails cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory ObservationDefinitionQuantitativeDetails.fromJson(
          Map<String, dynamic> json) =>
      _$ObservationDefinitionQuantitativeDetailsFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

@freezed
@freezed
class ObservationDefinitionQualifiedInterval extends BackboneElement
    with _$ObservationDefinitionQualifiedInterval {
  ObservationDefinitionQualifiedInterval._();

  /// [ObservationDefinitionQualifiedInterval] Set of definitional
  /// characteristics for a kind of observation or measurement produced or
  ///  consumed by an orderable health care service.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [category] The category of interval of values for continuous or ordinal
  ///  observations conforming to this ObservationDefinition.
  ///
  /// [categoryElement] Extensions for category
  ///
  /// [range] The low and high values determining the interval. There may be
  ///  only one of the two.
  ///
  /// [context] Codes to indicate the health context the range applies to. For
  ///  example, the normal or therapeutic range.
  ///
  /// [appliesTo] Codes to indicate the target population this reference range
  ///  applies to.
  ///
  /// [gender] Sex of the population the range applies to.
  ///
  /// [genderElement] Extensions for gender
  ///
  /// [age] The age at which this reference range is applicable. This is a
  ///  neonatal age (e.g. number of weeks at term) if the meaning says so.
  ///
  /// [gestationalAge] The gestational age to which this reference range is
  ///  applicable, in the context of pregnancy.
  ///
  /// [condition] Text based condition for which the reference range is valid.
  ///
  /// [conditionElement] Extensions for condition
  const factory ObservationDefinitionQualifiedInterval({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [category] The category of interval of values for continuous or ordinal
    ///  observations conforming to this ObservationDefinition.
    FhirCode? category,

    /// [categoryElement] Extensions for category
    @JsonKey(name: '_category') PrimitiveElement? categoryElement,

    /// [range] The low and high values determining the interval. There may be
    ///  only one of the two.
    Range? range,

    /// [context] Codes to indicate the health context the range applies to. For
    ///  example, the normal or therapeutic range.
    CodeableConcept? context,

    /// [appliesTo] Codes to indicate the target population this reference range
    ///  applies to.
    List<CodeableConcept>? appliesTo,

    /// [gender] Sex of the population the range applies to.
    FhirCode? gender,

    /// [genderElement] Extensions for gender
    @JsonKey(name: '_gender') PrimitiveElement? genderElement,

    /// [age] The age at which this reference range is applicable. This is a
    ///  neonatal age (e.g. number of weeks at term) if the meaning says so.
    Range? age,

    /// [gestationalAge] The gestational age to which this reference range is
    ///  applicable, in the context of pregnancy.
    Range? gestationalAge,

    /// [condition] Text based condition for which the reference range is valid.
    String? condition,

    /// [conditionElement] Extensions for condition
    @JsonKey(name: '_condition') PrimitiveElement? conditionElement,
  }) = _ObservationDefinitionQualifiedInterval;

  @override
  String get fhirType => 'ObservationDefinitionQualifiedInterval';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ObservationDefinitionQualifiedInterval.fromYaml(dynamic yaml) => yaml
          is String
      ? ObservationDefinitionQualifiedInterval.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ObservationDefinitionQualifiedInterval.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ObservationDefinitionQualifiedInterval cannot be constructed from input provided,'
              ' it is neither a yaml string or a yaml map.');

  factory ObservationDefinitionQualifiedInterval.fromJson(
          Map<String, dynamic> json) =>
      _$ObservationDefinitionQualifiedIntervalFromJson(json);

  @override
  FhirBase clone() => copyWith();

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

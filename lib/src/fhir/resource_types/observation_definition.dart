import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'observation_definition.g.dart';

/// [ObservationDefinition] /// Set of definitional characteristics for a kind of observation or
/// measurement produced or consumed by an orderable health care service.
@JsonSerializable()
class ObservationDefinition extends DomainResource {
  ObservationDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.code,
    this.identifier,
    this.permittedDataType,
    this.permittedDataTypeElement,
    this.multipleResultsAllowed,
    this.multipleResultsAllowedElement,
    this.method,
    this.preferredReportName,
    this.preferredReportNameElement,
    this.quantitativeDetails,
    this.qualifiedInterval,
    this.validCodedValueSet,
    this.normalCodedValueSet,
    this.abnormalCodedValueSet,
    this.criticalCodedValueSet,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.ObservationDefinition,
            fhirType: 'ObservationDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// A code that classifies the general type of observation.
  @JsonKey(name: 'category')
  final List<ObservationCategoryCodes>? category;

  /// [code] /// Describes what will be observed. Sometimes this is called the observation
  /// "name".
  @JsonKey(name: 'code')
  final CodeableConcept code;

  /// [identifier] /// A unique identifier assigned to this ObservationDefinition artifact.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [permittedDataType] /// The data types allowed for the value element of the instance observations
  /// conforming to this ObservationDefinition.
  @JsonKey(name: 'permittedDataType')
  final List<ObservationDataType>? permittedDataType;
  @JsonKey(name: '_permittedDataType')
  final List<Element>? permittedDataTypeElement;

  /// [multipleResultsAllowed] /// Multiple results allowed for observations conforming to this
  /// ObservationDefinition.
  @JsonKey(name: 'multipleResultsAllowed')
  final FhirBoolean? multipleResultsAllowed;
  @JsonKey(name: '_multipleResultsAllowed')
  final Element? multipleResultsAllowedElement;

  /// [method] /// The method or technique used to perform the observation.
  @JsonKey(name: 'method')
  final CodeableConcept? method;

  /// [preferredReportName] /// The preferred name to be used when reporting the results of observations
  /// conforming to this ObservationDefinition.
  @JsonKey(name: 'preferredReportName')
  final FhirString? preferredReportName;
  @JsonKey(name: '_preferredReportName')
  final Element? preferredReportNameElement;

  /// [quantitativeDetails] /// Characteristics for quantitative results of this observation.
  @JsonKey(name: 'quantitativeDetails')
  final ObservationDefinitionQuantitativeDetails? quantitativeDetails;

  /// [qualifiedInterval] /// Multiple ranges of results qualified by different contexts for ordinal or
  /// continuous observations conforming to this ObservationDefinition.
  @JsonKey(name: 'qualifiedInterval')
  final List<ObservationDefinitionQualifiedInterval>? qualifiedInterval;

  /// [validCodedValueSet] /// The set of valid coded results for the observations conforming to this
  /// ObservationDefinition.
  @JsonKey(name: 'validCodedValueSet')
  final Reference? validCodedValueSet;

  /// [normalCodedValueSet] /// The set of normal coded results for the observations conforming to this
  /// ObservationDefinition.
  @JsonKey(name: 'normalCodedValueSet')
  final Reference? normalCodedValueSet;

  /// [abnormalCodedValueSet] /// The set of abnormal coded results for the observation conforming to this
  /// ObservationDefinition.
  @JsonKey(name: 'abnormalCodedValueSet')
  final Reference? abnormalCodedValueSet;

  /// [criticalCodedValueSet] /// The set of critical coded results for the observation conforming to this
  /// ObservationDefinition.
  @JsonKey(name: 'criticalCodedValueSet')
  final Reference? criticalCodedValueSet;
  factory ObservationDefinition.fromJson(Map<String, dynamic> json) =>
      _$ObservationDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ObservationDefinitionToJson(this);

  @override
  ObservationDefinition clone() => throw UnimplementedError();
  @override
  ObservationDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<ObservationCategoryCodes>? category,
    CodeableConcept? code,
    List<Identifier>? identifier,
    List<ObservationDataType>? permittedDataType,
    List<Element>? permittedDataTypeElement,
    FhirBoolean? multipleResultsAllowed,
    Element? multipleResultsAllowedElement,
    CodeableConcept? method,
    FhirString? preferredReportName,
    Element? preferredReportNameElement,
    ObservationDefinitionQuantitativeDetails? quantitativeDetails,
    List<ObservationDefinitionQualifiedInterval>? qualifiedInterval,
    Reference? validCodedValueSet,
    Reference? normalCodedValueSet,
    Reference? abnormalCodedValueSet,
    Reference? criticalCodedValueSet,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ObservationDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      code: code ?? this.code,
      identifier: identifier ?? this.identifier,
      permittedDataType: permittedDataType ?? this.permittedDataType,
      permittedDataTypeElement:
          permittedDataTypeElement ?? this.permittedDataTypeElement,
      multipleResultsAllowed:
          multipleResultsAllowed ?? this.multipleResultsAllowed,
      multipleResultsAllowedElement:
          multipleResultsAllowedElement ?? this.multipleResultsAllowedElement,
      method: method ?? this.method,
      preferredReportName: preferredReportName ?? this.preferredReportName,
      preferredReportNameElement:
          preferredReportNameElement ?? this.preferredReportNameElement,
      quantitativeDetails: quantitativeDetails ?? this.quantitativeDetails,
      qualifiedInterval: qualifiedInterval ?? this.qualifiedInterval,
      validCodedValueSet: validCodedValueSet ?? this.validCodedValueSet,
      normalCodedValueSet: normalCodedValueSet ?? this.normalCodedValueSet,
      abnormalCodedValueSet:
          abnormalCodedValueSet ?? this.abnormalCodedValueSet,
      criticalCodedValueSet:
          criticalCodedValueSet ?? this.criticalCodedValueSet,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ObservationDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ObservationDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ObservationDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ObservationDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ObservationDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ObservationDefinitionQuantitativeDetails] /// Characteristics for quantitative results of this observation.
@JsonSerializable()
class ObservationDefinitionQuantitativeDetails extends BackboneElement {
  ObservationDefinitionQuantitativeDetails({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.conversionFactorElement,
    this.decimalPrecision,
    this.decimalPrecisionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ObservationDefinitionQuantitativeDetails');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [customaryUnit] /// Customary unit used to report quantitative results of observations
  /// conforming to this ObservationDefinition.
  @JsonKey(name: 'customaryUnit')
  final CodeableConcept? customaryUnit;

  /// [unit] /// SI unit used to report quantitative results of observations conforming to
  /// this ObservationDefinition.
  @JsonKey(name: 'unit')
  final CodeableConcept? unit;

  /// [conversionFactor] /// Factor for converting value expressed with SI unit to value expressed with
  /// customary unit.
  @JsonKey(name: 'conversionFactor')
  final FhirDecimal? conversionFactor;
  @JsonKey(name: '_conversionFactor')
  final Element? conversionFactorElement;

  /// [decimalPrecision] /// Number of digits after decimal separator when the results of such
  /// observations are of type Quantity.
  @JsonKey(name: 'decimalPrecision')
  final FhirInteger? decimalPrecision;
  @JsonKey(name: '_decimalPrecision')
  final Element? decimalPrecisionElement;
  factory ObservationDefinitionQuantitativeDetails.fromJson(
          Map<String, dynamic> json) =>
      _$ObservationDefinitionQuantitativeDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ObservationDefinitionQuantitativeDetailsToJson(this);

  @override
  ObservationDefinitionQuantitativeDetails clone() =>
      throw UnimplementedError();
  @override
  ObservationDefinitionQuantitativeDetails copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? customaryUnit,
    CodeableConcept? unit,
    FhirDecimal? conversionFactor,
    Element? conversionFactorElement,
    FhirInteger? decimalPrecision,
    Element? decimalPrecisionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ObservationDefinitionQuantitativeDetails(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      customaryUnit: customaryUnit ?? this.customaryUnit,
      unit: unit ?? this.unit,
      conversionFactor: conversionFactor ?? this.conversionFactor,
      conversionFactorElement:
          conversionFactorElement ?? this.conversionFactorElement,
      decimalPrecision: decimalPrecision ?? this.decimalPrecision,
      decimalPrecisionElement:
          decimalPrecisionElement ?? this.decimalPrecisionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ObservationDefinitionQuantitativeDetails.fromYaml(dynamic yaml) => yaml
          is String
      ? ObservationDefinitionQuantitativeDetails.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ObservationDefinitionQuantitativeDetails.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ObservationDefinitionQuantitativeDetails cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ObservationDefinitionQuantitativeDetails.fromJsonString(
      String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationDefinitionQuantitativeDetails.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ObservationDefinitionQualifiedInterval] /// Multiple ranges of results qualified by different contexts for ordinal or
/// continuous observations conforming to this ObservationDefinition.
@JsonSerializable()
class ObservationDefinitionQualifiedInterval extends BackboneElement {
  ObservationDefinitionQualifiedInterval({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.categoryElement,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.genderElement,
    this.age,
    this.gestationalAge,
    this.condition,
    this.conditionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ObservationDefinitionQualifiedInterval');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [category] /// The category of interval of values for continuous or ordinal observations
  /// conforming to this ObservationDefinition.
  @JsonKey(name: 'category')
  final ObservationRangeCategory? category;
  @JsonKey(name: '_category')
  final Element? categoryElement;

  /// [range] /// The low and high values determining the interval. There may be only one of
  /// the two.
  @JsonKey(name: 'range')
  final Range? range;

  /// [context] /// Codes to indicate the health context the range applies to. For example, the
  /// normal or therapeutic range.
  @JsonKey(name: 'context')
  final ObservationReferenceRangeMeaningCodes? context;

  /// [appliesTo] /// Codes to indicate the target population this reference range applies to.
  @JsonKey(name: 'appliesTo')
  final List<ObservationReferenceRangeAppliesToCodes>? appliesTo;

  /// [gender] /// Sex of the population the range applies to.
  @JsonKey(name: 'gender')
  final AdministrativeGender? gender;
  @JsonKey(name: '_gender')
  final Element? genderElement;

  /// [age] /// The age at which this reference range is applicable. This is a neonatal age
  /// (e.g. number of weeks at term) if the meaning says so.
  @JsonKey(name: 'age')
  final Range? age;

  /// [gestationalAge] /// The gestational age to which this reference range is applicable, in the
  /// context of pregnancy.
  @JsonKey(name: 'gestationalAge')
  final Range? gestationalAge;

  /// [condition] /// Text based condition for which the reference range is valid.
  @JsonKey(name: 'condition')
  final FhirString? condition;
  @JsonKey(name: '_condition')
  final Element? conditionElement;
  factory ObservationDefinitionQualifiedInterval.fromJson(
          Map<String, dynamic> json) =>
      _$ObservationDefinitionQualifiedIntervalFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ObservationDefinitionQualifiedIntervalToJson(this);

  @override
  ObservationDefinitionQualifiedInterval clone() => throw UnimplementedError();
  @override
  ObservationDefinitionQualifiedInterval copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ObservationRangeCategory? category,
    Element? categoryElement,
    Range? range,
    ObservationReferenceRangeMeaningCodes? context,
    List<ObservationReferenceRangeAppliesToCodes>? appliesTo,
    AdministrativeGender? gender,
    Element? genderElement,
    Range? age,
    Range? gestationalAge,
    FhirString? condition,
    Element? conditionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ObservationDefinitionQualifiedInterval(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      categoryElement: categoryElement ?? this.categoryElement,
      range: range ?? this.range,
      context: context ?? this.context,
      appliesTo: appliesTo ?? this.appliesTo,
      gender: gender ?? this.gender,
      genderElement: genderElement ?? this.genderElement,
      age: age ?? this.age,
      gestationalAge: gestationalAge ?? this.gestationalAge,
      condition: condition ?? this.condition,
      conditionElement: conditionElement ?? this.conditionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ObservationDefinitionQualifiedInterval.fromYaml(dynamic yaml) => yaml
          is String
      ? ObservationDefinitionQualifiedInterval.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ObservationDefinitionQualifiedInterval.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ObservationDefinitionQualifiedInterval cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ObservationDefinitionQualifiedInterval.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationDefinitionQualifiedInterval.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

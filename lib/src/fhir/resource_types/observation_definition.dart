import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [ObservationDefinition] /// Set of definitional characteristics for a kind of observation or
/// measurement produced or consumed by an orderable health care service.
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
  }) : super(resourceType: R4ResourceType.ObservationDefinition);

  @override
  String get fhirType => 'ObservationDefinition';

  @Id()
  int dbId = 0;

  /// [category] /// A code that classifies the general type of observation.
  final List<CodeableConcept>? category;

  /// [code] /// Describes what will be observed. Sometimes this is called the observation
  /// "name".
  final CodeableConcept code;

  /// [identifier] /// A unique identifier assigned to this ObservationDefinition artifact.
  final List<Identifier>? identifier;

  /// [permittedDataType] /// The data types allowed for the value element of the instance observations
  /// conforming to this ObservationDefinition.
  final List<ObservationDataType>? permittedDataType;
  final List<Element>? permittedDataTypeElement;

  /// [multipleResultsAllowed] /// Multiple results allowed for observations conforming to this
  /// ObservationDefinition.
  final FhirBoolean? multipleResultsAllowed;
  final Element? multipleResultsAllowedElement;

  /// [method] /// The method or technique used to perform the observation.
  final CodeableConcept? method;

  /// [preferredReportName] /// The preferred name to be used when reporting the results of observations
  /// conforming to this ObservationDefinition.
  final FhirString? preferredReportName;
  final Element? preferredReportNameElement;

  /// [quantitativeDetails] /// Characteristics for quantitative results of this observation.
  final ObservationDefinitionQuantitativeDetails? quantitativeDetails;

  /// [qualifiedInterval] /// Multiple ranges of results qualified by different contexts for ordinal or
  /// continuous observations conforming to this ObservationDefinition.
  final List<ObservationDefinitionQualifiedInterval>? qualifiedInterval;

  /// [validCodedValueSet] /// The set of valid coded results for the observations conforming to this
  /// ObservationDefinition.
  final Reference? validCodedValueSet;

  /// [normalCodedValueSet] /// The set of normal coded results for the observations conforming to this
  /// ObservationDefinition.
  final Reference? normalCodedValueSet;

  /// [abnormalCodedValueSet] /// The set of abnormal coded results for the observation conforming to this
  /// ObservationDefinition.
  final Reference? abnormalCodedValueSet;

  /// [criticalCodedValueSet] /// The set of critical coded results for the observation conforming to this
  /// ObservationDefinition.
  final Reference? criticalCodedValueSet;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (category != null && category!.isNotEmpty) {
      json['category'] =
          category!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    json['code'] = code.toJson();
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    if (permittedDataType != null && permittedDataType!.isNotEmpty) {
      json['permittedDataType'] = permittedDataType!
          .map<dynamic>((ObservationDataType v) => v.toJson())
          .toList();
    }
    if (multipleResultsAllowed?.value != null) {
      json['multipleResultsAllowed'] = multipleResultsAllowed!.value;
    }
    if (multipleResultsAllowedElement != null) {
      json['_multipleResultsAllowed'] = multipleResultsAllowedElement!.toJson();
    }
    if (method != null) {
      json['method'] = method!.toJson();
    }
    if (preferredReportName?.value != null) {
      json['preferredReportName'] = preferredReportName!.value;
    }
    if (preferredReportNameElement != null) {
      json['_preferredReportName'] = preferredReportNameElement!.toJson();
    }
    if (quantitativeDetails != null) {
      json['quantitativeDetails'] = quantitativeDetails!.toJson();
    }
    if (qualifiedInterval != null && qualifiedInterval!.isNotEmpty) {
      json['qualifiedInterval'] = qualifiedInterval!
          .map<dynamic>(
              (ObservationDefinitionQualifiedInterval v) => v.toJson())
          .toList();
    }
    if (validCodedValueSet != null) {
      json['validCodedValueSet'] = validCodedValueSet!.toJson();
    }
    if (normalCodedValueSet != null) {
      json['normalCodedValueSet'] = normalCodedValueSet!.toJson();
    }
    if (abnormalCodedValueSet != null) {
      json['abnormalCodedValueSet'] = abnormalCodedValueSet!.toJson();
    }
    if (criticalCodedValueSet != null) {
      json['criticalCodedValueSet'] = criticalCodedValueSet!.toJson();
    }
    return json;
  }

  factory ObservationDefinition.fromJson(Map<String, dynamic> json) {
    return ObservationDefinition(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: CodeableConcept.fromJson(json['code'] as Map<String, dynamic>),
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      permittedDataType: json['permittedDataType'] != null
          ? (json['permittedDataType'] as List<dynamic>)
              .map<ObservationDataType>((dynamic v) =>
                  ObservationDataType.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      multipleResultsAllowed: json['multipleResultsAllowed'] != null
          ? FhirBoolean(json['multipleResultsAllowed'])
          : null,
      multipleResultsAllowedElement: json['_multipleResultsAllowed'] != null
          ? Element.fromJson(
              json['_multipleResultsAllowed'] as Map<String, dynamic>)
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(json['method'] as Map<String, dynamic>)
          : null,
      preferredReportName: json['preferredReportName'] != null
          ? FhirString(json['preferredReportName'])
          : null,
      preferredReportNameElement: json['_preferredReportName'] != null
          ? Element.fromJson(
              json['_preferredReportName'] as Map<String, dynamic>)
          : null,
      quantitativeDetails: json['quantitativeDetails'] != null
          ? ObservationDefinitionQuantitativeDetails.fromJson(
              json['quantitativeDetails'] as Map<String, dynamic>)
          : null,
      qualifiedInterval: json['qualifiedInterval'] != null
          ? (json['qualifiedInterval'] as List<dynamic>)
              .map<ObservationDefinitionQualifiedInterval>((dynamic v) =>
                  ObservationDefinitionQualifiedInterval.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      validCodedValueSet: json['validCodedValueSet'] != null
          ? Reference.fromJson(
              json['validCodedValueSet'] as Map<String, dynamic>)
          : null,
      normalCodedValueSet: json['normalCodedValueSet'] != null
          ? Reference.fromJson(
              json['normalCodedValueSet'] as Map<String, dynamic>)
          : null,
      abnormalCodedValueSet: json['abnormalCodedValueSet'] != null
          ? Reference.fromJson(
              json['abnormalCodedValueSet'] as Map<String, dynamic>)
          : null,
      criticalCodedValueSet: json['criticalCodedValueSet'] != null
          ? Reference.fromJson(
              json['criticalCodedValueSet'] as Map<String, dynamic>)
          : null,
    );
  }
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
    List<CodeableConcept>? category,
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
  });

  @override
  String get fhirType => 'ObservationDefinitionQuantitativeDetails';

  @Id()
  int dbId = 0;

  /// [customaryUnit] /// Customary unit used to report quantitative results of observations
  /// conforming to this ObservationDefinition.
  final CodeableConcept? customaryUnit;

  /// [unit] /// SI unit used to report quantitative results of observations conforming to
  /// this ObservationDefinition.
  final CodeableConcept? unit;

  /// [conversionFactor] /// Factor for converting value expressed with SI unit to value expressed with
  /// customary unit.
  final FhirDecimal? conversionFactor;
  final Element? conversionFactorElement;

  /// [decimalPrecision] /// Number of digits after decimal separator when the results of such
  /// observations are of type Quantity.
  final FhirInteger? decimalPrecision;
  final Element? decimalPrecisionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (customaryUnit != null) {
      json['customaryUnit'] = customaryUnit!.toJson();
    }
    if (unit != null) {
      json['unit'] = unit!.toJson();
    }
    if (conversionFactor?.value != null) {
      json['conversionFactor'] = conversionFactor!.value;
    }
    if (conversionFactorElement != null) {
      json['_conversionFactor'] = conversionFactorElement!.toJson();
    }
    if (decimalPrecision?.value != null) {
      json['decimalPrecision'] = decimalPrecision!.value;
    }
    if (decimalPrecisionElement != null) {
      json['_decimalPrecision'] = decimalPrecisionElement!.toJson();
    }
    return json;
  }

  factory ObservationDefinitionQuantitativeDetails.fromJson(
      Map<String, dynamic> json) {
    return ObservationDefinitionQuantitativeDetails(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      customaryUnit: json['customaryUnit'] != null
          ? CodeableConcept.fromJson(
              json['customaryUnit'] as Map<String, dynamic>)
          : null,
      unit: json['unit'] != null
          ? CodeableConcept.fromJson(json['unit'] as Map<String, dynamic>)
          : null,
      conversionFactor: json['conversionFactor'] != null
          ? FhirDecimal(json['conversionFactor'])
          : null,
      conversionFactorElement: json['_conversionFactor'] != null
          ? Element.fromJson(json['_conversionFactor'] as Map<String, dynamic>)
          : null,
      decimalPrecision: json['decimalPrecision'] != null
          ? FhirInteger(json['decimalPrecision'])
          : null,
      decimalPrecisionElement: json['_decimalPrecision'] != null
          ? Element.fromJson(json['_decimalPrecision'] as Map<String, dynamic>)
          : null,
    );
  }
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
  });

  @override
  String get fhirType => 'ObservationDefinitionQualifiedInterval';

  @Id()
  int dbId = 0;

  /// [category] /// The category of interval of values for continuous or ordinal observations
  /// conforming to this ObservationDefinition.
  final ObservationRangeCategory? category;
  final Element? categoryElement;

  /// [range] /// The low and high values determining the interval. There may be only one of
  /// the two.
  final Range? range;

  /// [context] /// Codes to indicate the health context the range applies to. For example, the
  /// normal or therapeutic range.
  final CodeableConcept? context;

  /// [appliesTo] /// Codes to indicate the target population this reference range applies to.
  final List<CodeableConcept>? appliesTo;

  /// [gender] /// Sex of the population the range applies to.
  final AdministrativeGender? gender;
  final Element? genderElement;

  /// [age] /// The age at which this reference range is applicable. This is a neonatal age
  /// (e.g. number of weeks at term) if the meaning says so.
  final Range? age;

  /// [gestationalAge] /// The gestational age to which this reference range is applicable, in the
  /// context of pregnancy.
  final Range? gestationalAge;

  /// [condition] /// Text based condition for which the reference range is valid.
  final FhirString? condition;
  final Element? conditionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (category != null) {
      json['category'] = category!.toJson();
    }
    if (range != null) {
      json['range'] = range!.toJson();
    }
    if (context != null) {
      json['context'] = context!.toJson();
    }
    if (appliesTo != null && appliesTo!.isNotEmpty) {
      json['appliesTo'] =
          appliesTo!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (gender != null) {
      json['gender'] = gender!.toJson();
    }
    if (age != null) {
      json['age'] = age!.toJson();
    }
    if (gestationalAge != null) {
      json['gestationalAge'] = gestationalAge!.toJson();
    }
    if (condition?.value != null) {
      json['condition'] = condition!.value;
    }
    if (conditionElement != null) {
      json['_condition'] = conditionElement!.toJson();
    }
    return json;
  }

  factory ObservationDefinitionQualifiedInterval.fromJson(
      Map<String, dynamic> json) {
    return ObservationDefinitionQualifiedInterval(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      category: json['category'] != null
          ? ObservationRangeCategory.fromJson(
              json['category'] as Map<String, dynamic>)
          : null,
      range: json['range'] != null
          ? Range.fromJson(json['range'] as Map<String, dynamic>)
          : null,
      context: json['context'] != null
          ? CodeableConcept.fromJson(json['context'] as Map<String, dynamic>)
          : null,
      appliesTo: json['appliesTo'] != null
          ? (json['appliesTo'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      gender: json['gender'] != null
          ? AdministrativeGender.fromJson(
              json['gender'] as Map<String, dynamic>)
          : null,
      age: json['age'] != null
          ? Range.fromJson(json['age'] as Map<String, dynamic>)
          : null,
      gestationalAge: json['gestationalAge'] != null
          ? Range.fromJson(json['gestationalAge'] as Map<String, dynamic>)
          : null,
      condition:
          json['condition'] != null ? FhirString(json['condition']) : null,
      conditionElement: json['_condition'] != null
          ? Element.fromJson(json['_condition'] as Map<String, dynamic>)
          : null,
    );
  }
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
    CodeableConcept? context,
    List<CodeableConcept>? appliesTo,
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

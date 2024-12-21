import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ObservationDefinition]
/// Set of definitional characteristics for a kind of observation or
/// measurement produced or consumed by an orderable health care service.
class ObservationDefinition extends DomainResource {
  /// Primary constructor for
  /// [ObservationDefinition]

  const ObservationDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.category,
    required this.code,
    this.identifier,
    this.permittedDataType,
    this.multipleResultsAllowed,
    this.method,
    this.preferredReportName,
    this.quantitativeDetails,
    this.qualifiedInterval,
    this.validCodedValueSet,
    this.normalCodedValueSet,
    this.abnormalCodedValueSet,
    this.criticalCodedValueSet,
  }) : super(
          resourceType: R4ResourceType.ObservationDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ObservationDefinition(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules:
          (json['implicitRules'] != null || json['_implicitRules'] != null)
              ? FhirUri.fromJson({
                  'value': json['implicitRules'],
                  '_value': json['_implicitRules'],
                })
              : null,
      language: (json['language'] != null || json['_language'] != null)
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      category: json['category'] != null
          ? (json['category'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: CodeableConcept.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      permittedDataType: parsePrimitiveList<ObservationDataType>(
        json['permittedDataType'] as List<dynamic>?,
        json['_permittedDataType'] as List<dynamic>?,
        fromJson: ObservationDataType.fromJson,
      ),
      multipleResultsAllowed: (json['multipleResultsAllowed'] != null ||
              json['_multipleResultsAllowed'] != null)
          ? FhirBoolean.fromJson({
              'value': json['multipleResultsAllowed'],
              '_value': json['_multipleResultsAllowed'],
            })
          : null,
      method: json['method'] != null
          ? CodeableConcept.fromJson(
              json['method'] as Map<String, dynamic>,
            )
          : null,
      preferredReportName: (json['preferredReportName'] != null ||
              json['_preferredReportName'] != null)
          ? FhirString.fromJson({
              'value': json['preferredReportName'],
              '_value': json['_preferredReportName'],
            })
          : null,
      quantitativeDetails: json['quantitativeDetails'] != null
          ? ObservationDefinitionQuantitativeDetails.fromJson(
              json['quantitativeDetails'] as Map<String, dynamic>,
            )
          : null,
      qualifiedInterval: json['qualifiedInterval'] != null
          ? (json['qualifiedInterval'] as List<dynamic>)
              .map<ObservationDefinitionQualifiedInterval>(
                (v) => ObservationDefinitionQualifiedInterval.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      validCodedValueSet: json['validCodedValueSet'] != null
          ? Reference.fromJson(
              json['validCodedValueSet'] as Map<String, dynamic>,
            )
          : null,
      normalCodedValueSet: json['normalCodedValueSet'] != null
          ? Reference.fromJson(
              json['normalCodedValueSet'] as Map<String, dynamic>,
            )
          : null,
      abnormalCodedValueSet: json['abnormalCodedValueSet'] != null
          ? Reference.fromJson(
              json['abnormalCodedValueSet'] as Map<String, dynamic>,
            )
          : null,
      criticalCodedValueSet: json['criticalCodedValueSet'] != null
          ? Reference.fromJson(
              json['criticalCodedValueSet'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [ObservationDefinition]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinition';

  /// [category]
  /// A code that classifies the general type of observation.
  final List<CodeableConcept>? category;

  /// [code]
  /// Describes what will be observed. Sometimes this is called the
  /// observation "name".
  final CodeableConcept code;

  /// [identifier]
  /// A unique identifier assigned to this ObservationDefinition artifact.
  final List<Identifier>? identifier;

  /// [permittedDataType]
  /// The data types allowed for the value element of the instance
  /// observations conforming to this ObservationDefinition.
  final List<ObservationDataType>? permittedDataType;

  /// [multipleResultsAllowed]
  /// Multiple results allowed for observations conforming to this
  /// ObservationDefinition.
  final FhirBoolean? multipleResultsAllowed;

  /// [method]
  /// The method or technique used to perform the observation.
  final CodeableConcept? method;

  /// [preferredReportName]
  /// The preferred name to be used when reporting the results of
  /// observations conforming to this ObservationDefinition.
  final FhirString? preferredReportName;

  /// [quantitativeDetails]
  /// Characteristics for quantitative results of this observation.
  final ObservationDefinitionQuantitativeDetails? quantitativeDetails;

  /// [qualifiedInterval]
  /// Multiple ranges of results qualified by different contexts for ordinal
  /// or continuous observations conforming to this ObservationDefinition.
  final List<ObservationDefinitionQualifiedInterval>? qualifiedInterval;

  /// [validCodedValueSet]
  /// The set of valid coded results for the observations conforming to this
  /// ObservationDefinition.
  final Reference? validCodedValueSet;

  /// [normalCodedValueSet]
  /// The set of normal coded results for the observations conforming to this
  /// ObservationDefinition.
  final Reference? normalCodedValueSet;

  /// [abnormalCodedValueSet]
  /// The set of abnormal coded results for the observation conforming to
  /// this ObservationDefinition.
  final Reference? abnormalCodedValueSet;

  /// [criticalCodedValueSet]
  /// The set of critical coded results for the observation conforming to
  /// this ObservationDefinition.
  final Reference? criticalCodedValueSet;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      addField('id', id);
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      addField('implicitRules', implicitRules);
    }

    if (language != null) {
      addField('language', language);
    }

    if (text != null) {
      json['text'] = text!.toJson();
    }

    if (contained != null && contained!.isNotEmpty) {
      json['contained'] = contained!.map((e) => e.toJson()).toList();
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (category != null && category!.isNotEmpty) {
      json['category'] = category!.map((e) => e.toJson()).toList();
    }

    json['code'] = code.toJson();

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (permittedDataType != null && permittedDataType!.isNotEmpty) {
      final fieldJson0 = permittedDataType!.map((e) => e.toJson()).toList();
      json['permittedDataType'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_permittedDataType'] =
            fieldJson0.map((e) => e['_value']).toList();
      }
    }

    if (multipleResultsAllowed != null) {
      addField('multipleResultsAllowed', multipleResultsAllowed);
    }

    if (method != null) {
      json['method'] = method!.toJson();
    }

    if (preferredReportName != null) {
      addField('preferredReportName', preferredReportName);
    }

    if (quantitativeDetails != null) {
      json['quantitativeDetails'] = quantitativeDetails!.toJson();
    }

    if (qualifiedInterval != null && qualifiedInterval!.isNotEmpty) {
      json['qualifiedInterval'] =
          qualifiedInterval!.map((e) => e.toJson()).toList();
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

  @override
  ObservationDefinition clone() => throw UnimplementedError();
  @override
  ObservationDefinition copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ObservationDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      code: code ?? this.code,
      identifier: identifier ?? this.identifier,
      permittedDataType: permittedDataType ?? this.permittedDataType,
      multipleResultsAllowed:
          multipleResultsAllowed ?? this.multipleResultsAllowed,
      method: method ?? this.method,
      preferredReportName: preferredReportName ?? this.preferredReportName,
      quantitativeDetails: quantitativeDetails ?? this.quantitativeDetails,
      qualifiedInterval: qualifiedInterval ?? this.qualifiedInterval,
      validCodedValueSet: validCodedValueSet ?? this.validCodedValueSet,
      normalCodedValueSet: normalCodedValueSet ?? this.normalCodedValueSet,
      abnormalCodedValueSet:
          abnormalCodedValueSet ?? this.abnormalCodedValueSet,
      criticalCodedValueSet:
          criticalCodedValueSet ?? this.criticalCodedValueSet,
    );
  }
}

/// [ObservationDefinitionQuantitativeDetails]
/// Characteristics for quantitative results of this observation.
class ObservationDefinitionQuantitativeDetails extends BackboneElement {
  /// Primary constructor for
  /// [ObservationDefinitionQuantitativeDetails]

  const ObservationDefinitionQuantitativeDetails({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.decimalPrecision,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQuantitativeDetails.fromJson(
    Map<String, dynamic> json,
  ) {
    return ObservationDefinitionQuantitativeDetails(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      customaryUnit: json['customaryUnit'] != null
          ? CodeableConcept.fromJson(
              json['customaryUnit'] as Map<String, dynamic>,
            )
          : null,
      unit: json['unit'] != null
          ? CodeableConcept.fromJson(
              json['unit'] as Map<String, dynamic>,
            )
          : null,
      conversionFactor: (json['conversionFactor'] != null ||
              json['_conversionFactor'] != null)
          ? FhirDecimal.fromJson({
              'value': json['conversionFactor'],
              '_value': json['_conversionFactor'],
            })
          : null,
      decimalPrecision: (json['decimalPrecision'] != null ||
              json['_decimalPrecision'] != null)
          ? FhirInteger.fromJson({
              'value': json['decimalPrecision'],
              '_value': json['_decimalPrecision'],
            })
          : null,
    );
  }

  /// Deserialize [ObservationDefinitionQuantitativeDetails]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionQuantitativeDetails.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionQuantitativeDetails.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionQuantitativeDetails.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionQuantitativeDetails '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionQuantitativeDetails]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionQuantitativeDetails.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationDefinitionQuantitativeDetails.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinitionQuantitativeDetails';

  /// [customaryUnit]
  /// Customary unit used to report quantitative results of observations
  /// conforming to this ObservationDefinition.
  final CodeableConcept? customaryUnit;

  /// [unit]
  /// SI unit used to report quantitative results of observations conforming
  /// to this ObservationDefinition.
  final CodeableConcept? unit;

  /// [conversionFactor]
  /// Factor for converting value expressed with SI unit to value expressed
  /// with customary unit.
  final FhirDecimal? conversionFactor;

  /// [decimalPrecision]
  /// Number of digits after decimal separator when the results of such
  /// observations are of type Quantity.
  final FhirInteger? decimalPrecision;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (customaryUnit != null) {
      json['customaryUnit'] = customaryUnit!.toJson();
    }

    if (unit != null) {
      json['unit'] = unit!.toJson();
    }

    if (conversionFactor != null) {
      addField('conversionFactor', conversionFactor);
    }

    if (decimalPrecision != null) {
      addField('decimalPrecision', decimalPrecision);
    }

    return json;
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
    FhirInteger? decimalPrecision,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ObservationDefinitionQuantitativeDetails(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      customaryUnit: customaryUnit ?? this.customaryUnit,
      unit: unit ?? this.unit,
      conversionFactor: conversionFactor ?? this.conversionFactor,
      decimalPrecision: decimalPrecision ?? this.decimalPrecision,
    );
  }
}

/// [ObservationDefinitionQualifiedInterval]
/// Multiple ranges of results qualified by different contexts for ordinal
/// or continuous observations conforming to this ObservationDefinition.
class ObservationDefinitionQualifiedInterval extends BackboneElement {
  /// Primary constructor for
  /// [ObservationDefinitionQualifiedInterval]

  const ObservationDefinitionQualifiedInterval({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.category,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.age,
    this.gestationalAge,
    this.condition,
    super.disallowExtensions,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQualifiedInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    return ObservationDefinitionQualifiedInterval(
      id: json['id'] != null
          ? FhirString.fromJson({'value': json['id']})
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      category: (json['category'] != null || json['_category'] != null)
          ? ObservationRangeCategory.fromJson({
              'value': json['category'],
              '_value': json['_category'],
            })
          : null,
      range: json['range'] != null
          ? Range.fromJson(
              json['range'] as Map<String, dynamic>,
            )
          : null,
      context: json['context'] != null
          ? CodeableConcept.fromJson(
              json['context'] as Map<String, dynamic>,
            )
          : null,
      appliesTo: json['appliesTo'] != null
          ? (json['appliesTo'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      gender: (json['gender'] != null || json['_gender'] != null)
          ? AdministrativeGender.fromJson({
              'value': json['gender'],
              '_value': json['_gender'],
            })
          : null,
      age: json['age'] != null
          ? Range.fromJson(
              json['age'] as Map<String, dynamic>,
            )
          : null,
      gestationalAge: json['gestationalAge'] != null
          ? Range.fromJson(
              json['gestationalAge'] as Map<String, dynamic>,
            )
          : null,
      condition: (json['condition'] != null || json['_condition'] != null)
          ? FhirString.fromJson({
              'value': json['condition'],
              '_value': json['_condition'],
            })
          : null,
    );
  }

  /// Deserialize [ObservationDefinitionQualifiedInterval]
  /// from a [String] or [YamlMap] object
  factory ObservationDefinitionQualifiedInterval.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ObservationDefinitionQualifiedInterval.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ObservationDefinitionQualifiedInterval.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ObservationDefinitionQualifiedInterval '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ObservationDefinitionQualifiedInterval]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionQualifiedInterval.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ObservationDefinitionQualifiedInterval.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ObservationDefinitionQualifiedInterval';

  /// [category]
  /// The category of interval of values for continuous or ordinal
  /// observations conforming to this ObservationDefinition.
  final ObservationRangeCategory? category;

  /// [range]
  /// The low and high values determining the interval. There may be only one
  /// of the two.
  final Range? range;

  /// [context]
  /// Codes to indicate the health context the range applies to. For example,
  /// the normal or therapeutic range.
  final CodeableConcept? context;

  /// [appliesTo]
  /// Codes to indicate the target population this reference range applies
  /// to.
  final List<CodeableConcept>? appliesTo;

  /// [gender]
  /// Sex of the population the range applies to.
  final AdministrativeGender? gender;

  /// [age]
  /// The age at which this reference range is applicable. This is a neonatal
  /// age (e.g. number of weeks at term) if the meaning says so.
  final Range? age;

  /// [gestationalAge]
  /// The gestational age to which this reference range is applicable, in the
  /// context of pregnancy.
  final Range? gestationalAge;

  /// [condition]
  /// Text based condition for which the reference range is valid.
  final FhirString? condition;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    if (id != null) {
      addField('id', id);
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (category != null) {
      addField('category', category);
    }

    if (range != null) {
      json['range'] = range!.toJson();
    }

    if (context != null) {
      json['context'] = context!.toJson();
    }

    if (appliesTo != null && appliesTo!.isNotEmpty) {
      json['appliesTo'] = appliesTo!.map((e) => e.toJson()).toList();
    }

    if (gender != null) {
      addField('gender', gender);
    }

    if (age != null) {
      json['age'] = age!.toJson();
    }

    if (gestationalAge != null) {
      json['gestationalAge'] = gestationalAge!.toJson();
    }

    if (condition != null) {
      addField('condition', condition);
    }

    return json;
  }

  @override
  ObservationDefinitionQualifiedInterval clone() => throw UnimplementedError();
  @override
  ObservationDefinitionQualifiedInterval copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ObservationDefinitionQualifiedInterval(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      category: category ?? this.category,
      range: range ?? this.range,
      context: context ?? this.context,
      appliesTo: appliesTo ?? this.appliesTo,
      gender: gender ?? this.gender,
      age: age ?? this.age,
      gestationalAge: gestationalAge ?? this.gestationalAge,
      condition: condition ?? this.condition,
    );
  }
}

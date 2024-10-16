import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [ObservationDefinition]
/// Set of definitional characteristics for a kind of observation or
/// measurement produced or consumed by an orderable health care service.
class ObservationDefinition extends DomainResource {
  /// Primary constructor for [ObservationDefinition]

  ObservationDefinition({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.ObservationDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinition.fromJson(Map<String, dynamic> json) {
    return ObservationDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
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
          fromJson: ObservationDataType.fromJson),
      multipleResultsAllowed: json['multipleResultsAllowed'] != null
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
      preferredReportName: json['preferredReportName'] != null
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

  /// Deserialize [ObservationDefinition] from a [String]
  /// or [YamlMap] object
  factory ObservationDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ObservationDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ObservationDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ObservationDefinition cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ObservationDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinition.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (category != null && category!.isNotEmpty) {
      final fieldJson8 = category!.map((e) => e.toJson()).toList();
      json['category'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_category'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    final fieldJson9 = code.toJson();
    json['code'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_code'] = fieldJson9['_value'];
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson10 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson10.map((e) => e['value']).toList();
      if (fieldJson10.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson10.map((e) => e['_value']).toList();
      }
    }

    if (permittedDataType != null && permittedDataType!.isNotEmpty) {
      final fieldJson11 = permittedDataType!.map((e) => e.toJson()).toList();
      json['permittedDataType'] = fieldJson11.map((e) => e['value']).toList();
      if (fieldJson11.any((e) => e['_value'] != null)) {
        json['_permittedDataType'] =
            fieldJson11.map((e) => e['_value']).toList();
      }
    }

    if (multipleResultsAllowed != null) {
      final fieldJson12 = multipleResultsAllowed!.toJson();
      json['multipleResultsAllowed'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_multipleResultsAllowed'] = fieldJson12['_value'];
      }
    }

    if (method != null) {
      final fieldJson13 = method!.toJson();
      json['method'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_method'] = fieldJson13['_value'];
      }
    }

    if (preferredReportName != null) {
      final fieldJson14 = preferredReportName!.toJson();
      json['preferredReportName'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_preferredReportName'] = fieldJson14['_value'];
      }
    }

    if (quantitativeDetails != null) {
      final fieldJson15 = quantitativeDetails!.toJson();
      json['quantitativeDetails'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_quantitativeDetails'] = fieldJson15['_value'];
      }
    }

    if (qualifiedInterval != null && qualifiedInterval!.isNotEmpty) {
      final fieldJson16 = qualifiedInterval!.map((e) => e.toJson()).toList();
      json['qualifiedInterval'] = fieldJson16.map((e) => e['value']).toList();
      if (fieldJson16.any((e) => e['_value'] != null)) {
        json['_qualifiedInterval'] =
            fieldJson16.map((e) => e['_value']).toList();
      }
    }

    if (validCodedValueSet != null) {
      final fieldJson17 = validCodedValueSet!.toJson();
      json['validCodedValueSet'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_validCodedValueSet'] = fieldJson17['_value'];
      }
    }

    if (normalCodedValueSet != null) {
      final fieldJson18 = normalCodedValueSet!.toJson();
      json['normalCodedValueSet'] = fieldJson18['value'];
      if (fieldJson18['_value'] != null) {
        json['_normalCodedValueSet'] = fieldJson18['_value'];
      }
    }

    if (abnormalCodedValueSet != null) {
      final fieldJson19 = abnormalCodedValueSet!.toJson();
      json['abnormalCodedValueSet'] = fieldJson19['value'];
      if (fieldJson19['_value'] != null) {
        json['_abnormalCodedValueSet'] = fieldJson19['_value'];
      }
    }

    if (criticalCodedValueSet != null) {
      final fieldJson20 = criticalCodedValueSet!.toJson();
      json['criticalCodedValueSet'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_criticalCodedValueSet'] = fieldJson20['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ObservationDefinitionQuantitativeDetails]
/// Characteristics for quantitative results of this observation.
class ObservationDefinitionQuantitativeDetails extends BackboneElement {
  /// Primary constructor for [ObservationDefinitionQuantitativeDetails]

  ObservationDefinitionQuantitativeDetails({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.customaryUnit,
    this.unit,
    this.conversionFactor,
    this.decimalPrecision,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQuantitativeDetails.fromJson(
      Map<String, dynamic> json) {
    return ObservationDefinitionQuantitativeDetails(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      conversionFactor: json['conversionFactor'] != null
          ? FhirDecimal.fromJson({
              'value': json['conversionFactor'],
              '_value': json['_conversionFactor'],
            })
          : null,
      decimalPrecision: json['decimalPrecision'] != null
          ? FhirInteger.fromJson({
              'value': json['decimalPrecision'],
              '_value': json['_decimalPrecision'],
            })
          : null,
    );
  }

  /// Deserialize [ObservationDefinitionQuantitativeDetails] from a [String]
  /// or [YamlMap] object
  factory ObservationDefinitionQuantitativeDetails.fromYaml(dynamic yaml) => yaml
          is String
      ? ObservationDefinitionQuantitativeDetails.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ObservationDefinitionQuantitativeDetails.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ObservationDefinitionQuantitativeDetails cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ObservationDefinitionQuantitativeDetails]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
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

  @override
  String get fhirType => 'ObservationDefinitionQuantitativeDetails';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (customaryUnit != null) {
      final fieldJson3 = customaryUnit!.toJson();
      json['customaryUnit'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_customaryUnit'] = fieldJson3['_value'];
      }
    }

    if (unit != null) {
      final fieldJson4 = unit!.toJson();
      json['unit'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_unit'] = fieldJson4['_value'];
      }
    }

    if (conversionFactor != null) {
      final fieldJson5 = conversionFactor!.toJson();
      json['conversionFactor'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_conversionFactor'] = fieldJson5['_value'];
      }
    }

    if (decimalPrecision != null) {
      final fieldJson6 = decimalPrecision!.toJson();
      json['decimalPrecision'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_decimalPrecision'] = fieldJson6['_value'];
      }
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
      decimalPrecision: decimalPrecision ?? this.decimalPrecision,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [ObservationDefinitionQualifiedInterval]
/// Multiple ranges of results qualified by different contexts for ordinal
/// or continuous observations conforming to this ObservationDefinition.
class ObservationDefinitionQualifiedInterval extends BackboneElement {
  /// Primary constructor for [ObservationDefinitionQualifiedInterval]

  ObservationDefinitionQualifiedInterval({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.category,
    this.range,
    this.context,
    this.appliesTo,
    this.gender,
    this.age,
    this.gestationalAge,
    this.condition,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ObservationDefinitionQualifiedInterval.fromJson(
      Map<String, dynamic> json) {
    return ObservationDefinitionQualifiedInterval(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
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
      gender: json['gender'] != null
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
      condition: json['condition'] != null
          ? FhirString.fromJson({
              'value': json['condition'],
              '_value': json['_condition'],
            })
          : null,
    );
  }

  /// Deserialize [ObservationDefinitionQualifiedInterval] from a [String]
  /// or [YamlMap] object
  factory ObservationDefinitionQualifiedInterval.fromYaml(dynamic yaml) => yaml
          is String
      ? ObservationDefinitionQualifiedInterval.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ObservationDefinitionQualifiedInterval.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'ObservationDefinitionQualifiedInterval cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ObservationDefinitionQualifiedInterval]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ObservationDefinitionQualifiedInterval.fromJsonString(String source) {
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

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

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
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (category != null) {
      final fieldJson3 = category!.toJson();
      json['category'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_category'] = fieldJson3['_value'];
      }
    }

    if (range != null) {
      final fieldJson4 = range!.toJson();
      json['range'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_range'] = fieldJson4['_value'];
      }
    }

    if (context != null) {
      final fieldJson5 = context!.toJson();
      json['context'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_context'] = fieldJson5['_value'];
      }
    }

    if (appliesTo != null && appliesTo!.isNotEmpty) {
      final fieldJson6 = appliesTo!.map((e) => e.toJson()).toList();
      json['appliesTo'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_appliesTo'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (gender != null) {
      final fieldJson7 = gender!.toJson();
      json['gender'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_gender'] = fieldJson7['_value'];
      }
    }

    if (age != null) {
      final fieldJson8 = age!.toJson();
      json['age'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_age'] = fieldJson8['_value'];
      }
    }

    if (gestationalAge != null) {
      final fieldJson9 = gestationalAge!.toJson();
      json['gestationalAge'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_gestationalAge'] = fieldJson9['_value'];
      }
    }

    if (condition != null) {
      final fieldJson10 = condition!.toJson();
      json['condition'] = fieldJson10['value'];
      if (fieldJson10['_value'] != null) {
        json['_condition'] = fieldJson10['_value'];
      }
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
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

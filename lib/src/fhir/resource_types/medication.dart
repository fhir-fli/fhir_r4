import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Medication]
/// This resource is primarily used for the identification and definition
/// of a medication for the purposes of prescribing, dispensing, and
/// administering a medication as well as for making statements about
/// medication use.
class Medication extends DomainResource {
  /// Primary constructor for [Medication]

  Medication({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    this.code,
    this.status,
    this.manufacturer,
    this.form,
    this.amount,
    this.ingredient,
    this.batch,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Medication,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Medication.fromJson(Map<String, dynamic> json) {
    return Medication(
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      status: json['status'] != null
          ? MedicationStatusCodes.fromJson({
              'value': json['status'],
              '_value': json['_status'],
            })
          : null,
      manufacturer: json['manufacturer'] != null
          ? Reference.fromJson(
              json['manufacturer'] as Map<String, dynamic>,
            )
          : null,
      form: json['form'] != null
          ? CodeableConcept.fromJson(
              json['form'] as Map<String, dynamic>,
            )
          : null,
      amount: json['amount'] != null
          ? Ratio.fromJson(
              json['amount'] as Map<String, dynamic>,
            )
          : null,
      ingredient: json['ingredient'] != null
          ? (json['ingredient'] as List<dynamic>)
              .map<MedicationIngredient>(
                (v) => MedicationIngredient.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      batch: json['batch'] != null
          ? MedicationBatch.fromJson(
              json['batch'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Medication] from a [String]
  /// or [YamlMap] object
  factory Medication.fromYaml(dynamic yaml) => yaml is String
      ? Medication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Medication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Medication cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Medication]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Medication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Medication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Medication';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Business identifier for this medication.
  final List<Identifier>? identifier;

  /// [code]
  /// A code (or set of codes) that specify this medication, or a textual
  /// description if no code is available. Usage note: This could be a
  /// standard medication code such as a code from RxNorm, SNOMED CT, IDMP
  /// etc. It could also be a national or local formulary code, optionally
  /// with translations to other code systems.
  final CodeableConcept? code;

  /// [status]
  /// A code to indicate if the medication is in active use.
  final MedicationStatusCodes? status;

  /// [manufacturer]
  /// Describes the details of the manufacturer of the medication product.
  /// This is not intended to represent the distributor of a medication
  /// product.
  final Reference? manufacturer;

  /// [form]
  /// Describes the form of the item. Powder; tablets; capsule.
  final CodeableConcept? form;

  /// [amount]
  /// Specific amount of the drug in the packaged product. For example, when
  /// specifying a product that has the same strength (For example, Insulin
  /// glargine 100 unit per mL solution for injection), this attribute
  /// provides additional clarification of the package amount (For example, 3
  /// mL, 10mL, etc.).
  final Ratio? amount;

  /// [ingredient]
  /// Identifies a particular constituent of interest in the product.
  final List<MedicationIngredient>? ingredient;

  /// [batch]
  /// Information that only applies to packages (not products).
  final MedicationBatch? batch;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (meta != null) {
      json['meta'] = meta!.toJson();
    }

    if (implicitRules != null) {
      final fieldJson1 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_implicitRules'] = fieldJson1['_value'];
      }
    }

    if (language != null) {
      json['language'] = language!.toJson();
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    if (code != null) {
      json['code'] = code!.toJson();
    }

    if (status != null) {
      json['status'] = status!.toJson();
    }

    if (manufacturer != null) {
      json['manufacturer'] = manufacturer!.toJson();
    }

    if (form != null) {
      json['form'] = form!.toJson();
    }

    if (amount != null) {
      json['amount'] = amount!.toJson();
    }

    if (ingredient != null && ingredient!.isNotEmpty) {
      json['ingredient'] = ingredient!.map((e) => e.toJson()).toList();
    }

    if (batch != null) {
      json['batch'] = batch!.toJson();
    }

    return json;
  }

  @override
  Medication clone() => throw UnimplementedError();
  @override
  Medication copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    CodeableConcept? code,
    MedicationStatusCodes? status,
    Reference? manufacturer,
    CodeableConcept? form,
    Ratio? amount,
    List<MedicationIngredient>? ingredient,
    MedicationBatch? batch,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Medication(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      status: status ?? this.status,
      manufacturer: manufacturer ?? this.manufacturer,
      form: form ?? this.form,
      amount: amount ?? this.amount,
      ingredient: ingredient ?? this.ingredient,
      batch: batch ?? this.batch,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationIngredient]
/// Identifies a particular constituent of interest in the product.
class MedicationIngredient extends BackboneElement {
  /// Primary constructor for [MedicationIngredient]

  MedicationIngredient({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.strength,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationIngredient.fromJson(Map<String, dynamic> json) {
    return MedicationIngredient(
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
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>,
            )
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(
              json['itemReference'] as Map<String, dynamic>,
            )
          : null,
      isActive: json['isActive'] != null
          ? FhirBoolean.fromJson({
              'value': json['isActive'],
              '_value': json['_isActive'],
            })
          : null,
      strength: json['strength'] != null
          ? Ratio.fromJson(
              json['strength'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [MedicationIngredient] from a [String]
  /// or [YamlMap] object
  factory MedicationIngredient.fromYaml(dynamic yaml) => yaml is String
      ? MedicationIngredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationIngredient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'MedicationIngredient cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationIngredient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationIngredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationIngredient';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [itemCodeableConcept]
  /// The actual ingredient - either a substance (simple ingredient) or
  /// another medication of a medication.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference]
  /// The actual ingredient - either a substance (simple ingredient) or
  /// another medication of a medication.
  final Reference? itemReference;

  /// [isActive]
  /// Indication of whether this ingredient affects the therapeutic action of
  /// the drug.
  final FhirBoolean? isActive;

  /// [strength]
  /// Specifies how many (or how much) of the items there are in this
  /// Medication. For example, 250 mg per tablet. This is expressed as a
  /// ratio where the numerator is 250mg and the denominator is 1 tablet.
  final Ratio? strength;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (itemCodeableConcept != null) {
      json['itemCodeableConcept'] = itemCodeableConcept!.toJson();
    }

    if (itemReference != null) {
      json['itemReference'] = itemReference!.toJson();
    }

    if (isActive != null) {
      final fieldJson4 = isActive!.toJson();
      json['isActive'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_isActive'] = fieldJson4['_value'];
      }
    }

    if (strength != null) {
      json['strength'] = strength!.toJson();
    }

    return json;
  }

  @override
  MedicationIngredient clone() => throw UnimplementedError();
  @override
  MedicationIngredient copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? itemCodeableConcept,
    Reference? itemReference,
    FhirBoolean? isActive,
    Ratio? strength,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationIngredient(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      itemCodeableConcept: itemCodeableConcept ?? this.itemCodeableConcept,
      itemReference: itemReference ?? this.itemReference,
      isActive: isActive ?? this.isActive,
      strength: strength ?? this.strength,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [MedicationBatch]
/// Information that only applies to packages (not products).
class MedicationBatch extends BackboneElement {
  /// Primary constructor for [MedicationBatch]

  MedicationBatch({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.lotNumber,
    this.expirationDate,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory MedicationBatch.fromJson(Map<String, dynamic> json) {
    return MedicationBatch(
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
      lotNumber: json['lotNumber'] != null
          ? FhirString.fromJson({
              'value': json['lotNumber'],
              '_value': json['_lotNumber'],
            })
          : null,
      expirationDate: json['expirationDate'] != null
          ? FhirDateTime.fromJson({
              'value': json['expirationDate'],
              '_value': json['_expirationDate'],
            })
          : null,
    );
  }

  /// Deserialize [MedicationBatch] from a [String]
  /// or [YamlMap] object
  factory MedicationBatch.fromYaml(dynamic yaml) => yaml is String
      ? MedicationBatch.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? MedicationBatch.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('MedicationBatch cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [MedicationBatch]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory MedicationBatch.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationBatch.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'MedicationBatch';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [lotNumber]
  /// The assigned lot number of a batch of the specified product.
  final FhirString? lotNumber;

  /// [expirationDate]
  /// When this specific batch of product will expire.
  final FhirDateTime? expirationDate;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension!.map((e) => e.toJson()).toList();
    }

    if (lotNumber != null) {
      final fieldJson2 = lotNumber!.toJson();
      json['lotNumber'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_lotNumber'] = fieldJson2['_value'];
      }
    }

    if (expirationDate != null) {
      final fieldJson3 = expirationDate!.toJson();
      json['expirationDate'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_expirationDate'] = fieldJson3['_value'];
      }
    }

    return json;
  }

  @override
  MedicationBatch clone() => throw UnimplementedError();
  @override
  MedicationBatch copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? lotNumber,
    FhirDateTime? expirationDate,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return MedicationBatch(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      lotNumber: lotNumber ?? this.lotNumber,
      expirationDate: expirationDate ?? this.expirationDate,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

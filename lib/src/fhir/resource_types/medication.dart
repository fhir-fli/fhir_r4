import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'medication.g.dart';

/// [Medication] /// This resource is primarily used for the identification and definition of a
/// medication for the purposes of prescribing, dispensing, and administering a
/// medication as well as for making statements about medication use.
@JsonSerializable()
class Medication extends DomainResource {
  Medication({
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
    this.identifier,
    this.code,
    this.status,
    this.statusElement,
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
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Medication, fhirType: 'Medication');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Business identifier for this medication.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [code] /// A code (or set of codes) that specify this medication, or a textual
  /// description if no code is available. Usage note: This could be a standard
  /// medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could
  /// also be a national or local formulary code, optionally with translations to
  /// other code systems.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [status] /// A code to indicate if the medication is in active use.
  @JsonKey(name: 'status')
  final MedicationStatusCodes? status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [manufacturer] /// Describes the details of the manufacturer of the medication product. This
  /// is not intended to represent the distributor of a medication product.
  @JsonKey(name: 'manufacturer')
  final Reference? manufacturer;

  /// [form] /// Describes the form of the item. Powder; tablets; capsule.
  @JsonKey(name: 'form')
  final CodeableConcept? form;

  /// [amount] /// Specific amount of the drug in the packaged product. For example, when
  /// specifying a product that has the same strength (For example, Insulin
  /// glargine 100 unit per mL solution for injection), this attribute provides
  /// additional clarification of the package amount (For example, 3 mL, 10mL,
  /// etc.).
  @JsonKey(name: 'amount')
  final Ratio? amount;

  /// [ingredient] /// Identifies a particular constituent of interest in the product.
  @JsonKey(name: 'ingredient')
  final List<MedicationIngredient>? ingredient;

  /// [batch] /// Information that only applies to packages (not products).
  @JsonKey(name: 'batch')
  final MedicationBatch? batch;
  factory Medication.fromJson(Map<String, dynamic> json) =>
      _$MedicationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationToJson(this);

  @override
  Medication clone() => throw UnimplementedError();
  @override
  Medication copyWith({
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
    List<Identifier>? identifier,
    CodeableConcept? code,
    MedicationStatusCodes? status,
    Element? statusElement,
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
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      code: code ?? this.code,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
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

  factory Medication.fromYaml(dynamic yaml) => yaml is String
      ? Medication.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Medication.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Medication cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Medication.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Medication.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationIngredient] /// Identifies a particular constituent of interest in the product.
@JsonSerializable()
class MedicationIngredient extends BackboneElement {
  MedicationIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.itemCodeableConcept,
    required this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicationIngredient');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [itemCodeableConcept] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication of a medication.
  @JsonKey(name: 'itemCodeableConcept')
  final CodeableConcept itemCodeableConcept;

  /// [itemReference] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication of a medication.
  @JsonKey(name: 'itemReference')
  final Reference itemReference;

  /// [isActive] /// Indication of whether this ingredient affects the therapeutic action of the
  /// drug.
  @JsonKey(name: 'isActive')
  final FhirBoolean? isActive;
  @JsonKey(name: '_isActive')
  final Element? isActiveElement;

  /// [strength] /// Specifies how many (or how much) of the items there are in this Medication.
  /// For example, 250 mg per tablet. This is expressed as a ratio where the
  /// numerator is 250mg and the denominator is 1 tablet.
  @JsonKey(name: 'strength')
  final Ratio? strength;
  factory MedicationIngredient.fromJson(Map<String, dynamic> json) =>
      _$MedicationIngredientFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationIngredientToJson(this);

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
    Element? isActiveElement,
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
      isActiveElement: isActiveElement ?? this.isActiveElement,
      strength: strength ?? this.strength,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationIngredient.fromYaml(dynamic yaml) => yaml is String
      ? MedicationIngredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationIngredient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationIngredient cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationIngredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationIngredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [MedicationBatch] /// Information that only applies to packages (not products).
@JsonSerializable()
class MedicationBatch extends BackboneElement {
  MedicationBatch({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.lotNumber,
    this.lotNumberElement,
    this.expirationDate,
    this.expirationDateElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'MedicationBatch');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [lotNumber] /// The assigned lot number of a batch of the specified product.
  @JsonKey(name: 'lotNumber')
  final FhirString? lotNumber;
  @JsonKey(name: '_lotNumber')
  final Element? lotNumberElement;

  /// [expirationDate] /// When this specific batch of product will expire.
  @JsonKey(name: 'expirationDate')
  final FhirDateTime? expirationDate;
  @JsonKey(name: '_expirationDate')
  final Element? expirationDateElement;
  factory MedicationBatch.fromJson(Map<String, dynamic> json) =>
      _$MedicationBatchFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MedicationBatchToJson(this);

  @override
  MedicationBatch clone() => throw UnimplementedError();
  @override
  MedicationBatch copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? lotNumber,
    Element? lotNumberElement,
    FhirDateTime? expirationDate,
    Element? expirationDateElement,
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
      lotNumberElement: lotNumberElement ?? this.lotNumberElement,
      expirationDate: expirationDate ?? this.expirationDate,
      expirationDateElement:
          expirationDateElement ?? this.expirationDateElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory MedicationBatch.fromYaml(dynamic yaml) => yaml is String
      ? MedicationBatch.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? MedicationBatch.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'MedicationBatch cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory MedicationBatch.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return MedicationBatch.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

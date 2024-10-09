import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Medication] /// This resource is primarily used for the identification and definition of a
/// medication for the purposes of prescribing, dispensing, and administering a
/// medication as well as for making statements about medication use.
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
  }) : super(resourceType: R4ResourceType.Medication);

  @override
  String get fhirType => 'Medication';

  @Id()
  int dbId = 0;

  /// [identifier] /// Business identifier for this medication.
  final List<Identifier>? identifier;

  /// [code] /// A code (or set of codes) that specify this medication, or a textual
  /// description if no code is available. Usage note: This could be a standard
  /// medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could
  /// also be a national or local formulary code, optionally with translations to
  /// other code systems.
  final CodeableConcept? code;

  /// [status] /// A code to indicate if the medication is in active use.
  final MedicationStatusCodes? status;
  final Element? statusElement;

  /// [manufacturer] /// Describes the details of the manufacturer of the medication product. This
  /// is not intended to represent the distributor of a medication product.
  final Reference? manufacturer;

  /// [form] /// Describes the form of the item. Powder; tablets; capsule.
  final CodeableConcept? form;

  /// [amount] /// Specific amount of the drug in the packaged product. For example, when
  /// specifying a product that has the same strength (For example, Insulin
  /// glargine 100 unit per mL solution for injection), this attribute provides
  /// additional clarification of the package amount (For example, 3 mL, 10mL,
  /// etc.).
  final Ratio? amount;

  /// [ingredient] /// Identifies a particular constituent of interest in the product.
  final List<MedicationIngredient>? ingredient;

  /// [batch] /// Information that only applies to packages (not products).
  final MedicationBatch? batch;
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
      json['implicitRules'] = implicitRules!.toJson();
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
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
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
      json['ingredient'] = ingredient!
          .map<dynamic>((MedicationIngredient v) => v.toJson())
          .toList();
    }
    if (batch != null) {
      json['batch'] = batch!.toJson();
    }
    return json;
  }

  factory Medication.fromJson(Map<String, dynamic> json) {
    return Medication(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson(json['implicitRules'])
          : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'])
          : null,
      languageElement: json['_language'] != null
          ? Element.fromJson(json['_language'] as Map<String, dynamic>)
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
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      status: json['status'] != null
          ? MedicationStatusCodes.fromJson(json['status'])
          : null,
      statusElement: json['_status'] != null
          ? Element.fromJson(json['_status'] as Map<String, dynamic>)
          : null,
      manufacturer: json['manufacturer'] != null
          ? Reference.fromJson(json['manufacturer'] as Map<String, dynamic>)
          : null,
      form: json['form'] != null
          ? CodeableConcept.fromJson(json['form'] as Map<String, dynamic>)
          : null,
      amount: json['amount'] != null
          ? Ratio.fromJson(json['amount'] as Map<String, dynamic>)
          : null,
      ingredient: json['ingredient'] != null
          ? (json['ingredient'] as List<dynamic>)
              .map<MedicationIngredient>((dynamic v) =>
                  MedicationIngredient.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      batch: json['batch'] != null
          ? MedicationBatch.fromJson(json['batch'] as Map<String, dynamic>)
          : null,
    );
  }
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
class MedicationIngredient extends BackboneElement {
  MedicationIngredient({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.isActive,
    this.isActiveElement,
    this.strength,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  String get fhirType => 'MedicationIngredient';

  @Id()
  int dbId = 0;

  /// [itemCodeableConcept] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication of a medication.
  final CodeableConcept? itemCodeableConcept;

  /// [itemReference] /// The actual ingredient - either a substance (simple ingredient) or another
  /// medication of a medication.
  final Reference? itemReference;

  /// [isActive] /// Indication of whether this ingredient affects the therapeutic action of the
  /// drug.
  final FhirBoolean? isActive;
  final Element? isActiveElement;

  /// [strength] /// Specifies how many (or how much) of the items there are in this Medication.
  /// For example, 250 mg per tablet. This is expressed as a ratio where the
  /// numerator is 250mg and the denominator is 1 tablet.
  final Ratio? strength;
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
    if (itemCodeableConcept != null) {
      json['itemCodeableConcept'] = itemCodeableConcept!.toJson();
    }
    if (itemReference != null) {
      json['itemReference'] = itemReference!.toJson();
    }
    if (isActive?.value != null) {
      json['isActive'] = isActive!.toJson();
    }
    if (isActiveElement != null) {
      json['_isActive'] = isActiveElement!.toJson();
    }
    if (strength != null) {
      json['strength'] = strength!.toJson();
    }
    return json;
  }

  factory MedicationIngredient.fromJson(Map<String, dynamic> json) {
    return MedicationIngredient(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      itemCodeableConcept: json['itemCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['itemCodeableConcept'] as Map<String, dynamic>)
          : null,
      itemReference: json['itemReference'] != null
          ? Reference.fromJson(json['itemReference'] as Map<String, dynamic>)
          : null,
      isActive: json['isActive'] != null
          ? FhirBoolean.fromJson(json['isActive'])
          : null,
      isActiveElement: json['_isActive'] != null
          ? Element.fromJson(json['_isActive'] as Map<String, dynamic>)
          : null,
      strength: json['strength'] != null
          ? Ratio.fromJson(json['strength'] as Map<String, dynamic>)
          : null,
    );
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
  });

  @override
  String get fhirType => 'MedicationBatch';

  @Id()
  int dbId = 0;

  /// [lotNumber] /// The assigned lot number of a batch of the specified product.
  final FhirString? lotNumber;
  final Element? lotNumberElement;

  /// [expirationDate] /// When this specific batch of product will expire.
  final FhirDateTime? expirationDate;
  final Element? expirationDateElement;
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
    if (lotNumber?.value != null) {
      json['lotNumber'] = lotNumber!.toJson();
    }
    if (lotNumberElement != null) {
      json['_lotNumber'] = lotNumberElement!.toJson();
    }
    if (expirationDate?.value != null) {
      json['expirationDate'] = expirationDate!.toJson();
    }
    if (expirationDateElement != null) {
      json['_expirationDate'] = expirationDateElement!.toJson();
    }
    return json;
  }

  factory MedicationBatch.fromJson(Map<String, dynamic> json) {
    return MedicationBatch(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
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
      lotNumber: json['lotNumber'] != null
          ? FhirString.fromJson(json['lotNumber'])
          : null,
      lotNumberElement: json['_lotNumber'] != null
          ? Element.fromJson(json['_lotNumber'] as Map<String, dynamic>)
          : null,
      expirationDate: json['expirationDate'] != null
          ? FhirDateTime.fromJson(json['expirationDate'])
          : null,
      expirationDateElement: json['_expirationDate'] != null
          ? Element.fromJson(json['_expirationDate'] as Map<String, dynamic>)
          : null,
    );
  }
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

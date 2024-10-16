import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Ingredient]
/// An ingredient of a manufactured item or pharmaceutical product.
class Ingredient extends DomainResource {
  /// Primary constructor for [Ingredient]

  Ingredient({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.for_,
    required this.role,
    this.function_,
    this.allergenicIndicator,
    this.manufacturer,
    required this.substance,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(
          resourceType: R4ResourceType.Ingredient,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Ingredient.fromJson(Map<String, dynamic> json) {
    return Ingredient(
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
          ? Identifier.fromJson(
              json['identifier'] as Map<String, dynamic>,
            )
          : null,
      status: PublicationStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      for_: json['for'] != null
          ? (json['for'] as List<dynamic>)
              .map<Reference>(
                (v) => Reference.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      role: CodeableConcept.fromJson(
        json['role'] as Map<String, dynamic>,
      ),
      function_: json['function'] != null
          ? (json['function'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      allergenicIndicator: json['allergenicIndicator'] != null
          ? FhirBoolean.fromJson({
              'value': json['allergenicIndicator'],
              '_value': json['_allergenicIndicator'],
            })
          : null,
      manufacturer: json['manufacturer'] != null
          ? (json['manufacturer'] as List<dynamic>)
              .map<IngredientManufacturer>(
                (v) => IngredientManufacturer.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      substance: IngredientSubstance.fromJson(
        json['substance'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [Ingredient] from a [String]
  /// or [YamlMap] object
  factory Ingredient.fromYaml(dynamic yaml) => yaml is String
      ? Ingredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Ingredient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('Ingredient cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [Ingredient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Ingredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Ingredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Ingredient';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// The identifier(s) of this Ingredient that are assigned by business
  /// processes and/or used to refer to it when a direct URL reference to the
  /// resource itself is not appropriate.
  final Identifier? identifier;

  /// [status]
  /// The status of this ingredient. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [for_]
  /// The product which this ingredient is a constituent part of.
  final List<Reference>? for_;

  /// [role]
  /// A classification of the ingredient identifying its purpose within the
  /// product, e.g. active, inactive.
  final CodeableConcept role;

  /// [function_]
  /// A classification of the ingredient identifying its precise purpose(s)
  /// in the drug product. This extends the Ingredient.role to add more
  /// detail. Example: antioxidant, alkalizing agent.
  final List<CodeableConcept>? function_;

  /// [allergenicIndicator]
  /// If the ingredient is a known or suspected allergen. Note that this is a
  /// property of the substance, so if a reference to a SubstanceDefinition
  /// is used to decribe that (rather than just a code), the allergen
  /// information should go there, not here.
  final FhirBoolean? allergenicIndicator;

  /// [manufacturer]
  /// The organization(s) that manufacture this ingredient. Can be used to
  /// indicate: 1) Organizations we are aware of that manufacture this
  /// ingredient 2) Specific Manufacturer(s) currently being used 3) Set of
  /// organisations allowed to manufacture this ingredient for this product
  /// Users must be clear on the application of context relevant to their use
  /// case.
  final List<IngredientManufacturer>? manufacturer;

  /// [substance]
  /// The substance that comprises this ingredient.
  final IngredientSubstance substance;
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

    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }

    json['status'] = status.toJson();

    if (for_ != null && for_!.isNotEmpty) {
      json['for'] = for_!.map((e) => e.toJson()).toList();
    }

    json['role'] = role.toJson();

    if (function_ != null && function_!.isNotEmpty) {
      json['function'] = function_!.map((e) => e.toJson()).toList();
    }

    if (allergenicIndicator != null) {
      final fieldJson12 = allergenicIndicator!.toJson();
      json['allergenicIndicator'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_allergenicIndicator'] = fieldJson12['_value'];
      }
    }

    if (manufacturer != null && manufacturer!.isNotEmpty) {
      json['manufacturer'] = manufacturer!.map((e) => e.toJson()).toList();
    }

    json['substance'] = substance.toJson();

    return json;
  }

  @override
  Ingredient clone() => throw UnimplementedError();
  @override
  Ingredient copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    PublicationStatus? status,
    List<Reference>? for_,
    CodeableConcept? role,
    List<CodeableConcept>? function_,
    FhirBoolean? allergenicIndicator,
    List<IngredientManufacturer>? manufacturer,
    IngredientSubstance? substance,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Ingredient(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      for_: for_ ?? this.for_,
      role: role ?? this.role,
      function_: function_ ?? this.function_,
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
      manufacturer: manufacturer ?? this.manufacturer,
      substance: substance ?? this.substance,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [IngredientManufacturer]
/// The organization(s) that manufacture this ingredient. Can be used to
/// indicate: 1) Organizations we are aware of that manufacture this
/// ingredient 2) Specific Manufacturer(s) currently being used 3) Set of
/// organisations allowed to manufacture this ingredient for this product
/// Users must be clear on the application of context relevant to their use
/// case.
class IngredientManufacturer extends BackboneElement {
  /// Primary constructor for [IngredientManufacturer]

  IngredientManufacturer({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.role,
    required this.manufacturer,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientManufacturer.fromJson(Map<String, dynamic> json) {
    return IngredientManufacturer(
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
      role: json['role'] != null
          ? IngredientManufacturerRole.fromJson({
              'value': json['role'],
              '_value': json['_role'],
            })
          : null,
      manufacturer: Reference.fromJson(
        json['manufacturer'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [IngredientManufacturer] from a [String]
  /// or [YamlMap] object
  factory IngredientManufacturer.fromYaml(dynamic yaml) => yaml is String
      ? IngredientManufacturer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? IngredientManufacturer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'IngredientManufacturer cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [IngredientManufacturer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientManufacturer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return IngredientManufacturer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'IngredientManufacturer';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [role]
  /// The way in which this manufacturer is associated with the ingredient.
  /// For example whether it is a possible one (others allowed), or an
  /// exclusive authorized one for this ingredient. Note that this is not the
  /// manufacturing process role.
  final IngredientManufacturerRole? role;

  /// [manufacturer]
  /// An organization that manufactures this ingredient.
  final Reference manufacturer;
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

    if (role != null) {
      json['role'] = role!.toJson();
    }

    json['manufacturer'] = manufacturer.toJson();

    return json;
  }

  @override
  IngredientManufacturer clone() => throw UnimplementedError();
  @override
  IngredientManufacturer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    IngredientManufacturerRole? role,
    Reference? manufacturer,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return IngredientManufacturer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      manufacturer: manufacturer ?? this.manufacturer,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [IngredientSubstance]
/// The substance that comprises this ingredient.
class IngredientSubstance extends BackboneElement {
  /// Primary constructor for [IngredientSubstance]

  IngredientSubstance({
    super.id,
    this.extension_,
    super.modifierExtension,
    required this.code,
    this.strength,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientSubstance.fromJson(Map<String, dynamic> json) {
    return IngredientSubstance(
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
      code: CodeableReference.fromJson(
        json['code'] as Map<String, dynamic>,
      ),
      strength: json['strength'] != null
          ? (json['strength'] as List<dynamic>)
              .map<IngredientStrength>(
                (v) => IngredientStrength.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [IngredientSubstance] from a [String]
  /// or [YamlMap] object
  factory IngredientSubstance.fromYaml(dynamic yaml) => yaml is String
      ? IngredientSubstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? IngredientSubstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'IngredientSubstance cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [IngredientSubstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientSubstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return IngredientSubstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'IngredientSubstance';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [code]
  /// A code or full resource that represents the ingredient's substance.
  final CodeableReference code;

  /// [strength]
  /// The quantity of substance in the unit of presentation, or in the volume
  /// (or mass) of the single pharmaceutical product or manufactured item.
  /// The allowed repetitions do not represent different strengths, but are
  /// different representations - mathematically equivalent - of a single
  /// strength.
  final List<IngredientStrength>? strength;
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

    json['code'] = code.toJson();

    if (strength != null && strength!.isNotEmpty) {
      json['strength'] = strength!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  IngredientSubstance clone() => throw UnimplementedError();
  @override
  IngredientSubstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? code,
    List<IngredientStrength>? strength,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return IngredientSubstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
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

/// [IngredientStrength]
/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// The allowed repetitions do not represent different strengths, but are
/// different representations - mathematically equivalent - of a single
/// strength.
class IngredientStrength extends BackboneElement {
  /// Primary constructor for [IngredientStrength]

  IngredientStrength({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.presentationRatio,
    this.presentationRatioRange,
    this.textPresentation,
    this.concentrationRatio,
    this.concentrationRatioRange,
    this.textConcentration,
    this.measurementPoint,
    this.country,
    this.referenceStrength,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientStrength.fromJson(Map<String, dynamic> json) {
    return IngredientStrength(
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
      presentationRatio: json['presentationRatio'] != null
          ? Ratio.fromJson(
              json['presentationRatio'] as Map<String, dynamic>,
            )
          : null,
      presentationRatioRange: json['presentationRatioRange'] != null
          ? RatioRange.fromJson(
              json['presentationRatioRange'] as Map<String, dynamic>,
            )
          : null,
      textPresentation: json['textPresentation'] != null
          ? FhirString.fromJson({
              'value': json['textPresentation'],
              '_value': json['_textPresentation'],
            })
          : null,
      concentrationRatio: json['concentrationRatio'] != null
          ? Ratio.fromJson(
              json['concentrationRatio'] as Map<String, dynamic>,
            )
          : null,
      concentrationRatioRange: json['concentrationRatioRange'] != null
          ? RatioRange.fromJson(
              json['concentrationRatioRange'] as Map<String, dynamic>,
            )
          : null,
      textConcentration: json['textConcentration'] != null
          ? FhirString.fromJson({
              'value': json['textConcentration'],
              '_value': json['_textConcentration'],
            })
          : null,
      measurementPoint: json['measurementPoint'] != null
          ? FhirString.fromJson({
              'value': json['measurementPoint'],
              '_value': json['_measurementPoint'],
            })
          : null,
      country: json['country'] != null
          ? (json['country'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      referenceStrength: json['referenceStrength'] != null
          ? (json['referenceStrength'] as List<dynamic>)
              .map<IngredientReferenceStrength>(
                (v) => IngredientReferenceStrength.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [IngredientStrength] from a [String]
  /// or [YamlMap] object
  factory IngredientStrength.fromYaml(dynamic yaml) => yaml is String
      ? IngredientStrength.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? IngredientStrength.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('IngredientStrength cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [IngredientStrength]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientStrength.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return IngredientStrength.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'IngredientStrength';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [presentationRatio]
  /// The quantity of substance in the unit of presentation, or in the volume
  /// (or mass) of the single pharmaceutical product or manufactured item.
  /// Unit of presentation refers to the quantity that the item occurs in
  /// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
  /// tablet). It is not generally normalized as a unitary unit, which would
  /// be 'per mg').
  final Ratio? presentationRatio;

  /// [presentationRatioRange]
  /// The quantity of substance in the unit of presentation, or in the volume
  /// (or mass) of the single pharmaceutical product or manufactured item.
  /// Unit of presentation refers to the quantity that the item occurs in
  /// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
  /// tablet). It is not generally normalized as a unitary unit, which would
  /// be 'per mg').
  final RatioRange? presentationRatioRange;

  /// [textPresentation]
  /// A textual represention of either the whole of the presentation strength
  /// or a part of it - with the rest being in Strength.presentation as a
  /// ratio.
  final FhirString? textPresentation;

  /// [concentrationRatio]
  /// The strength per unitary volume (or mass).
  final Ratio? concentrationRatio;

  /// [concentrationRatioRange]
  /// The strength per unitary volume (or mass).
  final RatioRange? concentrationRatioRange;

  /// [textConcentration]
  /// A textual represention of either the whole of the concentration
  /// strength or a part of it - with the rest being in
  /// Strength.concentration as a ratio.
  final FhirString? textConcentration;

  /// [measurementPoint]
  /// For when strength is measured at a particular point or distance. There
  /// are products where strength is measured at a particular point. For
  /// example, the strength of the ingredient in some inhalers is measured at
  /// a particular position relative to the point of aerosolization.
  final FhirString? measurementPoint;

  /// [country]
  /// The country or countries for which the strength range applies.
  final List<CodeableConcept>? country;

  /// [referenceStrength]
  /// Strength expressed in terms of a reference substance. For when the
  /// ingredient strength is additionally expressed as equivalent to the
  /// strength of some other closely related substance (e.g. salt vs. base).
  /// Reference strength represents the strength (quantitative composition)
  /// of the active moiety of the active substance. There are situations when
  /// the active substance and active moiety are different, therefore both a
  /// strength and a reference strength are needed.
  final List<IngredientReferenceStrength>? referenceStrength;
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

    if (presentationRatio != null) {
      json['presentationRatio'] = presentationRatio!.toJson();
    }

    if (presentationRatioRange != null) {
      json['presentationRatioRange'] = presentationRatioRange!.toJson();
    }

    if (textPresentation != null) {
      final fieldJson4 = textPresentation!.toJson();
      json['textPresentation'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_textPresentation'] = fieldJson4['_value'];
      }
    }

    if (concentrationRatio != null) {
      json['concentrationRatio'] = concentrationRatio!.toJson();
    }

    if (concentrationRatioRange != null) {
      json['concentrationRatioRange'] = concentrationRatioRange!.toJson();
    }

    if (textConcentration != null) {
      final fieldJson7 = textConcentration!.toJson();
      json['textConcentration'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_textConcentration'] = fieldJson7['_value'];
      }
    }

    if (measurementPoint != null) {
      final fieldJson8 = measurementPoint!.toJson();
      json['measurementPoint'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_measurementPoint'] = fieldJson8['_value'];
      }
    }

    if (country != null && country!.isNotEmpty) {
      json['country'] = country!.map((e) => e.toJson()).toList();
    }

    if (referenceStrength != null && referenceStrength!.isNotEmpty) {
      json['referenceStrength'] =
          referenceStrength!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  IngredientStrength clone() => throw UnimplementedError();
  @override
  IngredientStrength copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Ratio? presentationRatio,
    RatioRange? presentationRatioRange,
    FhirString? textPresentation,
    Ratio? concentrationRatio,
    RatioRange? concentrationRatioRange,
    FhirString? textConcentration,
    FhirString? measurementPoint,
    List<CodeableConcept>? country,
    List<IngredientReferenceStrength>? referenceStrength,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return IngredientStrength(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      presentationRatio: presentationRatio ?? this.presentationRatio,
      presentationRatioRange:
          presentationRatioRange ?? this.presentationRatioRange,
      textPresentation: textPresentation ?? this.textPresentation,
      concentrationRatio: concentrationRatio ?? this.concentrationRatio,
      concentrationRatioRange:
          concentrationRatioRange ?? this.concentrationRatioRange,
      textConcentration: textConcentration ?? this.textConcentration,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      country: country ?? this.country,
      referenceStrength: referenceStrength ?? this.referenceStrength,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

/// [IngredientReferenceStrength]
/// Strength expressed in terms of a reference substance. For when the
/// ingredient strength is additionally expressed as equivalent to the
/// strength of some other closely related substance (e.g. salt vs. base).
/// Reference strength represents the strength (quantitative composition)
/// of the active moiety of the active substance. There are situations when
/// the active substance and active moiety are different, therefore both a
/// strength and a reference strength are needed.
class IngredientReferenceStrength extends BackboneElement {
  /// Primary constructor for [IngredientReferenceStrength]

  IngredientReferenceStrength({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.substance,
    this.strengthRatio,
    this.strengthRatioRange,
    this.measurementPoint,
    this.country,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientReferenceStrength.fromJson(Map<String, dynamic> json) {
    return IngredientReferenceStrength(
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
      substance: json['substance'] != null
          ? CodeableReference.fromJson(
              json['substance'] as Map<String, dynamic>,
            )
          : null,
      strengthRatio: json['strengthRatio'] != null
          ? Ratio.fromJson(
              json['strengthRatio'] as Map<String, dynamic>,
            )
          : null,
      strengthRatioRange: json['strengthRatioRange'] != null
          ? RatioRange.fromJson(
              json['strengthRatioRange'] as Map<String, dynamic>,
            )
          : null,
      measurementPoint: json['measurementPoint'] != null
          ? FhirString.fromJson({
              'value': json['measurementPoint'],
              '_value': json['_measurementPoint'],
            })
          : null,
      country: json['country'] != null
          ? (json['country'] as List<dynamic>)
              .map<CodeableConcept>(
                (v) => CodeableConcept.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  /// Deserialize [IngredientReferenceStrength] from a [String]
  /// or [YamlMap] object
  factory IngredientReferenceStrength.fromYaml(dynamic yaml) => yaml is String
      ? IngredientReferenceStrength.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? IngredientReferenceStrength.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'IngredientReferenceStrength cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [IngredientReferenceStrength]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientReferenceStrength.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return IngredientReferenceStrength.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'IngredientReferenceStrength';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [substance]
  /// Relevant reference substance.
  final CodeableReference? substance;

  /// [strengthRatio]
  /// Strength expressed in terms of a reference substance.
  final Ratio? strengthRatio;

  /// [strengthRatioRange]
  /// Strength expressed in terms of a reference substance.
  final RatioRange? strengthRatioRange;

  /// [measurementPoint]
  /// For when strength is measured at a particular point or distance.
  final FhirString? measurementPoint;

  /// [country]
  /// The country or countries for which the strength range applies.
  final List<CodeableConcept>? country;
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

    if (substance != null) {
      json['substance'] = substance!.toJson();
    }

    if (strengthRatio != null) {
      json['strengthRatio'] = strengthRatio!.toJson();
    }

    if (strengthRatioRange != null) {
      json['strengthRatioRange'] = strengthRatioRange!.toJson();
    }

    if (measurementPoint != null) {
      final fieldJson5 = measurementPoint!.toJson();
      json['measurementPoint'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_measurementPoint'] = fieldJson5['_value'];
      }
    }

    if (country != null && country!.isNotEmpty) {
      json['country'] = country!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  IngredientReferenceStrength clone() => throw UnimplementedError();
  @override
  IngredientReferenceStrength copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? substance,
    Ratio? strengthRatio,
    RatioRange? strengthRatioRange,
    FhirString? measurementPoint,
    List<CodeableConcept>? country,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return IngredientReferenceStrength(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      strengthRatio: strengthRatio ?? this.strengthRatio,
      strengthRatioRange: strengthRatioRange ?? this.strengthRatioRange,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      country: country ?? this.country,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

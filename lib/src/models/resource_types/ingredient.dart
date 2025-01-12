import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Ingredient]
/// An ingredient of a manufactured item or pharmaceutical product.
class Ingredient extends DomainResource {
  /// Primary constructor for
  /// [Ingredient]

  const Ingredient({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.for_,
    required this.role,
    this.function_,
    this.allergenicIndicator,
    this.manufacturer,
    required this.substance,
  }) : super(
          objectPath: 'Ingredient',
          resourceType: R4ResourceType.Ingredient,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Ingredient.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient';
    return Ingredient(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<Identifier>(
        json,
        'identifier',
        Identifier.fromJson,
        '$objectPath.identifier',
      ),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
        '$objectPath.status',
      )!,
      for_: (json['for'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.for',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConcept>(
        json,
        'role',
        CodeableConcept.fromJson,
        '$objectPath.role',
      )!,
      function_: (json['function'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.function',
              },
            ),
          )
          .toList(),
      allergenicIndicator: JsonParser.parsePrimitive<FhirBoolean>(
        json,
        'allergenicIndicator',
        FhirBoolean.fromJson,
        '$objectPath.allergenicIndicator',
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<IngredientManufacturer>(
            (v) => IngredientManufacturer.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manufacturer',
              },
            ),
          )
          .toList(),
      substance: JsonParser.parseObject<IngredientSubstance>(
        json,
        'substance',
        IngredientSubstance.fromJson,
        '$objectPath.substance',
      )!,
    );
  }

  /// Deserialize [Ingredient]
  /// from a [String] or [YamlMap] object
  factory Ingredient.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Ingredient.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Ingredient.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Ingredient '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Ingredient]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Ingredient.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Ingredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Ingredient';

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField('id', id);
    addField('meta', meta);
    addField('implicitRules', implicitRules);
    addField('language', language);
    addField('text', text);
    addField('contained', contained);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('identifier', identifier);
    addField('status', status);
    addField('for', for_);
    addField('role', role);
    addField('function', function_);
    addField('allergenicIndicator', allergenicIndicator);
    addField('manufacturer', manufacturer);
    addField('substance', substance);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'meta',
      'implicitRules',
      'language',
      'text',
      'contained',
      'extension',
      'modifierExtension',
      'identifier',
      'status',
      'for',
      'role',
      'function',
      'allergenicIndicator',
      'manufacturer',
      'substance',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'meta':
        if (meta != null) {
          fields.add(meta!);
        }
      case 'implicitRules':
        if (implicitRules != null) {
          fields.add(implicitRules!);
        }
      case 'language':
        if (language != null) {
          fields.add(language!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'contained':
        if (contained != null) {
          fields.addAll(contained!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'identifier':
        if (identifier != null) {
          fields.add(identifier!);
        }
      case 'status':
        fields.add(status);
      case 'for':
        if (for_ != null) {
          fields.addAll(for_!);
        }
      case 'role':
        fields.add(role);
      case 'function':
        if (function_ != null) {
          fields.addAll(function_!);
        }
      case 'allergenicIndicator':
        if (allergenicIndicator != null) {
          fields.add(allergenicIndicator!);
        }
      case 'manufacturer':
        if (manufacturer != null) {
          fields.addAll(manufacturer!);
        }
      case 'substance':
        fields.add(substance);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    return Ingredient(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      meta: meta?.copyWith(
            objectPath: '$newObjectPath.meta',
          ) ??
          this.meta,
      implicitRules: implicitRules?.copyWith(
            objectPath: '$newObjectPath.implicitRules',
          ) ??
          this.implicitRules,
      language: language?.copyWith(
            objectPath: '$newObjectPath.language',
          ) ??
          this.language,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      contained: contained ?? this.contained,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      identifier: identifier?.copyWith(
            objectPath: '$newObjectPath.identifier',
          ) ??
          this.identifier,
      status: status?.copyWith(
            objectPath: '$newObjectPath.status',
          ) ??
          this.status,
      for_: for_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.for',
                ),
              )
              .toList() ??
          this.for_,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
      function_: function_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.function',
                ),
              )
              .toList() ??
          this.function_,
      allergenicIndicator: allergenicIndicator?.copyWith(
            objectPath: '$newObjectPath.allergenicIndicator',
          ) ??
          this.allergenicIndicator,
      manufacturer: manufacturer
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.manufacturer',
                ),
              )
              .toList() ??
          this.manufacturer,
      substance: substance?.copyWith(
            objectPath: '$newObjectPath.substance',
          ) ??
          this.substance,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Ingredient) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!equalsDeepWithNull(meta, o.meta)) {
      return false;
    }
    if (!equalsDeepWithNull(implicitRules, o.implicitRules)) {
      return false;
    }
    if (!equalsDeepWithNull(language, o.language)) {
      return false;
    }
    if (!equalsDeepWithNull(text, o.text)) {
      return false;
    }
    if (!listEquals<Resource>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(identifier, o.identifier)) {
      return false;
    }
    if (!equalsDeepWithNull(status, o.status)) {
      return false;
    }
    if (!listEquals<Reference>(
      for_,
      o.for_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(role, o.role)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(allergenicIndicator, o.allergenicIndicator)) {
      return false;
    }
    if (!listEquals<IngredientManufacturer>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(substance, o.substance)) {
      return false;
    }
    return true;
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
  /// Primary constructor for
  /// [IngredientManufacturer]

  const IngredientManufacturer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    required this.manufacturer,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Ingredient.manufacturer',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientManufacturer.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient.manufacturer';
    return IngredientManufacturer(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      role: JsonParser.parsePrimitive<IngredientManufacturerRole>(
        json,
        'role',
        IngredientManufacturerRole.fromJson,
        '$objectPath.role',
      ),
      manufacturer: JsonParser.parseObject<Reference>(
        json,
        'manufacturer',
        Reference.fromJson,
        '$objectPath.manufacturer',
      )!,
    );
  }

  /// Deserialize [IngredientManufacturer]
  /// from a [String] or [YamlMap] object
  factory IngredientManufacturer.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientManufacturer.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientManufacturer.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientManufacturer '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientManufacturer]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientManufacturer.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientManufacturer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientManufacturer';

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('role', role);
    addField('manufacturer', manufacturer);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'role',
      'manufacturer',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
      case 'manufacturer':
        fields.add(manufacturer);
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return IngredientManufacturer(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      role: role?.copyWith(
            objectPath: '$newObjectPath.role',
          ) ??
          this.role,
      manufacturer: manufacturer?.copyWith(
            objectPath: '$newObjectPath.manufacturer',
          ) ??
          this.manufacturer,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! IngredientManufacturer) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(role, o.role)) {
      return false;
    }
    if (!equalsDeepWithNull(manufacturer, o.manufacturer)) {
      return false;
    }
    return true;
  }
}

/// [IngredientSubstance]
/// The substance that comprises this ingredient.
class IngredientSubstance extends BackboneElement {
  /// Primary constructor for
  /// [IngredientSubstance]

  const IngredientSubstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.strength,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Ingredient.substance',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientSubstance.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient.substance';
    return IngredientSubstance(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableReference>(
        json,
        'code',
        CodeableReference.fromJson,
        '$objectPath.code',
      )!,
      strength: (json['strength'] as List<dynamic>?)
          ?.map<IngredientStrength>(
            (v) => IngredientStrength.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.strength',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [IngredientSubstance]
  /// from a [String] or [YamlMap] object
  factory IngredientSubstance.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientSubstance.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientSubstance.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientSubstance '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientSubstance]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientSubstance.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientSubstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientSubstance';

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('code', code);
    addField('strength', strength);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'code',
      'strength',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'code':
        fields.add(code);
      case 'strength':
        if (strength != null) {
          fields.addAll(strength!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return IngredientSubstance(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      code: code?.copyWith(
            objectPath: '$newObjectPath.code',
          ) ??
          this.code,
      strength: strength
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.strength',
                ),
              )
              .toList() ??
          this.strength,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! IngredientSubstance) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(code, o.code)) {
      return false;
    }
    if (!listEquals<IngredientStrength>(
      strength,
      o.strength,
    )) {
      return false;
    }
    return true;
  }
}

/// [IngredientStrength]
/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// The allowed repetitions do not represent different strengths, but are
/// different representations - mathematically equivalent - of a single
/// strength.
class IngredientStrength extends BackboneElement {
  /// Primary constructor for
  /// [IngredientStrength]

  const IngredientStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.presentationX,
    this.textPresentation,
    this.concentrationX,
    this.textConcentration,
    this.measurementPoint,
    this.country,
    this.referenceStrength,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Ingredient.substance.strength',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientStrength.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient.substance.strength';
    return IngredientStrength(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      presentationX:
          JsonParser.parsePolymorphic<PresentationXIngredientStrength>(
        json,
        {
          'presentationRatio': Ratio.fromJson,
          'presentationRatioRange': RatioRange.fromJson,
        },
        objectPath,
      ),
      textPresentation: JsonParser.parsePrimitive<FhirString>(
        json,
        'textPresentation',
        FhirString.fromJson,
        '$objectPath.textPresentation',
      ),
      concentrationX:
          JsonParser.parsePolymorphic<ConcentrationXIngredientStrength>(
        json,
        {
          'concentrationRatio': Ratio.fromJson,
          'concentrationRatioRange': RatioRange.fromJson,
        },
        objectPath,
      ),
      textConcentration: JsonParser.parsePrimitive<FhirString>(
        json,
        'textConcentration',
        FhirString.fromJson,
        '$objectPath.textConcentration',
      ),
      measurementPoint: JsonParser.parsePrimitive<FhirString>(
        json,
        'measurementPoint',
        FhirString.fromJson,
        '$objectPath.measurementPoint',
      ),
      country: (json['country'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.country',
              },
            ),
          )
          .toList(),
      referenceStrength: (json['referenceStrength'] as List<dynamic>?)
          ?.map<IngredientReferenceStrength>(
            (v) => IngredientReferenceStrength.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referenceStrength',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [IngredientStrength]
  /// from a [String] or [YamlMap] object
  factory IngredientStrength.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientStrength.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientStrength.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientStrength '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientStrength]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientStrength.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientStrength.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientStrength';

  /// [presentationX]
  /// The quantity of substance in the unit of presentation, or in the volume
  /// (or mass) of the single pharmaceutical product or manufactured item.
  /// Unit of presentation refers to the quantity that the item occurs in
  /// e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the
  /// tablet). It is not generally normalized as a unitary unit, which would
  /// be 'per mg').
  final PresentationXIngredientStrength? presentationX;

  /// [textPresentation]
  /// A textual represention of either the whole of the presentation strength
  /// or a part of it - with the rest being in Strength.presentation as a
  /// ratio.
  final FhirString? textPresentation;

  /// [concentrationX]
  /// The strength per unitary volume (or mass).
  final ConcentrationXIngredientStrength? concentrationX;

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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    if (presentationX != null) {
      final fhirType = presentationX!.fhirType;
      addField('presentation${fhirType.capitalize()}', presentationX);
    }

    addField('textPresentation', textPresentation);
    if (concentrationX != null) {
      final fhirType = concentrationX!.fhirType;
      addField('concentration${fhirType.capitalize()}', concentrationX);
    }

    addField('textConcentration', textConcentration);
    addField('measurementPoint', measurementPoint);
    addField('country', country);
    addField('referenceStrength', referenceStrength);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'presentationX',
      'textPresentation',
      'concentrationX',
      'textConcentration',
      'measurementPoint',
      'country',
      'referenceStrength',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'presentation':
        fields.add(presentationX!);
      case 'presentationX':
        fields.add(presentationX!);
      case 'presentationRatio':
        if (presentationX is Ratio) {
          fields.add(presentationX!);
        }
      case 'presentationRatioRange':
        if (presentationX is RatioRange) {
          fields.add(presentationX!);
        }
      case 'textPresentation':
        if (textPresentation != null) {
          fields.add(textPresentation!);
        }
      case 'concentration':
        fields.add(concentrationX!);
      case 'concentrationX':
        fields.add(concentrationX!);
      case 'concentrationRatio':
        if (concentrationX is Ratio) {
          fields.add(concentrationX!);
        }
      case 'concentrationRatioRange':
        if (concentrationX is RatioRange) {
          fields.add(concentrationX!);
        }
      case 'textConcentration':
        if (textConcentration != null) {
          fields.add(textConcentration!);
        }
      case 'measurementPoint':
        if (measurementPoint != null) {
          fields.add(measurementPoint!);
        }
      case 'country':
        if (country != null) {
          fields.addAll(country!);
        }
      case 'referenceStrength':
        if (referenceStrength != null) {
          fields.addAll(referenceStrength!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  IngredientStrength clone() => throw UnimplementedError();
  @override
  IngredientStrength copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    PresentationXIngredientStrength? presentationX,
    FhirString? textPresentation,
    ConcentrationXIngredientStrength? concentrationX,
    FhirString? textConcentration,
    FhirString? measurementPoint,
    List<CodeableConcept>? country,
    List<IngredientReferenceStrength>? referenceStrength,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return IngredientStrength(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      presentationX: presentationX?.copyWith(
            objectPath: '$newObjectPath.presentationX',
          ) as PresentationXIngredientStrength? ??
          this.presentationX,
      textPresentation: textPresentation?.copyWith(
            objectPath: '$newObjectPath.textPresentation',
          ) ??
          this.textPresentation,
      concentrationX: concentrationX?.copyWith(
            objectPath: '$newObjectPath.concentrationX',
          ) as ConcentrationXIngredientStrength? ??
          this.concentrationX,
      textConcentration: textConcentration?.copyWith(
            objectPath: '$newObjectPath.textConcentration',
          ) ??
          this.textConcentration,
      measurementPoint: measurementPoint?.copyWith(
            objectPath: '$newObjectPath.measurementPoint',
          ) ??
          this.measurementPoint,
      country: country
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.country',
                ),
              )
              .toList() ??
          this.country,
      referenceStrength: referenceStrength
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.referenceStrength',
                ),
              )
              .toList() ??
          this.referenceStrength,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! IngredientStrength) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(presentationX, o.presentationX)) {
      return false;
    }
    if (!equalsDeepWithNull(textPresentation, o.textPresentation)) {
      return false;
    }
    if (!equalsDeepWithNull(concentrationX, o.concentrationX)) {
      return false;
    }
    if (!equalsDeepWithNull(textConcentration, o.textConcentration)) {
      return false;
    }
    if (!equalsDeepWithNull(measurementPoint, o.measurementPoint)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      country,
      o.country,
    )) {
      return false;
    }
    if (!listEquals<IngredientReferenceStrength>(
      referenceStrength,
      o.referenceStrength,
    )) {
      return false;
    }
    return true;
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
  /// Primary constructor for
  /// [IngredientReferenceStrength]

  const IngredientReferenceStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    required this.strengthX,
    this.measurementPoint,
    this.country,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Ingredient.substance.strength.referenceStrength',
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientReferenceStrength.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient.substance.strength.referenceStrength';
    return IngredientReferenceStrength(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      substance: JsonParser.parseObject<CodeableReference>(
        json,
        'substance',
        CodeableReference.fromJson,
        '$objectPath.substance',
      ),
      strengthX:
          JsonParser.parsePolymorphic<StrengthXIngredientReferenceStrength>(
        json,
        {
          'strengthRatio': Ratio.fromJson,
          'strengthRatioRange': RatioRange.fromJson,
        },
        objectPath,
      )!,
      measurementPoint: JsonParser.parsePrimitive<FhirString>(
        json,
        'measurementPoint',
        FhirString.fromJson,
        '$objectPath.measurementPoint',
      ),
      country: (json['country'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.country',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [IngredientReferenceStrength]
  /// from a [String] or [YamlMap] object
  factory IngredientReferenceStrength.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientReferenceStrength.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientReferenceStrength.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientReferenceStrength '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientReferenceStrength]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientReferenceStrength.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientReferenceStrength.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientReferenceStrength';

  /// [substance]
  /// Relevant reference substance.
  final CodeableReference? substance;

  /// [strengthX]
  /// Strength expressed in terms of a reference substance.
  final StrengthXIngredientReferenceStrength strengthX;

  /// [measurementPoint]
  /// For when strength is measured at a particular point or distance.
  final FhirString? measurementPoint;

  /// [country]
  /// The country or countries for which the strength range applies.
  final List<CodeableConcept>? country;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('modifierExtension', modifierExtension);
    addField('substance', substance);
    final strengthXFhirType = strengthX.fhirType;
    addField('strength${strengthXFhirType.capitalize()}', strengthX);

    addField('measurementPoint', measurementPoint);
    addField('country', country);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'modifierExtension',
      'substance',
      'strengthX',
      'measurementPoint',
      'country',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'modifierExtension':
        if (modifierExtension != null) {
          fields.addAll(modifierExtension!);
        }
      case 'substance':
        if (substance != null) {
          fields.add(substance!);
        }
      case 'strength':
        fields.add(strengthX);
      case 'strengthX':
        fields.add(strengthX);
      case 'strengthRatio':
        if (strengthX is Ratio) {
          fields.add(strengthX);
        }
      case 'strengthRatioRange':
        if (strengthX is RatioRange) {
          fields.add(strengthX);
        }
      case 'measurementPoint':
        if (measurementPoint != null) {
          fields.add(measurementPoint!);
        }
      case 'country':
        if (country != null) {
          fields.addAll(country!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  IngredientReferenceStrength clone() => throw UnimplementedError();
  @override
  IngredientReferenceStrength copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? substance,
    StrengthXIngredientReferenceStrength? strengthX,
    FhirString? measurementPoint,
    List<CodeableConcept>? country,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    return IngredientReferenceStrength(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      modifierExtension: modifierExtension
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.modifierExtension',
                ),
              )
              .toList() ??
          this.modifierExtension,
      substance: substance?.copyWith(
            objectPath: '$newObjectPath.substance',
          ) ??
          this.substance,
      strengthX: strengthX?.copyWith(
            objectPath: '$newObjectPath.strengthX',
          ) as StrengthXIngredientReferenceStrength? ??
          this.strengthX,
      measurementPoint: measurementPoint?.copyWith(
            objectPath: '$newObjectPath.measurementPoint',
          ) ??
          this.measurementPoint,
      country: country
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.country',
                ),
              )
              .toList() ??
          this.country,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! IngredientReferenceStrength) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(id, o.id)) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(substance, o.substance)) {
      return false;
    }
    if (!equalsDeepWithNull(strengthX, o.strengthX)) {
      return false;
    }
    if (!equalsDeepWithNull(measurementPoint, o.measurementPoint)) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      country,
      o.country,
    )) {
      return false;
    }
    return true;
  }
}

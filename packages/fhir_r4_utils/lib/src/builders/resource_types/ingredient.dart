import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show
        Ingredient,
        IngredientManufacturer,
        IngredientReferenceStrength,
        IngredientStrength,
        IngredientSubstance,
        R4ResourceType,
        StringExtensionForFHIR,
        yamlMapToJson,
        yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [IngredientBuilder]
/// An ingredient of a manufactured item or pharmaceutical product.
class IngredientBuilder extends DomainResourceBuilder {
  /// Primary constructor for
  /// [IngredientBuilder]

  IngredientBuilder({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.status,
    this.for_,
    this.role,
    this.function_,
    this.allergenicIndicator,
    this.manufacturer,
    this.substance,
  }) : super(
          objectPath: 'Ingredient',
          resourceType: R4ResourceType.Ingredient,
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory IngredientBuilder.empty() => IngredientBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient';
    return IngredientBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      meta: JsonParser.parseObject<FhirMetaBuilder>(
        json,
        'meta',
        FhirMetaBuilder.fromJson,
        '$objectPath.meta',
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUriBuilder>(
        json,
        'implicitRules',
        FhirUriBuilder.fromJson,
        '$objectPath.implicitRules',
      ),
      language: JsonParser.parsePrimitive<CommonLanguagesBuilder>(
        json,
        'language',
        CommonLanguagesBuilder.fromJson,
        '$objectPath.language',
      ),
      text: JsonParser.parseObject<NarrativeBuilder>(
        json,
        'text',
        NarrativeBuilder.fromJson,
        '$objectPath.text',
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<ResourceBuilder>(
            (v) => ResourceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.contained',
              },
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      identifier: JsonParser.parseObject<IdentifierBuilder>(
        json,
        'identifier',
        IdentifierBuilder.fromJson,
        '$objectPath.identifier',
      ),
      status: JsonParser.parsePrimitive<PublicationStatusBuilder>(
        json,
        'status',
        PublicationStatusBuilder.fromJson,
        '$objectPath.status',
      ),
      for_: (json['for'] as List<dynamic>?)
          ?.map<ReferenceBuilder>(
            (v) => ReferenceBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.for',
              },
            ),
          )
          .toList(),
      role: JsonParser.parseObject<CodeableConceptBuilder>(
        json,
        'role',
        CodeableConceptBuilder.fromJson,
        '$objectPath.role',
      ),
      function_: (json['function'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.function',
              },
            ),
          )
          .toList(),
      allergenicIndicator: JsonParser.parsePrimitive<FhirBooleanBuilder>(
        json,
        'allergenicIndicator',
        FhirBooleanBuilder.fromJson,
        '$objectPath.allergenicIndicator',
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<IngredientManufacturerBuilder>(
            (v) => IngredientManufacturerBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.manufacturer',
              },
            ),
          )
          .toList(),
      substance: JsonParser.parseObject<IngredientSubstanceBuilder>(
        json,
        'substance',
        IngredientSubstanceBuilder.fromJson,
        '$objectPath.substance',
      ),
    );
  }

  /// Deserialize [IngredientBuilder]
  /// from a [String] or [YamlMap] object
  factory IngredientBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientBuilder.fromJson(json);
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
  IdentifierBuilder? identifier;

  /// [status]
  /// The status of this ingredient. Enables tracking the life-cycle of the
  /// content.
  PublicationStatusBuilder? status;

  /// [for_]
  /// The product which this ingredient is a constituent part of.
  List<ReferenceBuilder>? for_;

  /// [role]
  /// A classification of the ingredient identifying its purpose within the
  /// product, e.g. active, inactive.
  CodeableConceptBuilder? role;

  /// [function_]
  /// A classification of the ingredient identifying its precise purpose(s)
  /// in the drug product. This extends the Ingredient.role to add more
  /// detail. Example: antioxidant, alkalizing agent.
  List<CodeableConceptBuilder>? function_;

  /// [allergenicIndicator]
  /// If the ingredient is a known or suspected allergen. Note that this is a
  /// property of the substance, so if a reference to a SubstanceDefinition
  /// is used to decribe that (rather than just a code), the allergen
  /// information should go there, not here.
  FhirBooleanBuilder? allergenicIndicator;

  /// [manufacturer]
  /// The organization(s) that manufacture this ingredient. Can be used to
  /// indicate: 1) Organizations we are aware of that manufacture this
  /// ingredient 2) Specific Manufacturer(s) currently being used 3) Set of
  /// organisations allowed to manufacture this ingredient for this product
  /// Users must be clear on the application of context relevant to their use
  /// case.
  List<IngredientManufacturerBuilder>? manufacturer;

  /// [substance]
  /// The substance that comprises this ingredient.
  IngredientSubstanceBuilder? substance;

  /// Converts a [IngredientBuilder]
  /// to [Ingredient]
  @override
  Ingredient build() => Ingredient.fromJson(toJson());

  /// Converts a [IngredientBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    json['resourceType'] = resourceType.toJson();
    addField(
      'id',
      id,
    );
    addField(
      'meta',
      meta,
    );
    addField(
      'implicitRules',
      implicitRules,
    );
    addField(
      'language',
      language,
    );
    addField(
      'text',
      text,
    );
    addField(
      'contained',
      contained,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'identifier',
      identifier,
    );
    addField(
      'status',
      status,
    );
    addField(
      'for',
      for_,
    );
    addField(
      'role',
      role,
    );
    addField(
      'function',
      function_,
    );
    addField(
      'allergenicIndicator',
      allergenicIndicator,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'substance',
      substance,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (status != null) {
          fields.add(status!);
        }
      case 'for':
        if (for_ != null) {
          fields.addAll(for_!);
        }
      case 'role':
        if (role != null) {
          fields.add(role!);
        }
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
        if (substance != null) {
          fields.add(substance!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'meta':
        {
          if (child is FhirMetaBuilder) {
            meta = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'implicitRules':
        {
          if (child is FhirUriBuilder) {
            implicitRules = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirUriBuilder.tryParse(stringValue);
              if (converted != null) {
                implicitRules = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'language':
        {
          if (child is CommonLanguagesBuilder) {
            language = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = CommonLanguagesBuilder(stringValue);
                language = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is NarrativeBuilder) {
            text = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'contained':
        {
          if (child is List<ResourceBuilder>) {
            // Replace or create new list
            contained = child;
            return;
          } else if (child is ResourceBuilder) {
            // Add single element to existing list or create new list
            contained = [
              ...(contained ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'identifier':
        {
          if (child is IdentifierBuilder) {
            identifier = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'status':
        {
          if (child is PublicationStatusBuilder) {
            status = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = PublicationStatusBuilder(stringValue);
                status = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'for':
        {
          if (child is List<ReferenceBuilder>) {
            // Replace or create new list
            for_ = child;
            return;
          } else if (child is ReferenceBuilder) {
            // Add single element to existing list or create new list
            for_ = [
              ...(for_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is CodeableConceptBuilder) {
            role = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'function':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            function_ = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            function_ = [
              ...(function_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'allergenicIndicator':
        {
          if (child is FhirBooleanBuilder) {
            allergenicIndicator = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirBooleanBuilder.tryParse(stringValue);
              if (converted != null) {
                allergenicIndicator = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturer':
        {
          if (child is List<IngredientManufacturerBuilder>) {
            // Replace or create new list
            manufacturer = child;
            return;
          } else if (child is IngredientManufacturerBuilder) {
            // Add single element to existing list or create new list
            manufacturer = [
              ...(manufacturer ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'substance':
        {
          if (child is IngredientSubstanceBuilder) {
            substance = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'meta':
        return ['FhirMetaBuilder'];
      case 'implicitRules':
        return ['FhirUriBuilder'];
      case 'language':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['NarrativeBuilder'];
      case 'contained':
        return ['ResourceBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'identifier':
        return ['IdentifierBuilder'];
      case 'status':
        return ['FhirCodeEnumBuilder'];
      case 'for':
        return ['ReferenceBuilder'];
      case 'role':
        return ['CodeableConceptBuilder'];
      case 'function':
        return ['CodeableConceptBuilder'];
      case 'allergenicIndicator':
        return ['FhirBooleanBuilder'];
      case 'manufacturer':
        return ['IngredientManufacturerBuilder'];
      case 'substance':
        return ['IngredientSubstanceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [IngredientBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'meta':
        {
          meta = FhirMetaBuilder.empty();
          return;
        }
      case 'implicitRules':
        {
          implicitRules = FhirUriBuilder.empty();
          return;
        }
      case 'language':
        {
          language = CommonLanguagesBuilder.empty();
          return;
        }
      case 'text':
        {
          text = NarrativeBuilder.empty();
          return;
        }
      case 'contained':
        {
          contained = <ResourceBuilder>[];
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'identifier':
        {
          identifier = IdentifierBuilder.empty();
          return;
        }
      case 'status':
        {
          status = PublicationStatusBuilder.empty();
          return;
        }
      case 'for':
        {
          for_ = <ReferenceBuilder>[];
          return;
        }
      case 'role':
        {
          role = CodeableConceptBuilder.empty();
          return;
        }
      case 'function':
        {
          function_ = <CodeableConceptBuilder>[];
          return;
        }
      case 'allergenicIndicator':
        {
          allergenicIndicator = FhirBooleanBuilder.empty();
          return;
        }
      case 'manufacturer':
        {
          manufacturer = <IngredientManufacturerBuilder>[];
          return;
        }
      case 'substance':
        {
          substance = IngredientSubstanceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool meta = false,
    bool implicitRules = false,
    bool language = false,
    bool text = false,
    bool contained = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool identifier = false,
    bool status = false,
    bool for_ = false,
    bool role = false,
    bool function_ = false,
    bool allergenicIndicator = false,
    bool manufacturer = false,
    bool substance = false,
  }) {
    if (id) this.id = null;
    if (meta) this.meta = null;
    if (implicitRules) this.implicitRules = null;
    if (language) this.language = null;
    if (text) this.text = null;
    if (contained) this.contained = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (identifier) this.identifier = null;
    if (status) this.status = null;
    if (for_) this.for_ = null;
    if (role) this.role = null;
    if (function_) this.function_ = null;
    if (allergenicIndicator) this.allergenicIndicator = null;
    if (manufacturer) this.manufacturer = null;
    if (substance) this.substance = null;
  }

  @override
  IngredientBuilder clone() => throw UnimplementedError();
  @override
  IngredientBuilder copyWith({
    FhirStringBuilder? id,
    FhirMetaBuilder? meta,
    FhirUriBuilder? implicitRules,
    CommonLanguagesBuilder? language,
    NarrativeBuilder? text,
    List<ResourceBuilder>? contained,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IdentifierBuilder? identifier,
    PublicationStatusBuilder? status,
    List<ReferenceBuilder>? for_,
    CodeableConceptBuilder? role,
    List<CodeableConceptBuilder>? function_,
    FhirBooleanBuilder? allergenicIndicator,
    List<IngredientManufacturerBuilder>? manufacturer,
    IngredientSubstanceBuilder? substance,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    final newObjectPath = objectPath;
    final newResult = IngredientBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! IngredientBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      meta,
      o.meta,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      implicitRules,
      o.implicitRules,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      language,
      o.language,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<ResourceBuilder>(
      contained,
      o.contained,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      identifier,
      o.identifier,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      status,
      o.status,
    )) {
      return false;
    }
    if (!listEquals<ReferenceBuilder>(
      for_,
      o.for_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      function_,
      o.function_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      allergenicIndicator,
      o.allergenicIndicator,
    )) {
      return false;
    }
    if (!listEquals<IngredientManufacturerBuilder>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      substance,
      o.substance,
    )) {
      return false;
    }
    return true;
  }
}

/// [IngredientManufacturerBuilder]
/// The organization(s) that manufacture this ingredient. Can be used to
/// indicate: 1) Organizations we are aware of that manufacture this
/// ingredient 2) Specific Manufacturer(s) currently being used 3) Set of
/// organisations allowed to manufacture this ingredient for this product
/// Users must be clear on the application of context relevant to their use
/// case.
class IngredientManufacturerBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [IngredientManufacturerBuilder]

  IngredientManufacturerBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.manufacturer,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Ingredient.manufacturer',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory IngredientManufacturerBuilder.empty() =>
      IngredientManufacturerBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientManufacturerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient.manufacturer';
    return IngredientManufacturerBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      role: JsonParser.parsePrimitive<IngredientManufacturerRoleBuilder>(
        json,
        'role',
        IngredientManufacturerRoleBuilder.fromJson,
        '$objectPath.role',
      ),
      manufacturer: JsonParser.parseObject<ReferenceBuilder>(
        json,
        'manufacturer',
        ReferenceBuilder.fromJson,
        '$objectPath.manufacturer',
      ),
    );
  }

  /// Deserialize [IngredientManufacturerBuilder]
  /// from a [String] or [YamlMap] object
  factory IngredientManufacturerBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientManufacturerBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientManufacturerBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientManufacturerBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientManufacturerBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientManufacturerBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientManufacturerBuilder.fromJson(json);
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
  IngredientManufacturerRoleBuilder? role;

  /// [manufacturer]
  /// An organization that manufactures this ingredient.
  ReferenceBuilder? manufacturer;

  /// Converts a [IngredientManufacturerBuilder]
  /// to [IngredientManufacturer]
  @override
  IngredientManufacturer build() => IngredientManufacturer.fromJson(toJson());

  /// Converts a [IngredientManufacturerBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'role',
      role,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (manufacturer != null) {
          fields.add(manufacturer!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'role':
        {
          if (child is IngredientManufacturerRoleBuilder) {
            role = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted =
                    IngredientManufacturerRoleBuilder(stringValue);
                role = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'manufacturer':
        {
          if (child is ReferenceBuilder) {
            manufacturer = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'role':
        return ['FhirCodeEnumBuilder'];
      case 'manufacturer':
        return ['ReferenceBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [IngredientManufacturerBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'role':
        {
          role = IngredientManufacturerRoleBuilder.empty();
          return;
        }
      case 'manufacturer':
        {
          manufacturer = ReferenceBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool role = false,
    bool manufacturer = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (role) this.role = null;
    if (manufacturer) this.manufacturer = null;
  }

  @override
  IngredientManufacturerBuilder clone() => throw UnimplementedError();
  @override
  IngredientManufacturerBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    IngredientManufacturerRoleBuilder? role,
    ReferenceBuilder? manufacturer,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = IngredientManufacturerBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      manufacturer: manufacturer ?? this.manufacturer,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! IngredientManufacturerBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      role,
      o.role,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    return true;
  }
}

/// [IngredientSubstanceBuilder]
/// The substance that comprises this ingredient.
class IngredientSubstanceBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [IngredientSubstanceBuilder]

  IngredientSubstanceBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.strength,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Ingredient.substance',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory IngredientSubstanceBuilder.empty() => IngredientSubstanceBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientSubstanceBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient.substance';
    return IngredientSubstanceBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      code: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'code',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.code',
      ),
      strength: (json['strength'] as List<dynamic>?)
          ?.map<IngredientStrengthBuilder>(
            (v) => IngredientStrengthBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.strength',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [IngredientSubstanceBuilder]
  /// from a [String] or [YamlMap] object
  factory IngredientSubstanceBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientSubstanceBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientSubstanceBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientSubstanceBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientSubstanceBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientSubstanceBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientSubstanceBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientSubstance';

  /// [code]
  /// A code or full resource that represents the ingredient's substance.
  CodeableReferenceBuilder? code;

  /// [strength]
  /// The quantity of substance in the unit of presentation, or in the volume
  /// (or mass) of the single pharmaceutical product or manufactured item.
  /// The allowed repetitions do not represent different strengths, but are
  /// different representations - mathematically equivalent - of a single
  /// strength.
  List<IngredientStrengthBuilder>? strength;

  /// Converts a [IngredientSubstanceBuilder]
  /// to [IngredientSubstance]
  @override
  IngredientSubstance build() => IngredientSubstance.fromJson(toJson());

  /// Converts a [IngredientSubstanceBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'code',
      code,
    );
    addField(
      'strength',
      strength,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (code != null) {
          fields.add(code!);
        }
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'code':
        {
          if (child is CodeableReferenceBuilder) {
            code = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'strength':
        {
          if (child is List<IngredientStrengthBuilder>) {
            // Replace or create new list
            strength = child;
            return;
          } else if (child is IngredientStrengthBuilder) {
            // Add single element to existing list or create new list
            strength = [
              ...(strength ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'code':
        return ['CodeableReferenceBuilder'];
      case 'strength':
        return ['IngredientStrengthBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [IngredientSubstanceBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'code':
        {
          code = CodeableReferenceBuilder.empty();
          return;
        }
      case 'strength':
        {
          strength = <IngredientStrengthBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool code = false,
    bool strength = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (code) this.code = null;
    if (strength) this.strength = null;
  }

  @override
  IngredientSubstanceBuilder clone() => throw UnimplementedError();
  @override
  IngredientSubstanceBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? code,
    List<IngredientStrengthBuilder>? strength,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = IngredientSubstanceBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      strength: strength ?? this.strength,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! IngredientSubstanceBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      code,
      o.code,
    )) {
      return false;
    }
    if (!listEquals<IngredientStrengthBuilder>(
      strength,
      o.strength,
    )) {
      return false;
    }
    return true;
  }
}

/// [IngredientStrengthBuilder]
/// The quantity of substance in the unit of presentation, or in the volume
/// (or mass) of the single pharmaceutical product or manufactured item.
/// The allowed repetitions do not represent different strengths, but are
/// different representations - mathematically equivalent - of a single
/// strength.
class IngredientStrengthBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [IngredientStrengthBuilder]

  IngredientStrengthBuilder({
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

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory IngredientStrengthBuilder.empty() => IngredientStrengthBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientStrengthBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient.substance.strength';
    return IngredientStrengthBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      presentationX:
          JsonParser.parsePolymorphic<PresentationXIngredientStrengthBuilder>(
        json,
        {
          'presentationRatio': RatioBuilder.fromJson,
          'presentationRatioRange': RatioRangeBuilder.fromJson,
        },
        objectPath,
      ),
      textPresentation: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'textPresentation',
        FhirStringBuilder.fromJson,
        '$objectPath.textPresentation',
      ),
      concentrationX:
          JsonParser.parsePolymorphic<ConcentrationXIngredientStrengthBuilder>(
        json,
        {
          'concentrationRatio': RatioBuilder.fromJson,
          'concentrationRatioRange': RatioRangeBuilder.fromJson,
        },
        objectPath,
      ),
      textConcentration: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'textConcentration',
        FhirStringBuilder.fromJson,
        '$objectPath.textConcentration',
      ),
      measurementPoint: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'measurementPoint',
        FhirStringBuilder.fromJson,
        '$objectPath.measurementPoint',
      ),
      country: (json['country'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.country',
              },
            ),
          )
          .toList(),
      referenceStrength: (json['referenceStrength'] as List<dynamic>?)
          ?.map<IngredientReferenceStrengthBuilder>(
            (v) => IngredientReferenceStrengthBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.referenceStrength',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [IngredientStrengthBuilder]
  /// from a [String] or [YamlMap] object
  factory IngredientStrengthBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientStrengthBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientStrengthBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientStrengthBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientStrengthBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientStrengthBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientStrengthBuilder.fromJson(json);
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
  PresentationXIngredientStrengthBuilder? presentationX;

  /// Getter for [presentationRatio] as a RatioBuilder
  RatioBuilder? get presentationRatio => presentationX?.isAs<RatioBuilder>();

  /// Getter for [presentationRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get presentationRatioRange =>
      presentationX?.isAs<RatioRangeBuilder>();

  /// [textPresentation]
  /// A textual represention of either the whole of the presentation strength
  /// or a part of it - with the rest being in Strength.presentation as a
  /// ratio.
  FhirStringBuilder? textPresentation;

  /// [concentrationX]
  /// The strength per unitary volume (or mass).
  ConcentrationXIngredientStrengthBuilder? concentrationX;

  /// Getter for [concentrationRatio] as a RatioBuilder
  RatioBuilder? get concentrationRatio => concentrationX?.isAs<RatioBuilder>();

  /// Getter for [concentrationRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get concentrationRatioRange =>
      concentrationX?.isAs<RatioRangeBuilder>();

  /// [textConcentration]
  /// A textual represention of either the whole of the concentration
  /// strength or a part of it - with the rest being in
  /// Strength.concentration as a ratio.
  FhirStringBuilder? textConcentration;

  /// [measurementPoint]
  /// For when strength is measured at a particular point or distance. There
  /// are products where strength is measured at a particular point. For
  /// example, the strength of the ingredient in some inhalers is measured at
  /// a particular position relative to the point of aerosolization.
  FhirStringBuilder? measurementPoint;

  /// [country]
  /// The country or countries for which the strength range applies.
  List<CodeableConceptBuilder>? country;

  /// [referenceStrength]
  /// Strength expressed in terms of a reference substance. For when the
  /// ingredient strength is additionally expressed as equivalent to the
  /// strength of some other closely related substance (e.g. salt vs. base).
  /// Reference strength represents the strength (quantitative composition)
  /// of the active moiety of the active substance. There are situations when
  /// the active substance and active moiety are different, therefore both a
  /// strength and a reference strength are needed.
  List<IngredientReferenceStrengthBuilder>? referenceStrength;

  /// Converts a [IngredientStrengthBuilder]
  /// to [IngredientStrength]
  @override
  IngredientStrength build() => IngredientStrength.fromJson(toJson());

  /// Converts a [IngredientStrengthBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    if (presentationX != null) {
      final fhirType = presentationX!.fhirType;
      addField(
        'presentation${fhirType.capitalize()}',
        presentationX,
      );
    }

    addField(
      'textPresentation',
      textPresentation,
    );
    if (concentrationX != null) {
      final fhirType = concentrationX!.fhirType;
      addField(
        'concentration${fhirType.capitalize()}',
        concentrationX,
      );
    }

    addField(
      'textConcentration',
      textConcentration,
    );
    addField(
      'measurementPoint',
      measurementPoint,
    );
    addField(
      'country',
      country,
    );
    addField(
      'referenceStrength',
      referenceStrength,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (presentationX != null) {
          fields.add(presentationX!);
        }
      case 'presentationX':
        if (presentationX != null) {
          fields.add(presentationX!);
        }
      case 'presentationRatio':
        if (presentationX is RatioBuilder) {
          fields.add(presentationX!);
        }
      case 'presentationRatioRange':
        if (presentationX is RatioRangeBuilder) {
          fields.add(presentationX!);
        }
      case 'textPresentation':
        if (textPresentation != null) {
          fields.add(textPresentation!);
        }
      case 'concentration':
        if (concentrationX != null) {
          fields.add(concentrationX!);
        }
      case 'concentrationX':
        if (concentrationX != null) {
          fields.add(concentrationX!);
        }
      case 'concentrationRatio':
        if (concentrationX is RatioBuilder) {
          fields.add(concentrationX!);
        }
      case 'concentrationRatioRange':
        if (concentrationX is RatioRangeBuilder) {
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'presentation':
      case 'presentationX':
        {
          if (child is PresentationXIngredientStrengthBuilder) {
            presentationX = child;
            return;
          } else {
            if (child is RatioBuilder) {
              presentationX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              presentationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'presentationRatio':
        {
          if (child is RatioBuilder) {
            presentationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'presentationRatioRange':
        {
          if (child is RatioRangeBuilder) {
            presentationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'textPresentation':
        {
          if (child is FhirStringBuilder) {
            textPresentation = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                textPresentation = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'concentration':
      case 'concentrationX':
        {
          if (child is ConcentrationXIngredientStrengthBuilder) {
            concentrationX = child;
            return;
          } else {
            if (child is RatioBuilder) {
              concentrationX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              concentrationX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'concentrationRatio':
        {
          if (child is RatioBuilder) {
            concentrationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'concentrationRatioRange':
        {
          if (child is RatioRangeBuilder) {
            concentrationX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'textConcentration':
        {
          if (child is FhirStringBuilder) {
            textConcentration = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                textConcentration = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'measurementPoint':
        {
          if (child is FhirStringBuilder) {
            measurementPoint = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                measurementPoint = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'country':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            country = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            country = [
              ...(country ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'referenceStrength':
        {
          if (child is List<IngredientReferenceStrengthBuilder>) {
            // Replace or create new list
            referenceStrength = child;
            return;
          } else if (child is IngredientReferenceStrengthBuilder) {
            // Add single element to existing list or create new list
            referenceStrength = [
              ...(referenceStrength ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'presentation':
      case 'presentationX':
        return [
          'RatioBuilder',
          'RatioRangeBuilder',
        ];
      case 'presentationRatio':
        return ['RatioBuilder'];
      case 'presentationRatioRange':
        return ['RatioRangeBuilder'];
      case 'textPresentation':
        return ['FhirStringBuilder'];
      case 'concentration':
      case 'concentrationX':
        return [
          'RatioBuilder',
          'RatioRangeBuilder',
        ];
      case 'concentrationRatio':
        return ['RatioBuilder'];
      case 'concentrationRatioRange':
        return ['RatioRangeBuilder'];
      case 'textConcentration':
        return ['FhirStringBuilder'];
      case 'measurementPoint':
        return ['FhirStringBuilder'];
      case 'country':
        return ['CodeableConceptBuilder'];
      case 'referenceStrength':
        return ['IngredientReferenceStrengthBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [IngredientStrengthBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'presentation':
      case 'presentationX':
      case 'presentationRatio':
        {
          presentationX = RatioBuilder.empty();
          return;
        }
      case 'presentationRatioRange':
        {
          presentationX = RatioRangeBuilder.empty();
          return;
        }
      case 'textPresentation':
        {
          textPresentation = FhirStringBuilder.empty();
          return;
        }
      case 'concentration':
      case 'concentrationX':
      case 'concentrationRatio':
        {
          concentrationX = RatioBuilder.empty();
          return;
        }
      case 'concentrationRatioRange':
        {
          concentrationX = RatioRangeBuilder.empty();
          return;
        }
      case 'textConcentration':
        {
          textConcentration = FhirStringBuilder.empty();
          return;
        }
      case 'measurementPoint':
        {
          measurementPoint = FhirStringBuilder.empty();
          return;
        }
      case 'country':
        {
          country = <CodeableConceptBuilder>[];
          return;
        }
      case 'referenceStrength':
        {
          referenceStrength = <IngredientReferenceStrengthBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool presentation = false,
    bool textPresentation = false,
    bool concentration = false,
    bool textConcentration = false,
    bool measurementPoint = false,
    bool country = false,
    bool referenceStrength = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (presentation) presentationX = null;
    if (textPresentation) this.textPresentation = null;
    if (concentration) concentrationX = null;
    if (textConcentration) this.textConcentration = null;
    if (measurementPoint) this.measurementPoint = null;
    if (country) this.country = null;
    if (referenceStrength) this.referenceStrength = null;
  }

  @override
  IngredientStrengthBuilder clone() => throw UnimplementedError();
  @override
  IngredientStrengthBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    PresentationXIngredientStrengthBuilder? presentationX,
    FhirStringBuilder? textPresentation,
    ConcentrationXIngredientStrengthBuilder? concentrationX,
    FhirStringBuilder? textConcentration,
    FhirStringBuilder? measurementPoint,
    List<CodeableConceptBuilder>? country,
    List<IngredientReferenceStrengthBuilder>? referenceStrength,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = IngredientStrengthBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      presentationX: presentationX ?? this.presentationX,
      textPresentation: textPresentation ?? this.textPresentation,
      concentrationX: concentrationX ?? this.concentrationX,
      textConcentration: textConcentration ?? this.textConcentration,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      country: country ?? this.country,
      referenceStrength: referenceStrength ?? this.referenceStrength,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! IngredientStrengthBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      presentationX,
      o.presentationX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      textPresentation,
      o.textPresentation,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      concentrationX,
      o.concentrationX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      textConcentration,
      o.textConcentration,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      measurementPoint,
      o.measurementPoint,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      country,
      o.country,
    )) {
      return false;
    }
    if (!listEquals<IngredientReferenceStrengthBuilder>(
      referenceStrength,
      o.referenceStrength,
    )) {
      return false;
    }
    return true;
  }
}

/// [IngredientReferenceStrengthBuilder]
/// Strength expressed in terms of a reference substance. For when the
/// ingredient strength is additionally expressed as equivalent to the
/// strength of some other closely related substance (e.g. salt vs. base).
/// Reference strength represents the strength (quantitative composition)
/// of the active moiety of the active substance. There are situations when
/// the active substance and active moiety are different, therefore both a
/// strength and a reference strength are needed.
class IngredientReferenceStrengthBuilder extends BackboneElementBuilder {
  /// Primary constructor for
  /// [IngredientReferenceStrengthBuilder]

  IngredientReferenceStrengthBuilder({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    this.strengthX,
    this.measurementPoint,
    this.country,
    super.disallowExtensions,
  }) : super(
          objectPath: 'Ingredient.substance.strength.referenceStrength',
        );

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory IngredientReferenceStrengthBuilder.empty() =>
      IngredientReferenceStrengthBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory IngredientReferenceStrengthBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    const objectPath = 'Ingredient.substance.strength.referenceStrength';
    return IngredientReferenceStrengthBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.modifierExtension',
              },
            ),
          )
          .toList(),
      substance: JsonParser.parseObject<CodeableReferenceBuilder>(
        json,
        'substance',
        CodeableReferenceBuilder.fromJson,
        '$objectPath.substance',
      ),
      strengthX: JsonParser.parsePolymorphic<
          StrengthXIngredientReferenceStrengthBuilder>(
        json,
        {
          'strengthRatio': RatioBuilder.fromJson,
          'strengthRatioRange': RatioRangeBuilder.fromJson,
        },
        objectPath,
      ),
      measurementPoint: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'measurementPoint',
        FhirStringBuilder.fromJson,
        '$objectPath.measurementPoint',
      ),
      country: (json['country'] as List<dynamic>?)
          ?.map<CodeableConceptBuilder>(
            (v) => CodeableConceptBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.country',
              },
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [IngredientReferenceStrengthBuilder]
  /// from a [String] or [YamlMap] object
  factory IngredientReferenceStrengthBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return IngredientReferenceStrengthBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return IngredientReferenceStrengthBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'IngredientReferenceStrengthBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [IngredientReferenceStrengthBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory IngredientReferenceStrengthBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return IngredientReferenceStrengthBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'IngredientReferenceStrength';

  /// [substance]
  /// Relevant reference substance.
  CodeableReferenceBuilder? substance;

  /// [strengthX]
  /// Strength expressed in terms of a reference substance.
  StrengthXIngredientReferenceStrengthBuilder? strengthX;

  /// Getter for [strengthRatio] as a RatioBuilder
  RatioBuilder? get strengthRatio => strengthX?.isAs<RatioBuilder>();

  /// Getter for [strengthRatioRange] as a RatioRangeBuilder
  RatioRangeBuilder? get strengthRatioRange =>
      strengthX?.isAs<RatioRangeBuilder>();

  /// [measurementPoint]
  /// For when strength is measured at a particular point or distance.
  FhirStringBuilder? measurementPoint;

  /// [country]
  /// The country or countries for which the strength range applies.
  List<CodeableConceptBuilder>? country;

  /// Converts a [IngredientReferenceStrengthBuilder]
  /// to [IngredientReferenceStrength]
  @override
  IngredientReferenceStrength build() =>
      IngredientReferenceStrength.fromJson(toJson());

  /// Converts a [IngredientReferenceStrengthBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'modifierExtension',
      modifierExtension,
    );
    addField(
      'substance',
      substance,
    );
    if (strengthX != null) {
      final fhirType = strengthX!.fhirType;
      addField(
        'strength${fhirType.capitalize()}',
        strengthX,
      );
    }

    addField(
      'measurementPoint',
      measurementPoint,
    );
    addField(
      'country',
      country,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
        if (strengthX != null) {
          fields.add(strengthX!);
        }
      case 'strengthX':
        if (strengthX != null) {
          fields.add(strengthX!);
        }
      case 'strengthRatio':
        if (strengthX is RatioBuilder) {
          fields.add(strengthX!);
        }
      case 'strengthRatioRange':
        if (strengthX is RatioRangeBuilder) {
          fields.add(strengthX!);
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'modifierExtension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            modifierExtension = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            modifierExtension = [
              ...(modifierExtension ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'substance':
        {
          if (child is CodeableReferenceBuilder) {
            substance = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'strength':
      case 'strengthX':
        {
          if (child is StrengthXIngredientReferenceStrengthBuilder) {
            strengthX = child;
            return;
          } else {
            if (child is RatioBuilder) {
              strengthX = child;
              return;
            }
            if (child is RatioRangeBuilder) {
              strengthX = child;
              return;
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'strengthRatio':
        {
          if (child is RatioBuilder) {
            strengthX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'strengthRatioRange':
        {
          if (child is RatioRangeBuilder) {
            strengthX = child;
            return;
          } else {
            throw Exception('Invalid child type for $childName');
          }
        }
      case 'measurementPoint':
        {
          if (child is FhirStringBuilder) {
            measurementPoint = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                measurementPoint = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'country':
        {
          if (child is List<CodeableConceptBuilder>) {
            // Replace or create new list
            country = child;
            return;
          } else if (child is CodeableConceptBuilder) {
            // Add single element to existing list or create new list
            country = [
              ...(country ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'modifierExtension':
        return ['FhirExtensionBuilder'];
      case 'substance':
        return ['CodeableReferenceBuilder'];
      case 'strength':
      case 'strengthX':
        return [
          'RatioBuilder',
          'RatioRangeBuilder',
        ];
      case 'strengthRatio':
        return ['RatioBuilder'];
      case 'strengthRatioRange':
        return ['RatioRangeBuilder'];
      case 'measurementPoint':
        return ['FhirStringBuilder'];
      case 'country':
        return ['CodeableConceptBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [IngredientReferenceStrengthBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'modifierExtension':
        {
          modifierExtension = <FhirExtensionBuilder>[];
          return;
        }
      case 'substance':
        {
          substance = CodeableReferenceBuilder.empty();
          return;
        }
      case 'strength':
      case 'strengthX':
      case 'strengthRatio':
        {
          strengthX = RatioBuilder.empty();
          return;
        }
      case 'strengthRatioRange':
        {
          strengthX = RatioRangeBuilder.empty();
          return;
        }
      case 'measurementPoint':
        {
          measurementPoint = FhirStringBuilder.empty();
          return;
        }
      case 'country':
        {
          country = <CodeableConceptBuilder>[];
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool modifierExtension = false,
    bool substance = false,
    bool strength = false,
    bool measurementPoint = false,
    bool country = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (modifierExtension) this.modifierExtension = null;
    if (substance) this.substance = null;
    if (strength) strengthX = null;
    if (measurementPoint) this.measurementPoint = null;
    if (country) this.country = null;
  }

  @override
  IngredientReferenceStrengthBuilder clone() => throw UnimplementedError();
  @override
  IngredientReferenceStrengthBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
    CodeableReferenceBuilder? substance,
    StrengthXIngredientReferenceStrengthBuilder? strengthX,
    FhirStringBuilder? measurementPoint,
    List<CodeableConceptBuilder>? country,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = this.objectPath;
    final newResult = IngredientReferenceStrengthBuilder(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      strengthX: strengthX ?? this.strengthX,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      country: country ?? this.country,
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! IngredientReferenceStrengthBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      modifierExtension,
      o.modifierExtension,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      substance,
      o.substance,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      strengthX,
      o.strengthX,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      measurementPoint,
      o.measurementPoint,
    )) {
      return false;
    }
    if (!listEquals<CodeableConceptBuilder>(
      country,
      o.country,
    )) {
      return false;
    }
    return true;
  }
}

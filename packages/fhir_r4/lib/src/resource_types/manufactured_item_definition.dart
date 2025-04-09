import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'manufactured_item_definition.g.dart';

/// [ManufacturedItemDefinition]
/// The definition and characteristics of a medicinal manufactured item,
/// such as a tablet or capsule, as contained in a packaged medicinal
/// product.
class ManufacturedItemDefinition extends DomainResource {
  /// Primary constructor for
  /// [ManufacturedItemDefinition]

  const ManufacturedItemDefinition({
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
    required this.manufacturedDoseForm,
    this.unitOfPresentation,
    this.manufacturer,
    this.ingredient,
    this.property,
  }) : super(
          resourceType: R4ResourceType.ManufacturedItemDefinition,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinition.fromJson(
    Map<String, dynamic> json,
  ) {
    return ManufacturedItemDefinition(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      meta: JsonParser.parseObject<FhirMeta>(
        json,
        'meta',
        FhirMeta.fromJson,
      ),
      implicitRules: JsonParser.parsePrimitive<FhirUri>(
        json,
        'implicitRules',
        FhirUri.fromJson,
      ),
      language: JsonParser.parsePrimitive<CommonLanguages>(
        json,
        'language',
        CommonLanguages.fromJson,
      ),
      text: JsonParser.parseObject<Narrative>(
        json,
        'text',
        Narrative.fromJson,
      ),
      contained: (json['contained'] as List<dynamic>?)
          ?.map<Resource>(
            (v) => Resource.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      status: JsonParser.parsePrimitive<PublicationStatus>(
        json,
        'status',
        PublicationStatus.fromJson,
      )!,
      manufacturedDoseForm: JsonParser.parseObject<CodeableConcept>(
        json,
        'manufacturedDoseForm',
        CodeableConcept.fromJson,
      )!,
      unitOfPresentation: JsonParser.parseObject<CodeableConcept>(
        json,
        'unitOfPresentation',
        CodeableConcept.fromJson,
      ),
      manufacturer: (json['manufacturer'] as List<dynamic>?)
          ?.map<Reference>(
            (v) => Reference.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionProperty>(
            (v) => ManufacturedItemDefinitionProperty.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
    );
  }

  /// Deserialize [ManufacturedItemDefinition]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinition.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinition.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinition.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinition '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinition]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinition.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinition';

  /// [identifier]
  /// Unique identifier.
  final List<Identifier>? identifier;

  /// [status]
  /// The status of this item. Enables tracking the life-cycle of the
  /// content.
  final PublicationStatus status;

  /// [manufacturedDoseForm]
  /// Dose form as manufactured and before any transformation into the
  /// pharmaceutical product.
  final CodeableConcept manufacturedDoseForm;

  /// [unitOfPresentation]
  /// The “real world” units in which the quantity of the manufactured item
  /// is described.
  final CodeableConcept? unitOfPresentation;

  /// [manufacturer]
  /// Manufacturer of the item (Note that this should be named "manufacturer"
  /// but it currently causes technical issues).
  final List<Reference>? manufacturer;

  /// [ingredient]
  /// The ingredients of this manufactured item. This is only needed if the
  /// ingredients are not specified by incoming references from the
  /// Ingredient resource.
  final List<CodeableConcept>? ingredient;

  /// [property]
  /// General characteristics of this item.
  final List<ManufacturedItemDefinitionProperty>? property;
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
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
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
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
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
      'manufacturedDoseForm',
      manufacturedDoseForm,
    );
    addField(
      'unitOfPresentation',
      unitOfPresentation,
    );
    addField(
      'manufacturer',
      manufacturer,
    );
    addField(
      'ingredient',
      ingredient,
    );
    addField(
      'property',
      property,
    );
    return json;
  }

  @override
  ManufacturedItemDefinition clone() => copyWith();

  /// Copy function for [ManufacturedItemDefinition]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ManufacturedItemDefinitionCopyWith<ManufacturedItemDefinition>
      get copyWith =>
          _$ManufacturedItemDefinitionCopyWithImpl<ManufacturedItemDefinition>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ManufacturedItemDefinition) {
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
    if (!listEquals<Identifier>(
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
    if (!equalsDeepWithNull(
      manufacturedDoseForm,
      o.manufacturedDoseForm,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      unitOfPresentation,
      o.unitOfPresentation,
    )) {
      return false;
    }
    if (!listEquals<Reference>(
      manufacturer,
      o.manufacturer,
    )) {
      return false;
    }
    if (!listEquals<CodeableConcept>(
      ingredient,
      o.ingredient,
    )) {
      return false;
    }
    if (!listEquals<ManufacturedItemDefinitionProperty>(
      property,
      o.property,
    )) {
      return false;
    }
    return true;
  }
}

/// [ManufacturedItemDefinitionProperty]
/// General characteristics of this item.
class ManufacturedItemDefinitionProperty extends BackboneElement {
  /// Primary constructor for
  /// [ManufacturedItemDefinitionProperty]

  const ManufacturedItemDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueX,
    super.disallowExtensions,
  }) : super();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ManufacturedItemDefinitionProperty.fromJson(
    Map<String, dynamic> json,
  ) {
    return ManufacturedItemDefinitionProperty(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {...v as Map<String, dynamic>},
            ),
          )
          .toList(),
      type: JsonParser.parseObject<CodeableConcept>(
        json,
        'type',
        CodeableConcept.fromJson,
      )!,
      valueX:
          JsonParser.parsePolymorphic<ValueXManufacturedItemDefinitionProperty>(
        json,
        {
          'valueCodeableConcept': CodeableConcept.fromJson,
          'valueQuantity': Quantity.fromJson,
          'valueDate': FhirDate.fromJson,
          'valueBoolean': FhirBoolean.fromJson,
          'valueAttachment': Attachment.fromJson,
        },
      ),
    );
  }

  /// Deserialize [ManufacturedItemDefinitionProperty]
  /// from a [String] or [YamlMap] object
  factory ManufacturedItemDefinitionProperty.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return ManufacturedItemDefinitionProperty.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return ManufacturedItemDefinitionProperty.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'ManufacturedItemDefinitionProperty '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [ManufacturedItemDefinitionProperty]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ManufacturedItemDefinitionProperty.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ManufacturedItemDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'ManufacturedItemDefinitionProperty';

  /// [type]
  /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueX]
  /// A value for the characteristic.
  final ValueXManufacturedItemDefinitionProperty? valueX;

  /// Getter for [valueCodeableConcept] as a CodeableConcept
  CodeableConcept? get valueCodeableConcept => valueX?.isAs<CodeableConcept>();

  /// Getter for [valueQuantity] as a Quantity
  Quantity? get valueQuantity => valueX?.isAs<Quantity>();

  /// Getter for [valueDate] as a FhirDate
  FhirDate? get valueDate => valueX?.isAs<FhirDate>();

  /// Getter for [valueBoolean] as a FhirBoolean
  FhirBoolean? get valueBoolean => valueX?.isAs<FhirBoolean>();

  /// Getter for [valueAttachment] as a Attachment
  Attachment? get valueAttachment => valueX?.isAs<Attachment>();
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
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field is PrimitiveType) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        final isPrimitive = field.first is PrimitiveType;
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue;
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
        if (tempList.isEmpty) return;
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBase) {
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
      'type',
      type,
    );
    if (valueX != null) {
      final fhirType = valueX!.fhirType;
      addField(
        'value${fhirType.capitalize()}',
        valueX,
      );
    }

    return json;
  }

  @override
  ManufacturedItemDefinitionProperty clone() => copyWith();

  /// Copy function for [ManufacturedItemDefinitionProperty]
  /// Returns a copy of the current instance with the provided fields modified.
  /// If a field is not provided, it will retain its original value.
  /// If a null is provided, this will clearn the field, unless the
  /// field is required, in which case it will keep its current value.
  @override
  $ManufacturedItemDefinitionPropertyCopyWith<
          ManufacturedItemDefinitionProperty>
      get copyWith => _$ManufacturedItemDefinitionPropertyCopyWithImpl<
              ManufacturedItemDefinitionProperty>(
            this,
            (value) => value,
          );

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! ManufacturedItemDefinitionProperty) {
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
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      valueX,
      o.valueX,
    )) {
      return false;
    }
    return true;
  }
}

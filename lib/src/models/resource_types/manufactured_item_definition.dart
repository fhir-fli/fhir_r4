import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      identifier: (json['identifier'] as List<dynamic>?)
          ?.map<Identifier>(
            (v) => Identifier.fromJson(
              v as Map<String, dynamic>,
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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map<CodeableConcept>(
            (v) => CodeableConcept.fromJson(
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      property: (json['property'] as List<dynamic>?)
          ?.map<ManufacturedItemDefinitionProperty>(
            (v) => ManufacturedItemDefinitionProperty.fromJson(
              v as Map<String, dynamic>,
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
    if (json is Map<String, Object?>) {
      return ManufacturedItemDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
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

    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] = identifier!.map((e) => e.toJson()).toList();
    }

    addField('status', status);
    json['manufacturedDoseForm'] = manufacturedDoseForm.toJson();

    if (unitOfPresentation != null) {
      json['unitOfPresentation'] = unitOfPresentation!.toJson();
    }

    if (manufacturer != null && manufacturer!.isNotEmpty) {
      json['manufacturer'] = manufacturer!.map((e) => e.toJson()).toList();
    }

    if (ingredient != null && ingredient!.isNotEmpty) {
      json['ingredient'] = ingredient!.map((e) => e.toJson()).toList();
    }

    if (property != null && property!.isNotEmpty) {
      json['property'] = property!.map((e) => e.toJson()).toList();
    }

    return json;
  }

  @override
  ManufacturedItemDefinition clone() => throw UnimplementedError();
  @override
  ManufacturedItemDefinition copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    PublicationStatus? status,
    CodeableConcept? manufacturedDoseForm,
    CodeableConcept? unitOfPresentation,
    List<Reference>? manufacturer,
    List<CodeableConcept>? ingredient,
    List<ManufacturedItemDefinitionProperty>? property,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ManufacturedItemDefinition(
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
      manufacturedDoseForm: manufacturedDoseForm ?? this.manufacturedDoseForm,
      unitOfPresentation: unitOfPresentation ?? this.unitOfPresentation,
      manufacturer: manufacturer ?? this.manufacturer,
      ingredient: ingredient ?? this.ingredient,
      property: property ?? this.property,
    );
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
  });

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
              v as Map<String, dynamic>,
            ),
          )
          .toList(),
      modifierExtension: (json['modifierExtension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              v as Map<String, dynamic>,
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
              json, {
        'valueCodeableConcept': CodeableConcept.fromJson,
        'valueQuantity': Quantity.fromJson,
        'valueDate': FhirDate.fromJson,
        'valueBoolean': FhirBoolean.fromJson,
        'valueAttachment': Attachment.fromJson,
      }),
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
    if (json is Map<String, Object?>) {
      return ManufacturedItemDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
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
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    void addField(String key, FhirBase? field) {
      if (field != null) {
        if (field is PrimitiveType) {
          json[key] = field.toJson()['value'];
          if (field.toJson()['_value'] != null) {
            json['_$key'] = field.toJson()['_value'];
          }
        } else {
          json[key] = field.toJson();
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

    json['type'] = type.toJson();

    if (valueX != null) {
      json['value${valueX!.fhirType.capitalize()}'] = valueX!.toJson();
    }

    return json;
  }

  @override
  ManufacturedItemDefinitionProperty clone() => throw UnimplementedError();
  @override
  ManufacturedItemDefinitionProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    ValueXManufacturedItemDefinitionProperty? valueX,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ManufacturedItemDefinitionProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueX: valueX ?? this.valueX,
    );
  }
}

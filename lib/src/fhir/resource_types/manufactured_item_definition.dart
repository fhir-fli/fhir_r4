import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'manufactured_item_definition.g.dart';

/// [ManufacturedItemDefinition] /// The definition and characteristics of a medicinal manufactured item, such
/// as a tablet or capsule, as contained in a packaged medicinal product.
@JsonSerializable()
class ManufacturedItemDefinition extends DomainResource {
  ManufacturedItemDefinition({
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
    required this.status,
    this.statusElement,
    required this.manufacturedDoseForm,
    this.unitOfPresentation,
    this.manufacturer,
    this.ingredient,
    this.property,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    R4ResourceType? resourceType,
  }) : super(
            resourceType: R4ResourceType.ManufacturedItemDefinition,
            fhirType: 'ManufacturedItemDefinition');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// The status of this item. Enables tracking the life-cycle of the content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [manufacturedDoseForm] /// Dose form as manufactured and before any transformation into the
  /// pharmaceutical product.
  @JsonKey(name: 'manufacturedDoseForm')
  final CodeableConcept manufacturedDoseForm;

  /// [unitOfPresentation] /// The “real world” units in which the quantity of the manufactured item is
  /// described.
  @JsonKey(name: 'unitOfPresentation')
  final UnitOfPresentation? unitOfPresentation;

  /// [manufacturer] /// Manufacturer of the item (Note that this should be named "manufacturer" but
  /// it currently causes technical issues).
  @JsonKey(name: 'manufacturer')
  final List<Reference>? manufacturer;

  /// [ingredient] /// The ingredients of this manufactured item. This is only needed if the
  /// ingredients are not specified by incoming references from the Ingredient
  /// resource.
  @JsonKey(name: 'ingredient')
  final List<CodeableConcept>? ingredient;

  /// [property] /// General characteristics of this item.
  @JsonKey(name: 'property')
  final List<ManufacturedItemDefinitionProperty>? property;
  factory ManufacturedItemDefinition.fromJson(Map<String, dynamic> json) =>
      _$ManufacturedItemDefinitionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ManufacturedItemDefinitionToJson(this);

  @override
  ManufacturedItemDefinition clone() => throw UnimplementedError();
  @override
  ManufacturedItemDefinition copyWith({
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
    PublicationStatus? status,
    Element? statusElement,
    CodeableConcept? manufacturedDoseForm,
    UnitOfPresentation? unitOfPresentation,
    List<Reference>? manufacturer,
    List<CodeableConcept>? ingredient,
    List<ManufacturedItemDefinitionProperty>? property,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ManufacturedItemDefinition(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      manufacturedDoseForm: manufacturedDoseForm ?? this.manufacturedDoseForm,
      unitOfPresentation: unitOfPresentation ?? this.unitOfPresentation,
      manufacturer: manufacturer ?? this.manufacturer,
      ingredient: ingredient ?? this.ingredient,
      property: property ?? this.property,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ManufacturedItemDefinition.fromYaml(dynamic yaml) => yaml is String
      ? ManufacturedItemDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ManufacturedItemDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ManufacturedItemDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ManufacturedItemDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ManufacturedItemDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ManufacturedItemDefinitionProperty] /// General characteristics of this item.
@JsonSerializable()
class ManufacturedItemDefinitionProperty extends BackboneElement {
  ManufacturedItemDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ManufacturedItemDefinitionProperty');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code expressing the type of characteristic.
  @JsonKey(name: 'type')
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the characteristic.
  @JsonKey(name: 'valueCodeableConcept')
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the characteristic.
  @JsonKey(name: 'valueQuantity')
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the characteristic.
  @JsonKey(name: 'valueDate')
  final FhirDate? valueDate;
  @JsonKey(name: '_valueDate')
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the characteristic.
  @JsonKey(name: 'valueBoolean')
  final FhirBoolean? valueBoolean;
  @JsonKey(name: '_valueBoolean')
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the characteristic.
  @JsonKey(name: 'valueAttachment')
  final Attachment? valueAttachment;
  factory ManufacturedItemDefinitionProperty.fromJson(
          Map<String, dynamic> json) =>
      _$ManufacturedItemDefinitionPropertyFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$ManufacturedItemDefinitionPropertyToJson(this);

  @override
  ManufacturedItemDefinitionProperty clone() => throw UnimplementedError();
  @override
  ManufacturedItemDefinitionProperty copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    Attachment? valueAttachment,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return ManufacturedItemDefinitionProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ManufacturedItemDefinitionProperty.fromYaml(dynamic yaml) => yaml
          is String
      ? ManufacturedItemDefinitionProperty.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ManufacturedItemDefinitionProperty.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ManufacturedItemDefinitionProperty cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ManufacturedItemDefinitionProperty.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ManufacturedItemDefinitionProperty.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

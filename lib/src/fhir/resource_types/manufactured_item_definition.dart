import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ManufacturedItemDefinition] /// The definition and characteristics of a medicinal manufactured item, such
/// as a tablet or capsule, as contained in a packaged medicinal product.
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
  }) : super(resourceType: R4ResourceType.ManufacturedItemDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Unique identifier.
  final List<Identifier>? identifier;

  /// [status] /// The status of this item. Enables tracking the life-cycle of the content.
  final FhirCode status;
  final Element? statusElement;

  /// [manufacturedDoseForm] /// Dose form as manufactured and before any transformation into the
  /// pharmaceutical product.
  final CodeableConcept manufacturedDoseForm;

  /// [unitOfPresentation] /// The “real world” units in which the quantity of the manufactured item is
  /// described.
  final CodeableConcept? unitOfPresentation;

  /// [manufacturer] /// Manufacturer of the item (Note that this should be named "manufacturer" but
  /// it currently causes technical issues).
  final List<Reference>? manufacturer;

  /// [ingredient] /// The ingredients of this manufactured item. This is only needed if the
  /// ingredients are not specified by incoming references from the Ingredient
  /// resource.
  final List<CodeableConcept>? ingredient;

  /// [property] /// General characteristics of this item.
  final List<ManufacturedItemDefinitionProperty>? property;
  @override
  ManufacturedItemDefinition clone() => throw UnimplementedError();
  ManufacturedItemDefinition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? manufacturedDoseForm,
    CodeableConcept? unitOfPresentation,
    List<Reference>? manufacturer,
    List<CodeableConcept>? ingredient,
    List<ManufacturedItemDefinitionProperty>? property,
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
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ManufacturedItemDefinitionProperty] /// General characteristics of this item.
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
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code expressing the type of characteristic.
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the characteristic.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the characteristic.
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the characteristic.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the characteristic.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the characteristic.
  final Attachment? valueAttachment;
  @override
  ManufacturedItemDefinitionProperty clone() => throw UnimplementedError();
  ManufacturedItemDefinitionProperty copy({
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
    );
  }
}

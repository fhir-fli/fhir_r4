import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirGroup extends DomainResource {
  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final FhirCode type;
  final Element? typeElement;
  final FhirBoolean actual;
  final Element? actualElement;
  final CodeableConcept? code;
  final FhirString? name;
  final Element? nameElement;
  final FhirUnsignedInt? quantity;
  final Element? quantityElement;
  final Reference? managingEntity;
  final List<BackboneElement>? characteristic;
  final List<BackboneElement>? member;

  FhirGroup({
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
    this.active,
this.activeElement,
    required this.type,
this.typeElement,
    required this.actual,
this.actualElement,
    this.code,
    this.name,
this.nameElement,
    this.quantity,
this.quantityElement,
    this.managingEntity,
    this.characteristic,
    this.member,
  }) : super(resourceType: R4ResourceType.FhirGroup);

@override
FhirGroup clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class GroupCharacteristic extends BackboneElement {
  final CodeableConcept code;
  final CodeableConcept valueCodeableConcept;
  final FhirBoolean valueFhirBoolean;
  final Element? valueFhirBooleanElement;
  final Quantity valueQuantity;
  final Range valueRange;
  final Reference valueReference;
  final FhirBoolean exclude;
  final Element? excludeElement;
  final Period? period;

  GroupCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueFhirBoolean,
this.valueFhirBooleanElement,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueReference,
    required this.exclude,
this.excludeElement,
    this.period,
  });

@override
GroupCharacteristic clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class GroupMember extends BackboneElement {
  final Reference entity;
  final Period? period;
  final FhirBoolean? inactive;
  final Element? inactiveElement;

  GroupMember({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
this.inactiveElement,
  });

@override
GroupMember clone() => throw UnimplementedError();
}


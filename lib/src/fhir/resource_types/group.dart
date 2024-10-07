import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class FhirGroup extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final List<GroupCharacteristic>? characteristic;
  final List<GroupMember>? member;
  @override
  FhirGroup clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class GroupCharacteristic extends BackboneElement {
  GroupCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueReference,
    required this.exclude,
    this.excludeElement,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept code;
  final CodeableConcept valueCodeableConcept;
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;
  final Quantity valueQuantity;
  final Range valueRange;
  final Reference valueReference;
  final FhirBoolean exclude;
  final Element? excludeElement;
  final Period? period;
  @override
  GroupCharacteristic clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class GroupMember extends BackboneElement {
  GroupMember({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
    this.inactiveElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference entity;
  final Period? period;
  final FhirBoolean? inactive;
  final Element? inactiveElement;
  @override
  GroupMember clone() => throw UnimplementedError();
}

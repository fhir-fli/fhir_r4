import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FhirGroup extends DomainResource {
  final List<Identifier>? identifier;
  final FhirBoolean? active;
  final Element? activeElement;
  final FhirCode? type;
  final Element? typeElement;
  final FhirBoolean? actual;
  final Element? actualElement;
  final CodeableConcept? code;
  final FhirString? name;
  final Element? nameElement;
  final FhirUnsignedInt? quantity;
  final Element? quantityElement;
  final Reference? managingEntity;
  final List<GroupCharacteristic>? characteristic;
  final List<GroupMember>? member;

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
    this.type,
    this.typeElement,
    this.actual,
    this.actualElement,
    this.code,
    this.name,
    this.nameElement,
    this.quantity,
    this.quantityElement,
    this.managingEntity,
    this.characteristic,
    this.member,
  }): super(resourceType: R4ResourceType.FhirGroup);

@override
FhirGroup clone() => this;

}


@Data()
@JsonCodable()
class GroupCharacteristic {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept code;
  final CodeableConcept? valueCodeableConcept;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final Quantity? valueQuantity;
  final Range? valueRange;
  final Reference? valueReference;
  final FhirBoolean? exclude;
  final Element? excludeElement;
  final Period? period;

  GroupCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueQuantity,
    this.valueRange,
    this.valueReference,
    this.exclude,
    this.excludeElement,
    this.period,
  });

}


@Data()
@JsonCodable()
class GroupMember {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference entity;
  final Period? period;
  final FhirBoolean? inactive;
  final Element? inactiveElement;

  GroupMember({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.entity,
    this.period,
    this.inactive,
    this.inactiveElement,
  });

}




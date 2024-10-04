import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Group {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirBoolean active;
  final PrimitiveElement activeElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final FhirBoolean actual;
  final PrimitiveElement actualElement;
  final CodeableConcept code;
  final String name;
  final PrimitiveElement nameElement;
  final FhirUnsignedInt quantity;
  final PrimitiveElement quantityElement;
  final Reference managingEntity;
  final List<GroupCharacteristic> characteristic;
  final List<GroupMember> member;
  const Group({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.active,
    required this.activeElement,
    required this.type,
    required this.typeElement,
    required this.actual,
    required this.actualElement,
    required this.code,
    required this.name,
    required this.nameElement,
    required this.quantity,
    required this.quantityElement,
    required this.managingEntity,
    required this.characteristic,
    required this.member,
  });
}

@Data()
@JsonCodable()
class GroupCharacteristic {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept code;
  final CodeableConcept valueCodeableConcept;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final Quantity valueQuantity;
  final Range valueRange;
  final Reference valueReference;
  final FhirBoolean exclude;
  final PrimitiveElement excludeElement;
  final Period period;
  const GroupCharacteristic({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.valueCodeableConcept,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueQuantity,
    required this.valueRange,
    required this.valueReference,
    required this.exclude,
    required this.excludeElement,
    required this.period,
  });
}

@Data()
@JsonCodable()
class GroupMember {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference entity;
  final Period period;
  final FhirBoolean inactive;
  final PrimitiveElement inactiveElement;
  const GroupMember({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.entity,
    required this.period,
    required this.inactive,
    required this.inactiveElement,
  });
}



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
}


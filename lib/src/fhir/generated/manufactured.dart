import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class ManufacturedItemDefinition {
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
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept manufacturedDoseForm;
  final CodeableConcept unitOfPresentation;
  final List<Reference> manufacturer;
  final List<CodeableConcept> ingredient;
  final List<ManufacturedItemDefinitionProperty> property;
  const ManufacturedItemDefinition({
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
    required this.status,
    required this.statusElement,
    required this.manufacturedDoseForm,
    required this.unitOfPresentation,
    required this.manufacturer,
    required this.ingredient,
    required this.property,
  });
}

@Data()
@JsonCodable()
class ManufacturedItemDefinitionProperty {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept valueCodeableConcept;
  final Quantity valueQuantity;
  final String valueDate;
  final PrimitiveElement valueDateElement;
  final bool valueBoolean;
  final PrimitiveElement valueBooleanElement;
  final Attachment valueAttachment;
  const ManufacturedItemDefinitionProperty({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.valueCodeableConcept,
    required this.valueQuantity,
    required this.valueDate,
    required this.valueDateElement,
    required this.valueBoolean,
    required this.valueBooleanElement,
    required this.valueAttachment,
  });
}



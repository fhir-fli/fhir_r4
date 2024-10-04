import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Composition {
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
  final Identifier identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept type;
  final List<CodeableConcept> category;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final List<Reference> author;
  final String title;
  final PrimitiveElement titleElement;
  final FhirCode confidentiality;
  final PrimitiveElement confidentialityElement;
  final List<CompositionAttester> attester;
  final Reference custodian;
  final List<CompositionRelatesTo> relatesTo;
  final List<CompositionEvent> event;
  final List<CompositionSection> section;
  const Composition({
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
    required this.type,
    required this.category,
    required this.subject,
    required this.encounter,
    required this.date,
    required this.dateElement,
    required this.author,
    required this.title,
    required this.titleElement,
    required this.confidentiality,
    required this.confidentialityElement,
    required this.attester,
    required this.custodian,
    required this.relatesTo,
    required this.event,
    required this.section,
  });
}

@Data()
@JsonCodable()
class CompositionAttester {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final FhirDateTime time;
  final PrimitiveElement timeElement;
  final Reference party;
  const CompositionAttester({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.mode,
    required this.modeElement,
    required this.time,
    required this.timeElement,
    required this.party,
  });
}

@Data()
@JsonCodable()
class CompositionRelatesTo {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  const CompositionRelatesTo({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.targetIdentifier,
    required this.targetReference,
  });
}

@Data()
@JsonCodable()
class CompositionEvent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> code;
  final Period period;
  final List<Reference> detail;
  const CompositionEvent({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.period,
    required this.detail,
  });
}

@Data()
@JsonCodable()
class CompositionSection {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String title;
  final PrimitiveElement titleElement;
  final CodeableConcept code;
  final List<Reference> author;
  final Reference focus;
  final Narrative text;
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final CodeableConcept orderedBy;
  final List<Reference> entry;
  final CodeableConcept emptyReason;
  final List<CompositionSection> section;
  const CompositionSection({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.title,
    required this.titleElement,
    required this.code,
    required this.author,
    required this.focus,
    required this.text,
    required this.mode,
    required this.modeElement,
    required this.orderedBy,
    required this.entry,
    required this.emptyReason,
    required this.section,
  });
}



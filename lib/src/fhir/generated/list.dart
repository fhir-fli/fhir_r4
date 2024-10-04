import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class FhirList {
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
  final FhirCode mode;
  final PrimitiveElement modeElement;
  final String title;
  final PrimitiveElement titleElement;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final Reference source;
  final CodeableConcept orderedBy;
  final List<Annotation> note;
  final List<ListEntry> entry;
  final CodeableConcept emptyReason;
  const FhirList({
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
    required this.mode,
    required this.modeElement,
    required this.title,
    required this.titleElement,
    required this.code,
    required this.subject,
    required this.encounter,
    required this.date,
    required this.dateElement,
    required this.source,
    required this.orderedBy,
    required this.note,
    required this.entry,
    required this.emptyReason,
  });
}

@Data()
@JsonCodable()
class ListEntry {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept flag;
  final FhirBoolean deleted;
  final PrimitiveElement deletedElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final Reference item;
  const ListEntry({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.flag,
    required this.deleted,
    required this.deletedElement,
    required this.date,
    required this.dateElement,
    required this.item,
  });
}



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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final String title;
  final PrimitiveElement Title;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference source;
  final CodeableConcept orderedBy;
  final List<Annotation> note;
  final List<ListEntry> entry;
  final CodeableConcept emptyReason;
}

@Data()
@JsonCodable()
class ListEntry {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept flag;
  final FhirBoolean deleted;
  final PrimitiveElement Deleted;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final Reference item;
}



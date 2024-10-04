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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept type;
  final List<CodeableConcept> category;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final List<Reference> author;
  final String title;
  final PrimitiveElement Title;
  final FhirCode confidentiality;
  final PrimitiveElement Confidentiality;
  final List<CompositionAttester> attester;
  final Reference custodian;
  final List<CompositionRelatesTo> relatesTo;
  final List<CompositionEvent> event;
  final List<CompositionSection> section;
}

@Data()
@JsonCodable()
class CompositionAttester {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final FhirDateTime time;
  final PrimitiveElement Time;
  final Reference party;
}

@Data()
@JsonCodable()
class CompositionRelatesTo {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final Identifier targetIdentifier;
  final Reference targetReference;
}

@Data()
@JsonCodable()
class CompositionEvent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> code;
  final Period period;
  final List<Reference> detail;
}

@Data()
@JsonCodable()
class CompositionSection {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String title;
  final PrimitiveElement Title;
  final CodeableConcept code;
  final List<Reference> author;
  final Reference focus;
  final Narrative text;
  final FhirCode mode;
  final PrimitiveElement Mode;
  final CodeableConcept orderedBy;
  final List<Reference> entry;
  final CodeableConcept emptyReason;
  final List<CompositionSection> section;
}



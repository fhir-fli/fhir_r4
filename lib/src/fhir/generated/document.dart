import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class DocumentManifest {
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
  final Identifier masterIdentifier;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept type;
  final Reference subject;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final List<Reference> author;
  final List<Reference> recipient;
  final FhirUri source;
  final PrimitiveElement Source;
  final String description;
  final PrimitiveElement Description;
  final List<Reference> content;
  final List<DocumentManifestRelated> related;
}

@Data()
@JsonCodable()
class DocumentManifestRelated {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final Reference ref;
}

@Data()
@JsonCodable()
class DocumentReference {
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
  final Identifier masterIdentifier;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode docStatus;
  final PrimitiveElement DocStatus;
  final CodeableConcept type;
  final List<CodeableConcept> category;
  final Reference subject;
  final FhirInstant date;
  final PrimitiveElement Date;
  final List<Reference> author;
  final Reference authenticator;
  final Reference custodian;
  final List<DocumentReferenceRelatesTo> relatesTo;
  final String description;
  final PrimitiveElement Description;
  final List<CodeableConcept> securityLabel;
  final List<DocumentReferenceContent> content;
  final DocumentReferenceContext context;
}

@Data()
@JsonCodable()
class DocumentReferenceRelatesTo {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final Reference target;
}

@Data()
@JsonCodable()
class DocumentReferenceContent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Attachment attachment;
  final Coding format;
}

@Data()
@JsonCodable()
class DocumentReferenceContext {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Reference> encounter;
  final List<CodeableConcept> event;
  final Period period;
  final CodeableConcept facilityType;
  final CodeableConcept practiceSetting;
  final Reference sourcePatientInfo;
  final List<Reference> related;
}



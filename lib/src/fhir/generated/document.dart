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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier masterIdentifier;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final CodeableConcept type;
  final Reference subject;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final List<Reference> author;
  final List<Reference> recipient;
  final FhirUri source;
  final PrimitiveElement sourceElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<Reference> content;
  final List<DocumentManifestRelated> related;
  const DocumentManifest({
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
    required this.masterIdentifier,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.type,
    required this.subject,
    required this.created,
    required this.createdElement,
    required this.author,
    required this.recipient,
    required this.source,
    required this.sourceElement,
    required this.description,
    required this.descriptionElement,
    required this.content,
    required this.related,
  });
}

@Data()
@JsonCodable()
class DocumentManifestRelated {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final Reference ref;
  const DocumentManifestRelated({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.ref,
  });
}

@Data()
@JsonCodable()
class DocumentReference {
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
  final Identifier masterIdentifier;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirCode docStatus;
  final PrimitiveElement docStatusElement;
  final CodeableConcept type;
  final List<CodeableConcept> category;
  final Reference subject;
  final FhirInstant date;
  final PrimitiveElement dateElement;
  final List<Reference> author;
  final Reference authenticator;
  final Reference custodian;
  final List<DocumentReferenceRelatesTo> relatesTo;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<CodeableConcept> securityLabel;
  final List<DocumentReferenceContent> content;
  final DocumentReferenceContext context;
  const DocumentReference({
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
    required this.masterIdentifier,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.docStatus,
    required this.docStatusElement,
    required this.type,
    required this.category,
    required this.subject,
    required this.date,
    required this.dateElement,
    required this.author,
    required this.authenticator,
    required this.custodian,
    required this.relatesTo,
    required this.description,
    required this.descriptionElement,
    required this.securityLabel,
    required this.content,
    required this.context,
  });
}

@Data()
@JsonCodable()
class DocumentReferenceRelatesTo {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final Reference target;
  const DocumentReferenceRelatesTo({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.target,
  });
}

@Data()
@JsonCodable()
class DocumentReferenceContent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Attachment attachment;
  final Coding format;
  const DocumentReferenceContent({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.attachment,
    required this.format,
  });
}

@Data()
@JsonCodable()
class DocumentReferenceContext {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Reference> encounter;
  final List<CodeableConcept> event;
  final Period period;
  final CodeableConcept facilityType;
  final CodeableConcept practiceSetting;
  final Reference sourcePatientInfo;
  final List<Reference> related;
  const DocumentReferenceContext({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.encounter,
    required this.event,
    required this.period,
    required this.facilityType,
    required this.practiceSetting,
    required this.sourcePatientInfo,
    required this.related,
  });
}



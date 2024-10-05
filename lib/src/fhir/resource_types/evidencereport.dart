import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class EvidenceReport extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final FhirCode? status;
  final Element? statusElement;
  final List<UsageContext>? useContext;
  final List<Identifier>? identifier;
  final List<Identifier>? relatedIdentifier;
  final Reference? citeAsReference;
  final FhirString? citeAsMarkdown;
  final Element? citeAsMarkdownElement;
  final CodeableConcept? type;
  final List<Annotation>? note;
  final List<RelatedArtifact>? relatedArtifact;
  final EvidenceReportSubject subject;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final List<ContactDetail>? author;
  final List<ContactDetail>? editor;
  final List<ContactDetail>? reviewer;
  final List<ContactDetail>? endorser;
  final List<EvidenceReportRelatesTo>? relatesTo;
  final List<EvidenceReportSection>? section;

  EvidenceReport({
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
    this.url,
    this.urlElement,
    this.status,
    this.statusElement,
    this.useContext,
    this.identifier,
    this.relatedIdentifier,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.citeAsMarkdownElement,
    this.type,
    this.note,
    this.relatedArtifact,
    required this.subject,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatesTo,
    this.section,
  }): super(resourceType: R4ResourceType.EvidenceReport);

@override
EvidenceReport clone() => this;

}


@Data()
@JsonCodable()
class EvidenceReportSubject {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<EvidenceReportCharacteristic>? characteristic;
  final List<Annotation>? note;

  EvidenceReportSubject({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.characteristic,
    this.note,
  });

}


@Data()
@JsonCodable()
class EvidenceReportCharacteristic {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept code;
  final Reference? valueReference;
  final CodeableConcept? valueCodeableConcept;
  final bool? valueBoolean;
  final Element? valueBooleanElement;
  final Quantity? valueQuantity;
  final Range? valueRange;
  final FhirBoolean? exclude;
  final Element? excludeElement;
  final Period? period;

  EvidenceReportCharacteristic({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.valueReference,
    this.valueCodeableConcept,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueQuantity,
    this.valueRange,
    this.exclude,
    this.excludeElement,
    this.period,
  });

}


@Data()
@JsonCodable()
class EvidenceReportRelatesTo {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final Identifier? targetIdentifier;
  final Reference? targetReference;

  EvidenceReportRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.targetIdentifier,
    this.targetReference,
  });

}


@Data()
@JsonCodable()
class EvidenceReportSection {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? title;
  final Element? titleElement;
  final CodeableConcept? focus;
  final Reference? focusReference;
  final List<Reference>? author;
  final Narrative? text;
  final FhirCode? mode;
  final Element? modeElement;
  final CodeableConcept? orderedBy;
  final List<CodeableConcept>? entryClassifier;
  final List<Reference>? entryReference;
  final List<Quantity>? entryQuantity;
  final CodeableConcept? emptyReason;
  final List<EvidenceReportSection>? section;

  EvidenceReportSection({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.title,
    this.titleElement,
    this.focus,
    this.focusReference,
    this.author,
    this.text,
    this.mode,
    this.modeElement,
    this.orderedBy,
    this.entryClassifier,
    this.entryReference,
    this.entryQuantity,
    this.emptyReason,
    this.section,
  });

}




import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class EvidenceReport extends DomainResource {
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
    required this.status,
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
  }) : super(resourceType: R4ResourceType.EvidenceReport);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirUri? url;
  final Element? urlElement;
  final FhirCode status;
  final Element? statusElement;
  final List<UsageContext>? useContext;
  final List<Identifier>? identifier;
  final List<Identifier>? relatedIdentifier;
  final Reference? citeAsReference;
  final FhirMarkdown? citeAsMarkdown;
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
  @override
  EvidenceReport clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceReportSubject extends BackboneElement {
  EvidenceReportSubject({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.characteristic,
    this.note,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<EvidenceReportCharacteristic>? characteristic;
  final List<Annotation>? note;
  @override
  EvidenceReportSubject clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceReportCharacteristic extends BackboneElement {
  EvidenceReportCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    required this.valueReference,
    required this.valueCodeableConcept,
    required this.valueBoolean,
    this.valueBooleanElement,
    required this.valueQuantity,
    required this.valueRange,
    this.exclude,
    this.excludeElement,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept code;
  final Reference valueReference;
  final CodeableConcept valueCodeableConcept;
  final FhirBoolean valueBoolean;
  final Element? valueBooleanElement;
  final Quantity valueQuantity;
  final Range valueRange;
  final FhirBoolean? exclude;
  final Element? excludeElement;
  final Period? period;
  @override
  EvidenceReportCharacteristic clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceReportRelatesTo extends BackboneElement {
  EvidenceReportRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.targetIdentifier,
    required this.targetReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode code;
  final Element? codeElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  @override
  EvidenceReportRelatesTo clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceReportSection extends BackboneElement {
  EvidenceReportSection({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  EvidenceReportSection clone() => throw UnimplementedError();
}

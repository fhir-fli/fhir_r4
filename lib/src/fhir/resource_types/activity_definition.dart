import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ActivityDefinition extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirString? subtitle;
  final Element? subtitleElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final CodeableConcept? subjectCodeableConcept;
  final Reference? subjectReference;
  final FhirCanonical? subjectCanonical;
  final Element? subjectCanonicalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirString? usage;
  final Element? usageElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirDate? approvalDate;
  final Element? approvalDateElement;
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;
  final Period? effectivePeriod;
  final List<CodeableConcept>? topic;
  final List<ContactDetail>? author;
  final List<ContactDetail>? editor;
  final List<ContactDetail>? reviewer;
  final List<ContactDetail>? endorser;
  final List<RelatedArtifact>? relatedArtifact;
  final List<FhirCanonical>? library_;
  final List<Element>? libraryElement;
  final FhirCode? kind;
  final Element? kindElement;
  final FhirCanonical? profile;
  final Element? profileElement;
  final CodeableConcept? code;
  final FhirCode? intent;
  final Element? intentElement;
  final FhirCode? priority;
  final Element? priorityElement;
  final FhirBoolean? doNotPerform;
  final Element? doNotPerformElement;
  final Timing? timingTiming;
  final FhirDateTime? timingDateTime;
  final Element? timingDateTimeElement;
  final Age? timingAge;
  final Period? timingPeriod;
  final Range? timingRange;
  final FhirDuration? timingDuration;
  final Reference? location;
  final List<ActivityDefinitionParticipant>? participant;
  final Reference? productReference;
  final CodeableConcept? productCodeableConcept;
  final Quantity? quantity;
  final List<Dosage>? dosage;
  final List<CodeableConcept>? bodySite;
  final List<Reference>? specimenRequirement;
  final List<Reference>? observationRequirement;
  final List<Reference>? observationResultRequirement;
  final FhirCanonical? transform;
  final Element? transformElement;
  final List<ActivityDefinitionDynamicValue>? dynamicValue;

  ActivityDefinition({
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
    this.identifier,
    this.version,
this.versionElement,
    this.name,
this.nameElement,
    this.title,
this.titleElement,
    this.subtitle,
this.subtitleElement,
    required this.status,
this.statusElement,
    this.experimental,
this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.subjectCanonical,
this.subjectCanonicalElement,
    this.date,
this.dateElement,
    this.publisher,
this.publisherElement,
    this.contact,
    this.description,
this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
this.purposeElement,
    this.usage,
this.usageElement,
    this.copyright,
this.copyrightElement,
    this.approvalDate,
this.approvalDateElement,
    this.lastReviewDate,
this.lastReviewDateElement,
    this.effectivePeriod,
    this.topic,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.library_,
this.libraryElement,
    this.kind,
this.kindElement,
    this.profile,
this.profileElement,
    this.code,
    this.intent,
this.intentElement,
    this.priority,
this.priorityElement,
    this.doNotPerform,
this.doNotPerformElement,
    this.timingTiming,
    this.timingDateTime,
this.timingDateTimeElement,
    this.timingAge,
    this.timingPeriod,
    this.timingRange,
    this.timingDuration,
    this.location,
    this.participant,
    this.productReference,
    this.productCodeableConcept,
    this.quantity,
    this.dosage,
    this.bodySite,
    this.specimenRequirement,
    this.observationRequirement,
    this.observationResultRequirement,
    this.transform,
this.transformElement,
    this.dynamicValue,
  }) : super(resourceType: R4ResourceType.ActivityDefinition);

@override
ActivityDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ActivityDefinitionParticipant extends BackboneElement {
  final FhirCode type;
  final Element? typeElement;
  final CodeableConcept? role;

  ActivityDefinitionParticipant({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
this.typeElement,
    this.role,
  });

@override
ActivityDefinitionParticipant clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ActivityDefinitionDynamicValue extends BackboneElement {
  final FhirString path;
  final Element? pathElement;
  final FhirExpression expression;

  ActivityDefinitionDynamicValue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.path,
this.pathElement,
    required this.expression,
  });

@override
ActivityDefinitionDynamicValue clone() => throw UnimplementedError();
}


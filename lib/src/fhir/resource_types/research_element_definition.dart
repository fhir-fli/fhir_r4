import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ResearchElementDefinition extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirString? shortTitle;
  final Element? shortTitleElement;
  final FhirString? subtitle;
  final Element? subtitleElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final CodeableConcept? subjectCodeableConcept;
  final Reference? subjectReference;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<FhirString>? comment;
  final List<Element>? commentElement;
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
  final FhirCode type;
  final Element? typeElement;
  final FhirCode? variableType;
  final Element? variableTypeElement;
  final List<ResearchElementDefinitionCharacteristic> characteristic;

  ResearchElementDefinition({
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
    this.shortTitle,
    this.shortTitleElement,
    this.subtitle,
    this.subtitleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.subjectCodeableConcept,
    this.subjectReference,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.comment,
    this.commentElement,
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
    required this.type,
    this.typeElement,
    this.variableType,
    this.variableTypeElement,
    required this.characteristic,
  }) : super(resourceType: R4ResourceType.ResearchElementDefinition);

  @override
  ResearchElementDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ResearchElementDefinitionCharacteristic extends BackboneElement {
  final CodeableConcept definitionCodeableConcept;
  final FhirCanonical definitionCanonical;
  final Element? definitionCanonicalElement;
  final FhirExpression definitionExpression;
  final DataRequirement definitionDataRequirement;
  final List<UsageContext>? usageContext;
  final FhirBoolean? exclude;
  final Element? excludeElement;
  final CodeableConcept? unitOfMeasure;
  final FhirString? studyEffectiveDescription;
  final Element? studyEffectiveDescriptionElement;
  final FhirDateTime? studyEffectiveDateTime;
  final Element? studyEffectiveDateTimeElement;
  final Period? studyEffectivePeriod;
  final FhirDuration? studyEffectiveDuration;
  final Timing? studyEffectiveTiming;
  final FhirDuration? studyEffectiveTimeFromStart;
  final FhirCode? studyEffectiveGroupMeasure;
  final Element? studyEffectiveGroupMeasureElement;
  final FhirString? participantEffectiveDescription;
  final Element? participantEffectiveDescriptionElement;
  final FhirDateTime? participantEffectiveDateTime;
  final Element? participantEffectiveDateTimeElement;
  final Period? participantEffectivePeriod;
  final FhirDuration? participantEffectiveDuration;
  final Timing? participantEffectiveTiming;
  final FhirDuration? participantEffectiveTimeFromStart;
  final FhirCode? participantEffectiveGroupMeasure;
  final Element? participantEffectiveGroupMeasureElement;

  ResearchElementDefinitionCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.definitionCodeableConcept,
    required this.definitionCanonical,
    this.definitionCanonicalElement,
    required this.definitionExpression,
    required this.definitionDataRequirement,
    this.usageContext,
    this.exclude,
    this.excludeElement,
    this.unitOfMeasure,
    this.studyEffectiveDescription,
    this.studyEffectiveDescriptionElement,
    this.studyEffectiveDateTime,
    this.studyEffectiveDateTimeElement,
    this.studyEffectivePeriod,
    this.studyEffectiveDuration,
    this.studyEffectiveTiming,
    this.studyEffectiveTimeFromStart,
    this.studyEffectiveGroupMeasure,
    this.studyEffectiveGroupMeasureElement,
    this.participantEffectiveDescription,
    this.participantEffectiveDescriptionElement,
    this.participantEffectiveDateTime,
    this.participantEffectiveDateTimeElement,
    this.participantEffectivePeriod,
    this.participantEffectiveDuration,
    this.participantEffectiveTiming,
    this.participantEffectiveTimeFromStart,
    this.participantEffectiveGroupMeasure,
    this.participantEffectiveGroupMeasureElement,
  });

  @override
  ResearchElementDefinitionCharacteristic clone() => throw UnimplementedError();
}

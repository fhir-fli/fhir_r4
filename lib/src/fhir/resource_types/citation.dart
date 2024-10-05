import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Citation extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode? status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
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
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final FhirDate? approvalDate;
  final Element? approvalDateElement;
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;
  final Period? effectivePeriod;
  final List<ContactDetail>? author;
  final List<ContactDetail>? editor;
  final List<ContactDetail>? reviewer;
  final List<ContactDetail>? endorser;
  final List<CitationSummary>? summary;
  final List<CitationClassification>? classification;
  final List<Annotation>? note;
  final List<CodeableConcept>? currentState;
  final List<CitationStatusDate>? statusDate;
  final List<CitationRelatesTo>? relatesTo;
  final CitationCitedArtifact? citedArtifact;

  Citation({
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
    this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
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
    this.copyright,
    this.copyrightElement,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.effectivePeriod,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.summary,
    this.classification,
    this.note,
    this.currentState,
    this.statusDate,
    this.relatesTo,
    this.citedArtifact,
  }): super(resourceType: R4ResourceType.Citation);

@override
Citation clone() => this;

}


@Data()
@JsonCodable()
class CitationSummary {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? style;
  final FhirMarkdown? text;
  final Element? textElement;

  CitationSummary({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.style,
    this.text,
    this.textElement,
  });

}


@Data()
@JsonCodable()
class CitationClassification {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final List<CodeableConcept>? classifier;

  CitationClassification({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.classifier,
  });

}


@Data()
@JsonCodable()
class CitationStatusDate {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept activity;
  final FhirBoolean? actual;
  final Element? actualElement;
  final Period period;

  CitationStatusDate({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.activity,
    this.actual,
    this.actualElement,
    required this.period,
  });

}


@Data()
@JsonCodable()
class CitationRelatesTo {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept relationshipType;
  final List<CodeableConcept>? targetClassifier;
  final FhirString? targetUri;
  final Element? targetUriElement;
  final Identifier? targetIdentifier;
  final Reference? targetReference;
  final Attachment? targetAttachment;

  CitationRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    this.targetUri,
    this.targetUriElement,
    this.targetIdentifier,
    this.targetReference,
    this.targetAttachment,
  });

}


@Data()
@JsonCodable()
class CitationCitedArtifact {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<Identifier>? identifier;
  final List<Identifier>? relatedIdentifier;
  final FhirDateTime? dateAccessed;
  final Element? dateAccessedElement;
  final CitationVersion? version;
  final List<CodeableConcept>? currentState;
  final List<CitationStatusDate1>? statusDate;
  final List<CitationTitle>? title;
  final List<CitationAbstract>? abstract_;
  final CitationPart? part_;
  final List<CitationRelatesTo1>? relatesTo;
  final List<CitationPublicationForm>? publicationForm;
  final List<CitationWebLocation>? webLocation;
  final List<CitationClassification1>? classification;
  final CitationContributorship? contributorship;
  final List<Annotation>? note;

  CitationCitedArtifact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.relatedIdentifier,
    this.dateAccessed,
    this.dateAccessedElement,
    this.version,
    this.currentState,
    this.statusDate,
    this.title,
    this.abstract_,
    this.part_,
    this.relatesTo,
    this.publicationForm,
    this.webLocation,
    this.classification,
    this.contributorship,
    this.note,
  });

}


@Data()
@JsonCodable()
class CitationVersion {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? value;
  final Element? valueElement;
  final Reference? baseCitation;

  CitationVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.value,
    this.valueElement,
    this.baseCitation,
  });

}


@Data()
@JsonCodable()
class CitationStatusDate1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept activity;
  final FhirBoolean? actual;
  final Element? actualElement;
  final Period period;

  CitationStatusDate1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.activity,
    this.actual,
    this.actualElement,
    required this.period,
  });

}


@Data()
@JsonCodable()
class CitationTitle {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? type;
  final CodeableConcept? language;
  final FhirMarkdown? text;
  final Element? textElement;

  CitationTitle({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.language,
    this.text,
    this.textElement,
  });

}


@Data()
@JsonCodable()
class CitationAbstract {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final CodeableConcept? language;
  final FhirMarkdown? text;
  final Element? textElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  CitationAbstract({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.language,
    this.text,
    this.textElement,
    this.copyright,
    this.copyrightElement,
  });

}


@Data()
@JsonCodable()
class CitationPart {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final FhirString? value;
  final Element? valueElement;
  final Reference? baseCitation;

  CitationPart({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.value,
    this.valueElement,
    this.baseCitation,
  });

}


@Data()
@JsonCodable()
class CitationRelatesTo1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept relationshipType;
  final List<CodeableConcept>? targetClassifier;
  final FhirString? targetUri;
  final Element? targetUriElement;
  final Identifier? targetIdentifier;
  final Reference? targetReference;
  final Attachment? targetAttachment;

  CitationRelatesTo1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    this.targetUri,
    this.targetUriElement,
    this.targetIdentifier,
    this.targetReference,
    this.targetAttachment,
  });

}


@Data()
@JsonCodable()
class CitationPublicationForm {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CitationPublishedIn? publishedIn;
  final CitationPeriodicRelease? periodicRelease;
  final FhirDateTime? articleDate;
  final Element? articleDateElement;
  final FhirDateTime? lastRevisionDate;
  final Element? lastRevisionDateElement;
  final List<CodeableConcept>? language;
  final FhirString? accessionNumber;
  final Element? accessionNumberElement;
  final FhirString? pageString;
  final Element? pageStringElement;
  final FhirString? firstPage;
  final Element? firstPageElement;
  final FhirString? lastPage;
  final Element? lastPageElement;
  final FhirString? pageCount;
  final Element? pageCountElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  CitationPublicationForm({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.publishedIn,
    this.periodicRelease,
    this.articleDate,
    this.articleDateElement,
    this.lastRevisionDate,
    this.lastRevisionDateElement,
    this.language,
    this.accessionNumber,
    this.accessionNumberElement,
    this.pageString,
    this.pageStringElement,
    this.firstPage,
    this.firstPageElement,
    this.lastPage,
    this.lastPageElement,
    this.pageCount,
    this.pageCountElement,
    this.copyright,
    this.copyrightElement,
  });

}


@Data()
@JsonCodable()
class CitationPublishedIn {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final List<Identifier>? identifier;
  final FhirString? title;
  final Element? titleElement;
  final Reference? publisher;
  final FhirString? publisherLocation;
  final Element? publisherLocationElement;

  CitationPublishedIn({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.identifier,
    this.title,
    this.titleElement,
    this.publisher,
    this.publisherLocation,
    this.publisherLocationElement,
  });

}


@Data()
@JsonCodable()
class CitationPeriodicRelease {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? citedMedium;
  final FhirString? volume;
  final Element? volumeElement;
  final FhirString? issue;
  final Element? issueElement;
  final CitationDateOfPublication? dateOfPublication;

  CitationPeriodicRelease({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.citedMedium,
    this.volume,
    this.volumeElement,
    this.issue,
    this.issueElement,
    this.dateOfPublication,
  });

}


@Data()
@JsonCodable()
class CitationDateOfPublication {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirDate? date;
  final Element? dateElement;
  final FhirString? year;
  final Element? yearElement;
  final FhirString? month;
  final Element? monthElement;
  final FhirString? day;
  final Element? dayElement;
  final FhirString? season;
  final Element? seasonElement;
  final FhirString? text;
  final Element? textElement;

  CitationDateOfPublication({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.date,
    this.dateElement,
    this.year,
    this.yearElement,
    this.month,
    this.monthElement,
    this.day,
    this.dayElement,
    this.season,
    this.seasonElement,
    this.text,
    this.textElement,
  });

}


@Data()
@JsonCodable()
class CitationWebLocation {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final FhirUri? url;
  final Element? urlElement;

  CitationWebLocation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.url,
    this.urlElement,
  });

}


@Data()
@JsonCodable()
class CitationClassification1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final List<CodeableConcept>? classifier;
  final CitationWhoClassified? whoClassified;

  CitationClassification1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.classifier,
    this.whoClassified,
  });

}


@Data()
@JsonCodable()
class CitationWhoClassified {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final Reference? person;
  final Reference? organization;
  final Reference? publisher;
  final FhirString? classifierCopyright;
  final Element? classifierCopyrightElement;
  final FhirBoolean? freeToShare;
  final Element? freeToShareElement;

  CitationWhoClassified({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.person,
    this.organization,
    this.publisher,
    this.classifierCopyright,
    this.classifierCopyrightElement,
    this.freeToShare,
    this.freeToShareElement,
  });

}


@Data()
@JsonCodable()
class CitationContributorship {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirBoolean? complete;
  final Element? completeElement;
  final List<CitationEntry>? entry;
  final List<CitationSummary1>? summary;

  CitationContributorship({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.complete,
    this.completeElement,
    this.entry,
    this.summary,
  });

}


@Data()
@JsonCodable()
class CitationEntry {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final HumanName? name;
  final FhirString? initials;
  final Element? initialsElement;
  final FhirString? collectiveName;
  final Element? collectiveNameElement;
  final List<Identifier>? identifier;
  final List<CitationAffiliationInfo>? affiliationInfo;
  final List<Address>? address;
  final List<ContactPoint>? telecom;
  final List<CodeableConcept>? contributionType;
  final CodeableConcept? role;
  final List<CitationContributionInstance>? contributionInstance;
  final FhirBoolean? correspondingContact;
  final Element? correspondingContactElement;
  final FhirPositiveInt? listOrder;
  final Element? listOrderElement;

  CitationEntry({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.initials,
    this.initialsElement,
    this.collectiveName,
    this.collectiveNameElement,
    this.identifier,
    this.affiliationInfo,
    this.address,
    this.telecom,
    this.contributionType,
    this.role,
    this.contributionInstance,
    this.correspondingContact,
    this.correspondingContactElement,
    this.listOrder,
    this.listOrderElement,
  });

}


@Data()
@JsonCodable()
class CitationAffiliationInfo {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? affiliation;
  final Element? affiliationElement;
  final FhirString? role;
  final Element? roleElement;
  final List<Identifier>? identifier;

  CitationAffiliationInfo({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.affiliation,
    this.affiliationElement,
    this.role,
    this.roleElement,
    this.identifier,
  });

}


@Data()
@JsonCodable()
class CitationContributionInstance {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept type;
  final FhirDateTime? time;
  final Element? timeElement;

  CitationContributionInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.time,
    this.timeElement,
  });

}


@Data()
@JsonCodable()
class CitationSummary1 {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? type;
  final CodeableConcept? style;
  final CodeableConcept? source;
  final FhirMarkdown? value;
  final Element? valueElement;

  CitationSummary1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.style,
    this.source,
    this.value,
    this.valueElement,
  });

}




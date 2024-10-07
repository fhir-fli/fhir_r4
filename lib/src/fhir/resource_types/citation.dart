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
  final FhirCode status;
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
  final List<BackboneElement>? summary;
  final List<BackboneElement>? classification;
  final List<Annotation>? note;
  final List<CodeableConcept>? currentState;
  final List<BackboneElement>? statusDate;
  final List<BackboneElement>? relatesTo;
  final BackboneElement? citedArtifact;
  final BackboneElement? version;
  final List<BackboneElement>? statusDate;
  final List<BackboneElement>? title;
  final List<BackboneElement>? abstract_;
  final BackboneElement? part_;
  final List<BackboneElement>? relatesTo;
  final List<BackboneElement>? publicationForm;
  final BackboneElement? publishedIn;
  final BackboneElement? periodicRelease;
  final BackboneElement? dateOfPublication;
  final List<BackboneElement>? webLocation;
  final List<BackboneElement>? classification;
  final BackboneElement? whoClassified;
  final BackboneElement? contributorship;
  final List<BackboneElement>? entry;
  final List<BackboneElement>? affiliationInfo;
  final List<BackboneElement>? contributionInstance;
  final List<BackboneElement>? summary;

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
    required this.status,
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
    this.version,
    this.statusDate,
    this.title,
    this.abstract_,
    this.part_,
    this.relatesTo,
    this.publicationForm,
    this.publishedIn,
    this.periodicRelease,
    this.dateOfPublication,
    this.webLocation,
    this.classification,
    this.whoClassified,
    this.contributorship,
    this.entry,
    this.affiliationInfo,
    this.contributionInstance,
    this.summary,
  }) : super(resourceType: R4ResourceType.Citation);

@override
Citation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationSummary extends BackboneElement {
  final CodeableConcept? style;
  final FhirMarkdown text;
  final Element? textElement;

  CitationSummary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.style,
    required this.text,
this.textElement,
  });

@override
CitationSummary clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationClassification extends BackboneElement {
  final CodeableConcept? type;
  final List<CodeableConcept>? classifier;

  CitationClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
  });

@override
CitationClassification clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationStatusDate extends BackboneElement {
  final CodeableConcept activity;
  final FhirBoolean? actual;
  final Element? actualElement;
  final Period period;

  CitationStatusDate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
this.actualElement,
    required this.period,
  });

@override
CitationStatusDate clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationRelatesTo extends BackboneElement {
  final CodeableConcept relationshipType;
  final List<CodeableConcept>? targetClassifier;
  final FhirUri targetFhirUri;
  final Element? targetFhirUriElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  final Attachment targetAttachment;

  CitationRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    required this.targetFhirUri,
this.targetFhirUriElement,
    required this.targetIdentifier,
    required this.targetReference,
    required this.targetAttachment,
  });

@override
CitationRelatesTo clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationCitedArtifact extends BackboneElement {
  final List<Identifier>? identifier;
  final List<Identifier>? relatedIdentifier;
  final FhirDateTime? dateAccessed;
  final Element? dateAccessedElement;
  final List<CodeableConcept>? currentState;
  final List<Annotation>? note;

  CitationCitedArtifact({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.relatedIdentifier,
    this.dateAccessed,
this.dateAccessedElement,
    this.currentState,
    this.note,
  });

@override
CitationCitedArtifact clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationVersion extends BackboneElement {
  final FhirString value;
  final Element? valueElement;
  final Reference? baseCitation;

  CitationVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.value,
this.valueElement,
    this.baseCitation,
  });

@override
CitationVersion clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationStatusDate extends BackboneElement {
  final CodeableConcept activity;
  final FhirBoolean? actual;
  final Element? actualElement;
  final Period period;

  CitationStatusDate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
this.actualElement,
    required this.period,
  });

@override
CitationStatusDate clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationTitle extends BackboneElement {
  final List<CodeableConcept>? type;
  final CodeableConcept? language;
  final FhirMarkdown text;
  final Element? textElement;

  CitationTitle({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.language,
    required this.text,
this.textElement,
  });

@override
CitationTitle clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationAbstract extends BackboneElement {
  final CodeableConcept? type;
  final CodeableConcept? language;
  final FhirMarkdown text;
  final Element? textElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;

  CitationAbstract({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.language,
    required this.text,
this.textElement,
    this.copyright,
this.copyrightElement,
  });

@override
CitationAbstract clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationPart extends BackboneElement {
  final CodeableConcept? type;
  final FhirString? value;
  final Element? valueElement;
  final Reference? baseCitation;

  CitationPart({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.value,
this.valueElement,
    this.baseCitation,
  });

@override
CitationPart clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationRelatesTo extends BackboneElement {
  final CodeableConcept relationshipType;
  final List<CodeableConcept>? targetClassifier;
  final FhirUri targetFhirUri;
  final Element? targetFhirUriElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  final Attachment targetAttachment;

  CitationRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    required this.targetFhirUri,
this.targetFhirUriElement,
    required this.targetIdentifier,
    required this.targetReference,
    required this.targetAttachment,
  });

@override
CitationRelatesTo clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationPublicationForm extends BackboneElement {
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
    super.id,
    super.extension_,
    super.modifierExtension,
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

@override
CitationPublicationForm clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationPublishedIn extends BackboneElement {
  final CodeableConcept? type;
  final List<Identifier>? identifier;
  final FhirString? title;
  final Element? titleElement;
  final Reference? publisher;
  final FhirString? publisherLocation;
  final Element? publisherLocationElement;

  CitationPublishedIn({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.identifier,
    this.title,
this.titleElement,
    this.publisher,
    this.publisherLocation,
this.publisherLocationElement,
  });

@override
CitationPublishedIn clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationPeriodicRelease extends BackboneElement {
  final CodeableConcept? citedMedium;
  final FhirString? volume;
  final Element? volumeElement;
  final FhirString? issue;
  final Element? issueElement;

  CitationPeriodicRelease({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.citedMedium,
    this.volume,
this.volumeElement,
    this.issue,
this.issueElement,
  });

@override
CitationPeriodicRelease clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationDateOfPublication extends BackboneElement {
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
    super.id,
    super.extension_,
    super.modifierExtension,
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

@override
CitationDateOfPublication clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationWebLocation extends BackboneElement {
  final CodeableConcept? type;
  final FhirUri? url;
  final Element? urlElement;

  CitationWebLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.url,
this.urlElement,
  });

@override
CitationWebLocation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationClassification extends BackboneElement {
  final CodeableConcept? type;
  final List<CodeableConcept>? classifier;

  CitationClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
  });

@override
CitationClassification clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationWhoClassified extends BackboneElement {
  final Reference? person;
  final Reference? organization;
  final Reference? publisher;
  final FhirString? classifierCopyright;
  final Element? classifierCopyrightElement;
  final FhirBoolean? freeToShare;
  final Element? freeToShareElement;

  CitationWhoClassified({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.person,
    this.organization,
    this.publisher,
    this.classifierCopyright,
this.classifierCopyrightElement,
    this.freeToShare,
this.freeToShareElement,
  });

@override
CitationWhoClassified clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationContributorship extends BackboneElement {
  final FhirBoolean? complete;
  final Element? completeElement;

  CitationContributorship({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.complete,
this.completeElement,
  });

@override
CitationContributorship clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationEntry extends BackboneElement {
  final HumanName? name;
  final FhirString? initials;
  final Element? initialsElement;
  final FhirString? collectiveName;
  final Element? collectiveNameElement;
  final List<Identifier>? identifier;
  final List<Address>? address;
  final List<ContactPoint>? telecom;
  final List<CodeableConcept>? contributionType;
  final CodeableConcept? role;
  final FhirBoolean? correspondingContact;
  final Element? correspondingContactElement;
  final FhirPositiveInt? listOrder;
  final Element? listOrderElement;

  CitationEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.initials,
this.initialsElement,
    this.collectiveName,
this.collectiveNameElement,
    this.identifier,
    this.address,
    this.telecom,
    this.contributionType,
    this.role,
    this.correspondingContact,
this.correspondingContactElement,
    this.listOrder,
this.listOrderElement,
  });

@override
CitationEntry clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationAffiliationInfo extends BackboneElement {
  final FhirString? affiliation;
  final Element? affiliationElement;
  final FhirString? role;
  final Element? roleElement;
  final List<Identifier>? identifier;

  CitationAffiliationInfo({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.affiliation,
this.affiliationElement,
    this.role,
this.roleElement,
    this.identifier,
  });

@override
CitationAffiliationInfo clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationContributionInstance extends BackboneElement {
  final CodeableConcept type;
  final FhirDateTime? time;
  final Element? timeElement;

  CitationContributionInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.time,
this.timeElement,
  });

@override
CitationContributionInstance clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CitationSummary extends BackboneElement {
  final CodeableConcept? type;
  final CodeableConcept? style;
  final CodeableConcept? source;
  final FhirMarkdown value;
  final Element? valueElement;

  CitationSummary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.style,
    this.source,
    required this.value,
this.valueElement,
  });

@override
CitationSummary clone() => throw UnimplementedError();
}


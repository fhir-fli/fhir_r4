import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Citation extends DomainResource {
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
  }) : super(resourceType: R4ResourceType.Citation);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final List<CitationSummary>? summary;
  final List<CitationClassification>? classification;
  final List<Annotation>? note;
  final List<CodeableConcept>? currentState;
  final List<CitationStatusDate>? statusDate;
  final List<CitationRelatesTo>? relatesTo;
  final CitationCitedArtifact? citedArtifact;
  @override
  Citation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationSummary extends BackboneElement {
  CitationSummary({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.style,
    required this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? style;
  final FhirMarkdown text;
  final Element? textElement;
  @override
  CitationSummary clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationClassification extends BackboneElement {
  CitationClassification({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final List<CodeableConcept>? classifier;
  @override
  CitationClassification clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationStatusDate extends BackboneElement {
  CitationStatusDate({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
    this.actualElement,
    required this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept activity;
  final FhirBoolean? actual;
  final Element? actualElement;
  final Period period;
  @override
  CitationStatusDate clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationRelatesTo extends BackboneElement {
  CitationRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    required this.targetUri,
    this.targetUriElement,
    required this.targetIdentifier,
    required this.targetReference,
    required this.targetAttachment,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept relationshipType;
  final List<CodeableConcept>? targetClassifier;
  final FhirUri targetUri;
  final Element? targetUriElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  final Attachment targetAttachment;
  @override
  CitationRelatesTo clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationCitedArtifact extends BackboneElement {
  CitationCitedArtifact({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final List<Identifier>? relatedIdentifier;
  final FhirDateTime? dateAccessed;
  final Element? dateAccessedElement;
  final CitationVersion? version;
  final List<CodeableConcept>? currentState;
  final List<CitationStatusDate>? statusDate;
  final List<CitationTitle>? title;
  final List<CitationAbstract>? abstract_;
  final CitationPart? part_;
  final List<CitationRelatesTo>? relatesTo;
  final List<CitationPublicationForm>? publicationForm;
  final List<CitationWebLocation>? webLocation;
  final List<CitationClassification>? classification;
  final CitationContributorship? contributorship;
  final List<Annotation>? note;
  @override
  CitationCitedArtifact clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationVersion extends BackboneElement {
  CitationVersion({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.value,
    this.valueElement,
    this.baseCitation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString value;
  final Element? valueElement;
  final Reference? baseCitation;
  @override
  CitationVersion clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationStatusDate1 extends BackboneElement {
  CitationStatusDate1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.activity,
    this.actual,
    this.actualElement,
    required this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept activity;
  final FhirBoolean? actual;
  final Element? actualElement;
  final Period period;
  @override
  CitationStatusDate1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationTitle extends BackboneElement {
  CitationTitle({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.language,
    required this.text,
    this.textElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<CodeableConcept>? type;
  final CodeableConcept? language;
  final FhirMarkdown text;
  final Element? textElement;
  @override
  CitationTitle clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationAbstract extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final CodeableConcept? language;
  final FhirMarkdown text;
  final Element? textElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  @override
  CitationAbstract clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationPart extends BackboneElement {
  CitationPart({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.value,
    this.valueElement,
    this.baseCitation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final FhirString? value;
  final Element? valueElement;
  final Reference? baseCitation;
  @override
  CitationPart clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationRelatesTo1 extends BackboneElement {
  CitationRelatesTo1({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    required this.targetUri,
    this.targetUriElement,
    required this.targetIdentifier,
    required this.targetReference,
    required this.targetAttachment,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept relationshipType;
  final List<CodeableConcept>? targetClassifier;
  final FhirUri targetUri;
  final Element? targetUriElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  final Attachment targetAttachment;
  @override
  CitationRelatesTo1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationPublicationForm extends BackboneElement {
  CitationPublicationForm({
    super.id,
    super.extension_,
    super.modifierExtension,
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  CitationPublicationForm clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationPublishedIn extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final List<Identifier>? identifier;
  final FhirString? title;
  final Element? titleElement;
  final Reference? publisher;
  final FhirString? publisherLocation;
  final Element? publisherLocationElement;
  @override
  CitationPublishedIn clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationPeriodicRelease extends BackboneElement {
  CitationPeriodicRelease({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.citedMedium,
    this.volume,
    this.volumeElement,
    this.issue,
    this.issueElement,
    this.dateOfPublication,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? citedMedium;
  final FhirString? volume;
  final Element? volumeElement;
  final FhirString? issue;
  final Element? issueElement;
  final CitationDateOfPublication? dateOfPublication;
  @override
  CitationPeriodicRelease clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationDateOfPublication extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  CitationDateOfPublication clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationWebLocation extends BackboneElement {
  CitationWebLocation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.url,
    this.urlElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final FhirUri? url;
  final Element? urlElement;
  @override
  CitationWebLocation clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationClassification1 extends BackboneElement {
  CitationClassification1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.classifier,
    this.whoClassified,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final List<CodeableConcept>? classifier;
  final CitationWhoClassified? whoClassified;
  @override
  CitationClassification1 clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationWhoClassified extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference? person;
  final Reference? organization;
  final Reference? publisher;
  final FhirString? classifierCopyright;
  final Element? classifierCopyrightElement;
  final FhirBoolean? freeToShare;
  final Element? freeToShareElement;
  @override
  CitationWhoClassified clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationContributorship extends BackboneElement {
  CitationContributorship({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.complete,
    this.completeElement,
    this.entry,
    this.summary,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirBoolean? complete;
  final Element? completeElement;
  final List<CitationEntry>? entry;
  final List<CitationSummary>? summary;
  @override
  CitationContributorship clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationEntry extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  CitationEntry clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationAffiliationInfo extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? affiliation;
  final Element? affiliationElement;
  final FhirString? role;
  final Element? roleElement;
  final List<Identifier>? identifier;
  @override
  CitationAffiliationInfo clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationContributionInstance extends BackboneElement {
  CitationContributionInstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.time,
    this.timeElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept type;
  final FhirDateTime? time;
  final Element? timeElement;
  @override
  CitationContributionInstance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CitationSummary1 extends BackboneElement {
  CitationSummary1({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.style,
    this.source,
    required this.value,
    this.valueElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? type;
  final CodeableConcept? style;
  final CodeableConcept? source;
  final FhirMarkdown value;
  final Element? valueElement;
  @override
  CitationSummary1 clone() => throw UnimplementedError();
}

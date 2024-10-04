import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Citation {
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
  final FhirUri url;
  final PrimitiveElement urlElement;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final String title;
  final PrimitiveElement titleElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  final FhirDate approvalDate;
  final PrimitiveElement approvalDateElement;
  final FhirDate lastReviewDate;
  final PrimitiveElement lastReviewDateElement;
  final Period effectivePeriod;
  final List<ContactDetail> author;
  final List<ContactDetail> editor;
  final List<ContactDetail> reviewer;
  final List<ContactDetail> endorser;
  final List<CitationSummary> summary;
  final List<CitationClassification> classification;
  final List<Annotation> note;
  final List<CodeableConcept> currentState;
  final List<CitationStatusDate> statusDate;
  final List<CitationRelatesTo> relatesTo;
  final CitationCitedArtifact citedArtifact;
  const Citation({
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
    required this.url,
    required this.urlElement,
    required this.identifier,
    required this.version,
    required this.versionElement,
    required this.name,
    required this.nameElement,
    required this.title,
    required this.titleElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.jurisdiction,
    required this.purpose,
    required this.purposeElement,
    required this.copyright,
    required this.copyrightElement,
    required this.approvalDate,
    required this.approvalDateElement,
    required this.lastReviewDate,
    required this.lastReviewDateElement,
    required this.effectivePeriod,
    required this.author,
    required this.editor,
    required this.reviewer,
    required this.endorser,
    required this.summary,
    required this.classification,
    required this.note,
    required this.currentState,
    required this.statusDate,
    required this.relatesTo,
    required this.citedArtifact,
  });
}

@Data()
@JsonCodable()
class CitationSummary {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept style;
  final FhirMarkdown text;
  final PrimitiveElement textElement;
  const CitationSummary({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.style,
    required this.text,
    required this.textElement,
  });
}

@Data()
@JsonCodable()
class CitationClassification {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classifier;
  const CitationClassification({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.classifier,
  });
}

@Data()
@JsonCodable()
class CitationStatusDate {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept activity;
  final FhirBoolean actual;
  final PrimitiveElement actualElement;
  final Period period;
  const CitationStatusDate({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.activity,
    required this.actual,
    required this.actualElement,
    required this.period,
  });
}

@Data()
@JsonCodable()
class CitationRelatesTo {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept relationshipType;
  final List<CodeableConcept> targetClassifier;
  final String targetUri;
  final PrimitiveElement targetUriElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  final Attachment targetAttachment;
  const CitationRelatesTo({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.relationshipType,
    required this.targetClassifier,
    required this.targetUri,
    required this.targetUriElement,
    required this.targetIdentifier,
    required this.targetReference,
    required this.targetAttachment,
  });
}

@Data()
@JsonCodable()
class CitationCitedArtifact {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<Identifier> relatedIdentifier;
  final FhirDateTime dateAccessed;
  final PrimitiveElement dateAccessedElement;
  final CitationVersion version;
  final List<CodeableConcept> currentState;
  final List<CitationStatusDate1> statusDate;
  final List<CitationTitle> title;
  final List<CitationAbstract> abstract_;
  final CitationPart part_;
  final List<CitationRelatesTo1> relatesTo;
  final List<CitationPublicationForm> publicationForm;
  final List<CitationWebLocation> webLocation;
  final List<CitationClassification1> classification;
  final CitationContributorship contributorship;
  final List<Annotation> note;
  const CitationCitedArtifact({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.relatedIdentifier,
    required this.dateAccessed,
    required this.dateAccessedElement,
    required this.version,
    required this.currentState,
    required this.statusDate,
    required this.title,
    required this.abstract_,
    required this.part_,
    required this.relatesTo,
    required this.publicationForm,
    required this.webLocation,
    required this.classification,
    required this.contributorship,
    required this.note,
  });
}

@Data()
@JsonCodable()
class CitationVersion {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String value;
  final PrimitiveElement valueElement;
  final Reference baseCitation;
  const CitationVersion({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.value,
    required this.valueElement,
    required this.baseCitation,
  });
}

@Data()
@JsonCodable()
class CitationStatusDate1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept activity;
  final FhirBoolean actual;
  final PrimitiveElement actualElement;
  final Period period;
  const CitationStatusDate1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.activity,
    required this.actual,
    required this.actualElement,
    required this.period,
  });
}

@Data()
@JsonCodable()
class CitationTitle {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> type;
  final CodeableConcept language;
  final FhirMarkdown text;
  final PrimitiveElement textElement;
  const CitationTitle({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.language,
    required this.text,
    required this.textElement,
  });
}

@Data()
@JsonCodable()
class CitationAbstract {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept language;
  final FhirMarkdown text;
  final PrimitiveElement textElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  const CitationAbstract({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.language,
    required this.text,
    required this.textElement,
    required this.copyright,
    required this.copyrightElement,
  });
}

@Data()
@JsonCodable()
class CitationPart {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String value;
  final PrimitiveElement valueElement;
  final Reference baseCitation;
  const CitationPart({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.value,
    required this.valueElement,
    required this.baseCitation,
  });
}

@Data()
@JsonCodable()
class CitationRelatesTo1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept relationshipType;
  final List<CodeableConcept> targetClassifier;
  final String targetUri;
  final PrimitiveElement targetUriElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  final Attachment targetAttachment;
  const CitationRelatesTo1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.relationshipType,
    required this.targetClassifier,
    required this.targetUri,
    required this.targetUriElement,
    required this.targetIdentifier,
    required this.targetReference,
    required this.targetAttachment,
  });
}

@Data()
@JsonCodable()
class CitationPublicationForm {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CitationPublishedIn publishedIn;
  final CitationPeriodicRelease periodicRelease;
  final FhirDateTime articleDate;
  final PrimitiveElement articleDateElement;
  final FhirDateTime lastRevisionDate;
  final PrimitiveElement lastRevisionDateElement;
  final List<CodeableConcept> language;
  final String accessionNumber;
  final PrimitiveElement accessionNumberElement;
  final String pageString;
  final PrimitiveElement pageStringElement;
  final String firstPage;
  final PrimitiveElement firstPageElement;
  final String lastPage;
  final PrimitiveElement lastPageElement;
  final String pageCount;
  final PrimitiveElement pageCountElement;
  final FhirMarkdown copyright;
  final PrimitiveElement copyrightElement;
  const CitationPublicationForm({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.publishedIn,
    required this.periodicRelease,
    required this.articleDate,
    required this.articleDateElement,
    required this.lastRevisionDate,
    required this.lastRevisionDateElement,
    required this.language,
    required this.accessionNumber,
    required this.accessionNumberElement,
    required this.pageString,
    required this.pageStringElement,
    required this.firstPage,
    required this.firstPageElement,
    required this.lastPage,
    required this.lastPageElement,
    required this.pageCount,
    required this.pageCountElement,
    required this.copyright,
    required this.copyrightElement,
  });
}

@Data()
@JsonCodable()
class CitationPublishedIn {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Identifier> identifier;
  final String title;
  final PrimitiveElement titleElement;
  final Reference publisher;
  final String publisherLocation;
  final PrimitiveElement publisherLocationElement;
  const CitationPublishedIn({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.identifier,
    required this.title,
    required this.titleElement,
    required this.publisher,
    required this.publisherLocation,
    required this.publisherLocationElement,
  });
}

@Data()
@JsonCodable()
class CitationPeriodicRelease {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept citedMedium;
  final String volume;
  final PrimitiveElement volumeElement;
  final String issue;
  final PrimitiveElement issueElement;
  final CitationDateOfPublication dateOfPublication;
  const CitationPeriodicRelease({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.citedMedium,
    required this.volume,
    required this.volumeElement,
    required this.issue,
    required this.issueElement,
    required this.dateOfPublication,
  });
}

@Data()
@JsonCodable()
class CitationDateOfPublication {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirDate date;
  final PrimitiveElement dateElement;
  final String year;
  final PrimitiveElement yearElement;
  final String month;
  final PrimitiveElement monthElement;
  final String day;
  final PrimitiveElement dayElement;
  final String season;
  final PrimitiveElement seasonElement;
  final String text;
  final PrimitiveElement textElement;
  const CitationDateOfPublication({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.date,
    required this.dateElement,
    required this.year,
    required this.yearElement,
    required this.month,
    required this.monthElement,
    required this.day,
    required this.dayElement,
    required this.season,
    required this.seasonElement,
    required this.text,
    required this.textElement,
  });
}

@Data()
@JsonCodable()
class CitationWebLocation {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final FhirUri url;
  final PrimitiveElement urlElement;
  const CitationWebLocation({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.url,
    required this.urlElement,
  });
}

@Data()
@JsonCodable()
class CitationClassification1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classifier;
  final CitationWhoClassified whoClassified;
  const CitationClassification1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.classifier,
    required this.whoClassified,
  });
}

@Data()
@JsonCodable()
class CitationWhoClassified {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Reference person;
  final Reference organization;
  final Reference publisher;
  final String classifierCopyright;
  final PrimitiveElement classifierCopyrightElement;
  final FhirBoolean freeToShare;
  final PrimitiveElement freeToShareElement;
  const CitationWhoClassified({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.person,
    required this.organization,
    required this.publisher,
    required this.classifierCopyright,
    required this.classifierCopyrightElement,
    required this.freeToShare,
    required this.freeToShareElement,
  });
}

@Data()
@JsonCodable()
class CitationContributorship {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean complete;
  final PrimitiveElement completeElement;
  final List<CitationEntry> entry;
  final List<CitationSummary1> summary;
  const CitationContributorship({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.complete,
    required this.completeElement,
    required this.entry,
    required this.summary,
  });
}

@Data()
@JsonCodable()
class CitationEntry {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final HumanName name;
  final String initials;
  final PrimitiveElement initialsElement;
  final String collectiveName;
  final PrimitiveElement collectiveNameElement;
  final List<Identifier> identifier;
  final List<CitationAffiliationInfo> affiliationInfo;
  final List<Address> address;
  final List<ContactPoint> telecom;
  final List<CodeableConcept> contributionType;
  final CodeableConcept role;
  final List<CitationContributionInstance> contributionInstance;
  final FhirBoolean correspondingContact;
  final PrimitiveElement correspondingContactElement;
  final FhirPositiveInt listOrder;
  final PrimitiveElement listOrderElement;
  const CitationEntry({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.name,
    required this.initials,
    required this.initialsElement,
    required this.collectiveName,
    required this.collectiveNameElement,
    required this.identifier,
    required this.affiliationInfo,
    required this.address,
    required this.telecom,
    required this.contributionType,
    required this.role,
    required this.contributionInstance,
    required this.correspondingContact,
    required this.correspondingContactElement,
    required this.listOrder,
    required this.listOrderElement,
  });
}

@Data()
@JsonCodable()
class CitationAffiliationInfo {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String affiliation;
  final PrimitiveElement affiliationElement;
  final String role;
  final PrimitiveElement roleElement;
  final List<Identifier> identifier;
  const CitationAffiliationInfo({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.affiliation,
    required this.affiliationElement,
    required this.role,
    required this.roleElement,
    required this.identifier,
  });
}

@Data()
@JsonCodable()
class CitationContributionInstance {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final FhirDateTime time;
  final PrimitiveElement timeElement;
  const CitationContributionInstance({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.time,
    required this.timeElement,
  });
}

@Data()
@JsonCodable()
class CitationSummary1 {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept style;
  final CodeableConcept source;
  final FhirMarkdown value;
  final PrimitiveElement valueElement;
  const CitationSummary1({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.style,
    required this.source,
    required this.value,
    required this.valueElement,
  });
}



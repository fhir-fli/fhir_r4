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
}

@Data()
@JsonCodable()
class CitationClassification {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classifier;
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
}



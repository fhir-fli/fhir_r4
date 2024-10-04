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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirDate approvalDate;
  final PrimitiveElement ApprovalDate;
  final FhirDate lastReviewDate;
  final PrimitiveElement LastReviewDate;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept style;
  final FhirMarkdown text;
  final PrimitiveElement Text;
}

@Data()
@JsonCodable()
class CitationClassification {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classifier;
}

@Data()
@JsonCodable()
class CitationStatusDate {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept activity;
  final FhirBoolean actual;
  final PrimitiveElement Actual;
  final Period period;
}

@Data()
@JsonCodable()
class CitationRelatesTo {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept relationshipType;
  final List<CodeableConcept> targetClassifier;
  final String targetUri;
  final PrimitiveElement TargetUri;
  final Identifier targetIdentifier;
  final Reference targetReference;
  final Attachment targetAttachment;
}

@Data()
@JsonCodable()
class CitationCitedArtifact {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final List<Identifier> relatedIdentifier;
  final FhirDateTime dateAccessed;
  final PrimitiveElement DateAccessed;
  final CitationVersion version;
  final List<CodeableConcept> currentState;
  final List<CitationStatusDate1> statusDate;
  final List<CitationTitle> title;
  final List<CitationAbstract> abstract;
  final CitationPart part;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String value;
  final PrimitiveElement Value;
  final Reference baseCitation;
}

@Data()
@JsonCodable()
class CitationStatusDate1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept activity;
  final FhirBoolean actual;
  final PrimitiveElement Actual;
  final Period period;
}

@Data()
@JsonCodable()
class CitationTitle {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<CodeableConcept> type;
  final CodeableConcept language;
  final FhirMarkdown text;
  final PrimitiveElement Text;
}

@Data()
@JsonCodable()
class CitationAbstract {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept language;
  final FhirMarkdown text;
  final PrimitiveElement Text;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
}

@Data()
@JsonCodable()
class CitationPart {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final String value;
  final PrimitiveElement Value;
  final Reference baseCitation;
}

@Data()
@JsonCodable()
class CitationRelatesTo1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept relationshipType;
  final List<CodeableConcept> targetClassifier;
  final String targetUri;
  final PrimitiveElement TargetUri;
  final Identifier targetIdentifier;
  final Reference targetReference;
  final Attachment targetAttachment;
}

@Data()
@JsonCodable()
class CitationPublicationForm {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CitationPublishedIn publishedIn;
  final CitationPeriodicRelease periodicRelease;
  final FhirDateTime articleDate;
  final PrimitiveElement ArticleDate;
  final FhirDateTime lastRevisionDate;
  final PrimitiveElement LastRevisionDate;
  final List<CodeableConcept> language;
  final String accessionNumber;
  final PrimitiveElement AccessionNumber;
  final String pageString;
  final PrimitiveElement PageString;
  final String firstPage;
  final PrimitiveElement FirstPage;
  final String lastPage;
  final PrimitiveElement LastPage;
  final String pageCount;
  final PrimitiveElement PageCount;
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
}

@Data()
@JsonCodable()
class CitationPublishedIn {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<Identifier> identifier;
  final String title;
  final PrimitiveElement Title;
  final Reference publisher;
  final String publisherLocation;
  final PrimitiveElement PublisherLocation;
}

@Data()
@JsonCodable()
class CitationPeriodicRelease {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept citedMedium;
  final String volume;
  final PrimitiveElement Volume;
  final String issue;
  final PrimitiveElement Issue;
  final CitationDateOfPublication dateOfPublication;
}

@Data()
@JsonCodable()
class CitationDateOfPublication {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirDate date;
  final PrimitiveElement Date;
  final String year;
  final PrimitiveElement Year;
  final String month;
  final PrimitiveElement Month;
  final String day;
  final PrimitiveElement Day;
  final String season;
  final PrimitiveElement Season;
  final String text;
  final PrimitiveElement Text;
}

@Data()
@JsonCodable()
class CitationWebLocation {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final FhirUri url;
  final PrimitiveElement Url;
}

@Data()
@JsonCodable()
class CitationClassification1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> classifier;
  final CitationWhoClassified whoClassified;
}

@Data()
@JsonCodable()
class CitationWhoClassified {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Reference person;
  final Reference organization;
  final Reference publisher;
  final String classifierCopyright;
  final PrimitiveElement ClassifierCopyright;
  final FhirBoolean freeToShare;
  final PrimitiveElement FreeToShare;
}

@Data()
@JsonCodable()
class CitationContributorship {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirBoolean complete;
  final PrimitiveElement Complete;
  final List<CitationEntry> entry;
  final List<CitationSummary1> summary;
}

@Data()
@JsonCodable()
class CitationEntry {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final HumanName name;
  final String initials;
  final PrimitiveElement Initials;
  final String collectiveName;
  final PrimitiveElement CollectiveName;
  final List<Identifier> identifier;
  final List<CitationAffiliationInfo> affiliationInfo;
  final List<Address> address;
  final List<ContactPoint> telecom;
  final List<CodeableConcept> contributionType;
  final CodeableConcept role;
  final List<CitationContributionInstance> contributionInstance;
  final FhirBoolean correspondingContact;
  final PrimitiveElement CorrespondingContact;
  final FhirPositiveInt listOrder;
  final PrimitiveElement ListOrder;
}

@Data()
@JsonCodable()
class CitationAffiliationInfo {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String affiliation;
  final PrimitiveElement Affiliation;
  final String role;
  final PrimitiveElement Role;
  final List<Identifier> identifier;
}

@Data()
@JsonCodable()
class CitationContributionInstance {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final FhirDateTime time;
  final PrimitiveElement Time;
}

@Data()
@JsonCodable()
class CitationSummary1 {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept type;
  final CodeableConcept style;
  final CodeableConcept source;
  final FhirMarkdown value;
  final PrimitiveElement Value;
}



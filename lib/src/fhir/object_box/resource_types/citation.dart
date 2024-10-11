import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class Citation extends Resource {
  Citation({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? name;
  String? title;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  String? approvalDate;
  String? lastReviewDate;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToMany<ContactDetail>? author = ToMany<ContactDetail>();
  ToMany<ContactDetail>? editor = ToMany<ContactDetail>();
  ToMany<ContactDetail>? reviewer = ToMany<ContactDetail>();
  ToMany<ContactDetail>? endorser = ToMany<ContactDetail>();
  ToMany<CitationSummary>? summary = ToMany<CitationSummary>();
  ToMany<CitationClassification>? classification =
      ToMany<CitationClassification>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<CodeableConcept>? currentState = ToMany<CodeableConcept>();
  ToMany<CitationStatusDate>? statusDate = ToMany<CitationStatusDate>();
  ToMany<CitationRelatesTo>? relatesTo = ToMany<CitationRelatesTo>();
  ToOne<CitationCitedArtifact>? citedArtifact = ToOne<CitationCitedArtifact>();
}

@Entity()
class CitationSummary {
  CitationSummary({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.style,
    required this.text,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? style = ToOne<CodeableConcept>();
  String text;
}

@Entity()
class CitationClassification {
  CitationClassification({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.classifier,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? classifier = ToMany<CodeableConcept>();
}

@Entity()
class CitationStatusDate {
  CitationStatusDate({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.activity,
    this.actual,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> activity = ToOne<CodeableConcept>();
  bool? actual;
  ToOne<Period> period = ToOne<Period>();
}

@Entity()
class CitationRelatesTo {
  CitationRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    this.targetUri,
    this.targetIdentifier,
    this.targetReference,
    this.targetAttachment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> relationshipType = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? targetClassifier = ToMany<CodeableConcept>();
  String? targetUri;
  ToOne<Identifier>? targetIdentifier = ToOne<Identifier>();
  ToOne<Reference>? targetReference = ToOne<Reference>();
  ToOne<Attachment>? targetAttachment = ToOne<Attachment>();
}

@Entity()
class CitationCitedArtifact {
  CitationCitedArtifact({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.relatedIdentifier,
    this.dateAccessed,
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<Identifier>? relatedIdentifier = ToMany<Identifier>();
  String? dateAccessed;
  ToOne<CitationVersion>? version = ToOne<CitationVersion>();
  ToMany<CodeableConcept>? currentState = ToMany<CodeableConcept>();
  ToMany<CitationStatusDate>? statusDate = ToMany<CitationStatusDate>();
  ToMany<CitationTitle>? title = ToMany<CitationTitle>();
  ToMany<CitationAbstract>? abstract_ = ToMany<CitationAbstract>();
  ToOne<CitationPart>? part_ = ToOne<CitationPart>();
  ToMany<CitationRelatesTo>? relatesTo = ToMany<CitationRelatesTo>();
  ToMany<CitationPublicationForm>? publicationForm =
      ToMany<CitationPublicationForm>();
  ToMany<CitationWebLocation>? webLocation = ToMany<CitationWebLocation>();
  ToMany<CitationClassification>? classification =
      ToMany<CitationClassification>();
  ToOne<CitationContributorship>? contributorship =
      ToOne<CitationContributorship>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class CitationVersion {
  CitationVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.value,
    this.baseCitation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String value;
  ToOne<Reference>? baseCitation = ToOne<Reference>();
}

@Entity()
class CitationStatusDate1 {
  CitationStatusDate1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.activity,
    this.actual,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> activity = ToOne<CodeableConcept>();
  bool? actual;
  ToOne<Period> period = ToOne<Period>();
}

@Entity()
class CitationTitle {
  CitationTitle({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.language,
    required this.text,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? language = ToOne<CodeableConcept>();
  String text;
}

@Entity()
class CitationAbstract {
  CitationAbstract({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.language,
    required this.text,
    this.copyright,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? language = ToOne<CodeableConcept>();
  String text;
  String? copyright;
}

@Entity()
class CitationPart {
  CitationPart({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.value,
    this.baseCitation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? value;
  ToOne<Reference>? baseCitation = ToOne<Reference>();
}

@Entity()
class CitationRelatesTo1 {
  CitationRelatesTo1({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.relationshipType,
    this.targetClassifier,
    this.targetUri,
    this.targetIdentifier,
    this.targetReference,
    this.targetAttachment,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> relationshipType = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? targetClassifier = ToMany<CodeableConcept>();
  String? targetUri;
  ToOne<Identifier>? targetIdentifier = ToOne<Identifier>();
  ToOne<Reference>? targetReference = ToOne<Reference>();
  ToOne<Attachment>? targetAttachment = ToOne<Attachment>();
}

@Entity()
class CitationPublicationForm {
  CitationPublicationForm({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.publishedIn,
    this.periodicRelease,
    this.articleDate,
    this.lastRevisionDate,
    this.language,
    this.accessionNumber,
    this.pageString,
    this.firstPage,
    this.lastPage,
    this.pageCount,
    this.copyright,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CitationPublishedIn>? publishedIn = ToOne<CitationPublishedIn>();
  ToOne<CitationPeriodicRelease>? periodicRelease =
      ToOne<CitationPeriodicRelease>();
  String? articleDate;
  String? lastRevisionDate;
  ToMany<CodeableConcept>? language = ToMany<CodeableConcept>();
  String? accessionNumber;
  String? pageString;
  String? firstPage;
  String? lastPage;
  String? pageCount;
  String? copyright;
}

@Entity()
class CitationPublishedIn {
  CitationPublishedIn({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.identifier,
    this.title,
    this.publisher,
    this.publisherLocation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? title;
  ToOne<Reference>? publisher = ToOne<Reference>();
  String? publisherLocation;
}

@Entity()
class CitationPeriodicRelease {
  CitationPeriodicRelease({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.citedMedium,
    this.volume,
    this.issue,
    this.dateOfPublication,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? citedMedium = ToOne<CodeableConcept>();
  String? volume;
  String? issue;
  ToOne<CitationDateOfPublication>? dateOfPublication =
      ToOne<CitationDateOfPublication>();
}

@Entity()
class CitationDateOfPublication {
  CitationDateOfPublication({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.date,
    this.year,
    this.month,
    this.day,
    this.season,
    this.text,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? date;
  String? year;
  String? month;
  String? day;
  String? season;
  String? text;
}

@Entity()
class CitationWebLocation {
  CitationWebLocation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.url,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? url;
}

@Entity()
class CitationClassification1 {
  CitationClassification1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.classifier,
    this.whoClassified,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? classifier = ToMany<CodeableConcept>();
  ToOne<CitationWhoClassified>? whoClassified = ToOne<CitationWhoClassified>();
}

@Entity()
class CitationWhoClassified {
  CitationWhoClassified({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.person,
    this.organization,
    this.publisher,
    this.classifierCopyright,
    this.freeToShare,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<Reference>? person = ToOne<Reference>();
  ToOne<Reference>? organization = ToOne<Reference>();
  ToOne<Reference>? publisher = ToOne<Reference>();
  String? classifierCopyright;
  bool? freeToShare;
}

@Entity()
class CitationContributorship {
  CitationContributorship({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.complete,
    this.entry,
    this.summary,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? complete;
  ToMany<CitationEntry>? entry = ToMany<CitationEntry>();
  ToMany<CitationSummary>? summary = ToMany<CitationSummary>();
}

@Entity()
class CitationEntry {
  CitationEntry({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.initials,
    this.collectiveName,
    this.identifier,
    this.affiliationInfo,
    this.address,
    this.telecom,
    this.contributionType,
    this.role,
    this.contributionInstance,
    this.correspondingContact,
    this.listOrder,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<HumanName>? name = ToOne<HumanName>();
  String? initials;
  String? collectiveName;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<CitationAffiliationInfo>? affiliationInfo =
      ToMany<CitationAffiliationInfo>();
  ToMany<Address>? address = ToMany<Address>();
  ToMany<ContactPoint>? telecom = ToMany<ContactPoint>();
  ToMany<CodeableConcept>? contributionType = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? role = ToOne<CodeableConcept>();
  ToMany<CitationContributionInstance>? contributionInstance =
      ToMany<CitationContributionInstance>();
  bool? correspondingContact;
  int? listOrder;
}

@Entity()
class CitationAffiliationInfo {
  CitationAffiliationInfo({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.affiliation,
    this.role,
    this.identifier,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? affiliation;
  String? role;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
}

@Entity()
class CitationContributionInstance {
  CitationContributionInstance({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.time,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  String? time;
}

@Entity()
class CitationSummary1 {
  CitationSummary1({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.style,
    this.source,
    required this.value,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? style = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? source = ToOne<CodeableConcept>();
  String value;
}

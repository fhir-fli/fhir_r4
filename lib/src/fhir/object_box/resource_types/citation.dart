import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Citation extends Resource {
  Citation({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
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
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  String? approvalDate;
  ToOne<Element>? approvalDateElement = ToOne<Element>();
  String? lastReviewDate;
  ToOne<Element>? lastReviewDateElement = ToOne<Element>();
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
    this.textElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? style = ToOne<CodeableConcept>();
  String text;
  ToOne<Element>? textElement = ToOne<Element>();
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
    this.actualElement,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> activity = ToOne<CodeableConcept>();
  bool? actual;
  ToOne<Element>? actualElement = ToOne<Element>();
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
    this.targetUriElement,
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
  ToOne<Element>? targetUriElement = ToOne<Element>();
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  ToMany<Identifier>? relatedIdentifier = ToMany<Identifier>();
  String? dateAccessed;
  ToOne<Element>? dateAccessedElement = ToOne<Element>();
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
    this.valueElement,
    this.baseCitation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String value;
  ToOne<Element>? valueElement = ToOne<Element>();
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
    this.actualElement,
    required this.period,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> activity = ToOne<CodeableConcept>();
  bool? actual;
  ToOne<Element>? actualElement = ToOne<Element>();
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
    this.textElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? type = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? language = ToOne<CodeableConcept>();
  String text;
  ToOne<Element>? textElement = ToOne<Element>();
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
    this.textElement,
    this.copyright,
    this.copyrightElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? language = ToOne<CodeableConcept>();
  String text;
  ToOne<Element>? textElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
}

@Entity()
class CitationPart {
  CitationPart({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.value,
    this.valueElement,
    this.baseCitation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? value;
  ToOne<Element>? valueElement = ToOne<Element>();
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
    this.targetUriElement,
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
  ToOne<Element>? targetUriElement = ToOne<Element>();
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CitationPublishedIn>? publishedIn = ToOne<CitationPublishedIn>();
  ToOne<CitationPeriodicRelease>? periodicRelease =
      ToOne<CitationPeriodicRelease>();
  String? articleDate;
  ToOne<Element>? articleDateElement = ToOne<Element>();
  String? lastRevisionDate;
  ToOne<Element>? lastRevisionDateElement = ToOne<Element>();
  ToMany<CodeableConcept>? language = ToMany<CodeableConcept>();
  String? accessionNumber;
  ToOne<Element>? accessionNumberElement = ToOne<Element>();
  String? pageString;
  ToOne<Element>? pageStringElement = ToOne<Element>();
  String? firstPage;
  ToOne<Element>? firstPageElement = ToOne<Element>();
  String? lastPage;
  ToOne<Element>? lastPageElement = ToOne<Element>();
  String? pageCount;
  ToOne<Element>? pageCountElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
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
    this.titleElement,
    this.publisher,
    this.publisherLocation,
    this.publisherLocationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  ToOne<Reference>? publisher = ToOne<Reference>();
  String? publisherLocation;
  ToOne<Element>? publisherLocationElement = ToOne<Element>();
}

@Entity()
class CitationPeriodicRelease {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? citedMedium = ToOne<CodeableConcept>();
  String? volume;
  ToOne<Element>? volumeElement = ToOne<Element>();
  String? issue;
  ToOne<Element>? issueElement = ToOne<Element>();
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? year;
  ToOne<Element>? yearElement = ToOne<Element>();
  String? month;
  ToOne<Element>? monthElement = ToOne<Element>();
  String? day;
  ToOne<Element>? dayElement = ToOne<Element>();
  String? season;
  ToOne<Element>? seasonElement = ToOne<Element>();
  String? text;
  ToOne<Element>? textElement = ToOne<Element>();
}

@Entity()
class CitationWebLocation {
  CitationWebLocation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.url,
    this.urlElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
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
    this.classifierCopyrightElement,
    this.freeToShare,
    this.freeToShareElement,
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
  ToOne<Element>? classifierCopyrightElement = ToOne<Element>();
  bool? freeToShare;
  ToOne<Element>? freeToShareElement = ToOne<Element>();
}

@Entity()
class CitationContributorship {
  CitationContributorship({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.complete,
    this.completeElement,
    this.entry,
    this.summary,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? complete;
  ToOne<Element>? completeElement = ToOne<Element>();
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
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<HumanName>? name = ToOne<HumanName>();
  String? initials;
  ToOne<Element>? initialsElement = ToOne<Element>();
  String? collectiveName;
  ToOne<Element>? collectiveNameElement = ToOne<Element>();
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
  ToOne<Element>? correspondingContactElement = ToOne<Element>();
  int? listOrder;
  ToOne<Element>? listOrderElement = ToOne<Element>();
}

@Entity()
class CitationAffiliationInfo {
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

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? affiliation;
  ToOne<Element>? affiliationElement = ToOne<Element>();
  String? role;
  ToOne<Element>? roleElement = ToOne<Element>();
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
    this.timeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> type = ToOne<CodeableConcept>();
  String? time;
  ToOne<Element>? timeElement = ToOne<Element>();
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
    this.valueElement,
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
  ToOne<Element>? valueElement = ToOne<Element>();
}

// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCitation {
  ObjectBoxCitation({
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement>? approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement>? lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxContactDetail>? author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail>? endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxCitationSummary>? summary =
      ToMany<ObjectBoxCitationSummary>();
  ToMany<ObjectBoxCitationClassification>? classification =
      ToMany<ObjectBoxCitationClassification>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxCodeableConcept>? currentState =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCitationStatusDate>? statusDate =
      ToMany<ObjectBoxCitationStatusDate>();
  ToMany<ObjectBoxCitationRelatesTo>? relatesTo =
      ToMany<ObjectBoxCitationRelatesTo>();
  ToOne<ObjectBoxCitationCitedArtifact>? citedArtifact =
      ToOne<ObjectBoxCitationCitedArtifact>();
}

@Entity()
class ObjectBoxCitationSummary {
  ObjectBoxCitationSummary({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? style = ToOne<ObjectBoxCodeableConcept>();
  String text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationClassification {
  ObjectBoxCitationClassification({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.classifier,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? classifier =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxCitationStatusDate {
  ObjectBoxCitationStatusDate({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> activity = ToOne<ObjectBoxCodeableConcept>();
  bool? actual;
  ToOne<ObjectBoxElement>? actualElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxCitationRelatesTo {
  ObjectBoxCitationRelatesTo({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> relationshipType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? targetClassifier =
      ToMany<ObjectBoxCodeableConcept>();
  String? targetUri;
  ToOne<ObjectBoxElement>? targetUriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier>? targetIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference>? targetReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxAttachment>? targetAttachment = ToOne<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxCitationCitedArtifact {
  ObjectBoxCitationCitedArtifact({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxIdentifier>? relatedIdentifier =
      ToMany<ObjectBoxIdentifier>();
  String? dateAccessed;
  ToOne<ObjectBoxElement>? dateAccessedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCitationVersion>? version = ToOne<ObjectBoxCitationVersion>();
  ToMany<ObjectBoxCodeableConcept>? currentState =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCitationStatusDate>? statusDate =
      ToMany<ObjectBoxCitationStatusDate>();
  ToMany<ObjectBoxCitationTitle>? title = ToMany<ObjectBoxCitationTitle>();
  ToMany<ObjectBoxCitationAbstract>? abstract_ =
      ToMany<ObjectBoxCitationAbstract>();
  ToOne<ObjectBoxCitationPart>? part_ = ToOne<ObjectBoxCitationPart>();
  ToMany<ObjectBoxCitationRelatesTo>? relatesTo =
      ToMany<ObjectBoxCitationRelatesTo>();
  ToMany<ObjectBoxCitationPublicationForm>? publicationForm =
      ToMany<ObjectBoxCitationPublicationForm>();
  ToMany<ObjectBoxCitationWebLocation>? webLocation =
      ToMany<ObjectBoxCitationWebLocation>();
  ToMany<ObjectBoxCitationClassification>? classification =
      ToMany<ObjectBoxCitationClassification>();
  ToOne<ObjectBoxCitationContributorship>? contributorship =
      ToOne<ObjectBoxCitationContributorship>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxCitationVersion {
  ObjectBoxCitationVersion({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? baseCitation = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCitationStatusDate1 {
  ObjectBoxCitationStatusDate1({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> activity = ToOne<ObjectBoxCodeableConcept>();
  bool? actual;
  ToOne<ObjectBoxElement>? actualElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxCitationTitle {
  ObjectBoxCitationTitle({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept>? type = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? language = ToOne<ObjectBoxCodeableConcept>();
  String text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationAbstract {
  ObjectBoxCitationAbstract({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? language = ToOne<ObjectBoxCodeableConcept>();
  String text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationPart {
  ObjectBoxCitationPart({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  String? value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? baseCitation = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCitationRelatesTo1 {
  ObjectBoxCitationRelatesTo1({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> relationshipType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? targetClassifier =
      ToMany<ObjectBoxCodeableConcept>();
  String? targetUri;
  ToOne<ObjectBoxElement>? targetUriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier>? targetIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference>? targetReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxAttachment>? targetAttachment = ToOne<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxCitationPublicationForm {
  ObjectBoxCitationPublicationForm({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCitationPublishedIn>? publishedIn =
      ToOne<ObjectBoxCitationPublishedIn>();
  ToOne<ObjectBoxCitationPeriodicRelease>? periodicRelease =
      ToOne<ObjectBoxCitationPeriodicRelease>();
  String? articleDate;
  ToOne<ObjectBoxElement>? articleDateElement = ToOne<ObjectBoxElement>();
  String? lastRevisionDate;
  ToOne<ObjectBoxElement>? lastRevisionDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? language =
      ToMany<ObjectBoxCodeableConcept>();
  String? accessionNumber;
  ToOne<ObjectBoxElement>? accessionNumberElement = ToOne<ObjectBoxElement>();
  String? pageString;
  ToOne<ObjectBoxElement>? pageStringElement = ToOne<ObjectBoxElement>();
  String? firstPage;
  ToOne<ObjectBoxElement>? firstPageElement = ToOne<ObjectBoxElement>();
  String? lastPage;
  ToOne<ObjectBoxElement>? lastPageElement = ToOne<ObjectBoxElement>();
  String? pageCount;
  ToOne<ObjectBoxElement>? pageCountElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationPublishedIn {
  ObjectBoxCitationPublishedIn({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? publisher = ToOne<ObjectBoxReference>();
  String? publisherLocation;
  ToOne<ObjectBoxElement>? publisherLocationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationPeriodicRelease {
  ObjectBoxCitationPeriodicRelease({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? citedMedium =
      ToOne<ObjectBoxCodeableConcept>();
  String? volume;
  ToOne<ObjectBoxElement>? volumeElement = ToOne<ObjectBoxElement>();
  String? issue;
  ToOne<ObjectBoxElement>? issueElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCitationDateOfPublication>? dateOfPublication =
      ToOne<ObjectBoxCitationDateOfPublication>();
}

@Entity()
class ObjectBoxCitationDateOfPublication {
  ObjectBoxCitationDateOfPublication({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? year;
  ToOne<ObjectBoxElement>? yearElement = ToOne<ObjectBoxElement>();
  String? month;
  ToOne<ObjectBoxElement>? monthElement = ToOne<ObjectBoxElement>();
  String? day;
  ToOne<ObjectBoxElement>? dayElement = ToOne<ObjectBoxElement>();
  String? season;
  ToOne<ObjectBoxElement>? seasonElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement>? textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationWebLocation {
  ObjectBoxCitationWebLocation({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationClassification1 {
  ObjectBoxCitationClassification1({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept>? classifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCitationWhoClassified>? whoClassified =
      ToOne<ObjectBoxCitationWhoClassified>();
}

@Entity()
class ObjectBoxCitationWhoClassified {
  ObjectBoxCitationWhoClassified({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference>? person = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? organization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? publisher = ToOne<ObjectBoxReference>();
  String? classifierCopyright;
  ToOne<ObjectBoxElement>? classifierCopyrightElement =
      ToOne<ObjectBoxElement>();
  bool? freeToShare;
  ToOne<ObjectBoxElement>? freeToShareElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationContributorship {
  ObjectBoxCitationContributorship({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? complete;
  ToOne<ObjectBoxElement>? completeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCitationEntry>? entry = ToMany<ObjectBoxCitationEntry>();
  ToMany<ObjectBoxCitationSummary>? summary =
      ToMany<ObjectBoxCitationSummary>();
}

@Entity()
class ObjectBoxCitationEntry {
  ObjectBoxCitationEntry({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxHumanName>? name = ToOne<ObjectBoxHumanName>();
  String? initials;
  ToOne<ObjectBoxElement>? initialsElement = ToOne<ObjectBoxElement>();
  String? collectiveName;
  ToOne<ObjectBoxElement>? collectiveNameElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxCitationAffiliationInfo>? affiliationInfo =
      ToMany<ObjectBoxCitationAffiliationInfo>();
  ToMany<ObjectBoxAddress>? address = ToMany<ObjectBoxAddress>();
  ToMany<ObjectBoxContactPoint>? telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxCodeableConcept>? contributionType =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? role = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCitationContributionInstance>? contributionInstance =
      ToMany<ObjectBoxCitationContributionInstance>();
  bool? correspondingContact;
  ToOne<ObjectBoxElement>? correspondingContactElement =
      ToOne<ObjectBoxElement>();
  int? listOrder;
  ToOne<ObjectBoxElement>? listOrderElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationAffiliationInfo {
  ObjectBoxCitationAffiliationInfo({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? affiliation;
  ToOne<ObjectBoxElement>? affiliationElement = ToOne<ObjectBoxElement>();
  String? role;
  ToOne<ObjectBoxElement>? roleElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
}

@Entity()
class ObjectBoxCitationContributionInstance {
  ObjectBoxCitationContributionInstance({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? time;
  ToOne<ObjectBoxElement>? timeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationSummary1 {
  ObjectBoxCitationSummary1({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? style = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? source = ToOne<ObjectBoxCodeableConcept>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
}

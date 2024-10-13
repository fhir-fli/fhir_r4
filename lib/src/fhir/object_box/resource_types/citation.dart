// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxCitation {
  ObjectBoxCitation({
    this.id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.url,
    ObjectBoxElement? urlElement,
    List<ObjectBoxIdentifier>? identifier,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    this.approvalDate,
    ObjectBoxElement? approvalDateElement,
    this.lastReviewDate,
    ObjectBoxElement? lastReviewDateElement,
    ObjectBoxPeriod? effectivePeriod,
    List<ObjectBoxContactDetail>? author,
    List<ObjectBoxContactDetail>? editor,
    List<ObjectBoxContactDetail>? reviewer,
    List<ObjectBoxContactDetail>? endorser,
    List<ObjectBoxCitationSummary>? summary,
    List<ObjectBoxCitationClassification>? classification,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxCodeableConcept>? currentState,
    List<ObjectBoxCitationStatusDate>? statusDate,
    List<ObjectBoxCitationRelatesTo>? relatesTo,
    ObjectBoxCitationCitedArtifact? citedArtifact,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.approvalDateElement.target = approvalDateElement;
    this.lastReviewDateElement.target = lastReviewDateElement;
    this.effectivePeriod.target = effectivePeriod;
    this.author.addAll(author ?? []);
    this.editor.addAll(editor ?? []);
    this.reviewer.addAll(reviewer ?? []);
    this.endorser.addAll(endorser ?? []);
    this.summary.addAll(summary ?? []);
    this.classification.addAll(classification ?? []);
    this.note.addAll(note ?? []);
    this.currentState.addAll(currentState ?? []);
    this.statusDate.addAll(statusDate ?? []);
    this.relatesTo.addAll(relatesTo ?? []);
    this.citedArtifact.target = citedArtifact;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String? approvalDate;
  ToOne<ObjectBoxElement> approvalDateElement = ToOne<ObjectBoxElement>();
  String? lastReviewDate;
  ToOne<ObjectBoxElement> lastReviewDateElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> effectivePeriod = ToOne<ObjectBoxPeriod>();
  ToMany<ObjectBoxContactDetail> author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxCitationSummary> summary = ToMany<ObjectBoxCitationSummary>();
  ToMany<ObjectBoxCitationClassification> classification =
      ToMany<ObjectBoxCitationClassification>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxCodeableConcept> currentState =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCitationStatusDate> statusDate =
      ToMany<ObjectBoxCitationStatusDate>();
  ToMany<ObjectBoxCitationRelatesTo> relatesTo =
      ToMany<ObjectBoxCitationRelatesTo>();
  ToOne<ObjectBoxCitationCitedArtifact> citedArtifact =
      ToOne<ObjectBoxCitationCitedArtifact>();
}

@Entity()
class ObjectBoxCitationSummary {
  ObjectBoxCitationSummary({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? style,
    required this.text,
    ObjectBoxElement? textElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.style.target = style;
    this.textElement.target = textElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> style = ToOne<ObjectBoxCodeableConcept>();
  String text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationClassification {
  ObjectBoxCitationClassification({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? classifier,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.classifier.addAll(classifier ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> classifier =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxCitationStatusDate {
  ObjectBoxCitationStatusDate({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? activity,
    this.actual,
    ObjectBoxElement? actualElement,
    ObjectBoxPeriod? period,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.activity.target = activity;
    this.actualElement.target = actualElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> activity = ToOne<ObjectBoxCodeableConcept>();
  bool? actual;
  ToOne<ObjectBoxElement> actualElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxCitationRelatesTo {
  ObjectBoxCitationRelatesTo({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? relationshipType,
    List<ObjectBoxCodeableConcept>? targetClassifier,
    this.targetUri,
    ObjectBoxElement? targetUriElement,
    ObjectBoxIdentifier? targetIdentifier,
    ObjectBoxReference? targetReference,
    ObjectBoxAttachment? targetAttachment,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.relationshipType.target = relationshipType;
    this.targetClassifier.addAll(targetClassifier ?? []);
    this.targetUriElement.target = targetUriElement;
    this.targetIdentifier.target = targetIdentifier;
    this.targetReference.target = targetReference;
    this.targetAttachment.target = targetAttachment;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> relationshipType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> targetClassifier =
      ToMany<ObjectBoxCodeableConcept>();
  String? targetUri;
  ToOne<ObjectBoxElement> targetUriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier> targetIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> targetReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxAttachment> targetAttachment = ToOne<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxCitationCitedArtifact {
  ObjectBoxCitationCitedArtifact({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxIdentifier>? identifier,
    List<ObjectBoxIdentifier>? relatedIdentifier,
    this.dateAccessed,
    ObjectBoxElement? dateAccessedElement,
    ObjectBoxCitationVersion? version,
    List<ObjectBoxCodeableConcept>? currentState,
    List<ObjectBoxCitationStatusDate>? statusDate,
    List<ObjectBoxCitationTitle>? title,
    List<ObjectBoxCitationAbstract>? abstract_,
    ObjectBoxCitationPart? part_,
    List<ObjectBoxCitationRelatesTo>? relatesTo,
    List<ObjectBoxCitationPublicationForm>? publicationForm,
    List<ObjectBoxCitationWebLocation>? webLocation,
    List<ObjectBoxCitationClassification>? classification,
    ObjectBoxCitationContributorship? contributorship,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this.relatedIdentifier.addAll(relatedIdentifier ?? []);
    this.dateAccessedElement.target = dateAccessedElement;
    this.version.target = version;
    this.currentState.addAll(currentState ?? []);
    this.statusDate.addAll(statusDate ?? []);
    this.title.addAll(title ?? []);
    this.abstract_.addAll(abstract_ ?? []);
    this.part_.target = part_;
    this.relatesTo.addAll(relatesTo ?? []);
    this.publicationForm.addAll(publicationForm ?? []);
    this.webLocation.addAll(webLocation ?? []);
    this.classification.addAll(classification ?? []);
    this.contributorship.target = contributorship;
    this.note.addAll(note ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxIdentifier> relatedIdentifier = ToMany<ObjectBoxIdentifier>();
  String? dateAccessed;
  ToOne<ObjectBoxElement> dateAccessedElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCitationVersion> version = ToOne<ObjectBoxCitationVersion>();
  ToMany<ObjectBoxCodeableConcept> currentState =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCitationStatusDate> statusDate =
      ToMany<ObjectBoxCitationStatusDate>();
  ToMany<ObjectBoxCitationTitle> title = ToMany<ObjectBoxCitationTitle>();
  ToMany<ObjectBoxCitationAbstract> abstract_ =
      ToMany<ObjectBoxCitationAbstract>();
  ToOne<ObjectBoxCitationPart> part_ = ToOne<ObjectBoxCitationPart>();
  ToMany<ObjectBoxCitationRelatesTo> relatesTo =
      ToMany<ObjectBoxCitationRelatesTo>();
  ToMany<ObjectBoxCitationPublicationForm> publicationForm =
      ToMany<ObjectBoxCitationPublicationForm>();
  ToMany<ObjectBoxCitationWebLocation> webLocation =
      ToMany<ObjectBoxCitationWebLocation>();
  ToMany<ObjectBoxCitationClassification> classification =
      ToMany<ObjectBoxCitationClassification>();
  ToOne<ObjectBoxCitationContributorship> contributorship =
      ToOne<ObjectBoxCitationContributorship>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxCitationVersion {
  ObjectBoxCitationVersion({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.value,
    ObjectBoxElement? valueElement,
    ObjectBoxReference? baseCitation,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.valueElement.target = valueElement;
    this.baseCitation.target = baseCitation;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> baseCitation = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCitationStatusDate1 {
  ObjectBoxCitationStatusDate1({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? activity,
    this.actual,
    ObjectBoxElement? actualElement,
    ObjectBoxPeriod? period,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.activity.target = activity;
    this.actualElement.target = actualElement;
    this.period.target = period;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> activity = ToOne<ObjectBoxCodeableConcept>();
  bool? actual;
  ToOne<ObjectBoxElement> actualElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> period = ToOne<ObjectBoxPeriod>();
}

@Entity()
class ObjectBoxCitationTitle {
  ObjectBoxCitationTitle({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    List<ObjectBoxCodeableConcept>? type,
    ObjectBoxCodeableConcept? language,
    required this.text,
    ObjectBoxElement? textElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.addAll(type ?? []);
    this.language.target = language;
    this.textElement.target = textElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxCodeableConcept> type = ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> language = ToOne<ObjectBoxCodeableConcept>();
  String text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationAbstract {
  ObjectBoxCitationAbstract({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? language,
    required this.text,
    ObjectBoxElement? textElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.language.target = language;
    this.textElement.target = textElement;
    this.copyrightElement.target = copyrightElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> language = ToOne<ObjectBoxCodeableConcept>();
  String text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationPart {
  ObjectBoxCitationPart({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.value,
    ObjectBoxElement? valueElement,
    ObjectBoxReference? baseCitation,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.valueElement.target = valueElement;
    this.baseCitation.target = baseCitation;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> baseCitation = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxCitationRelatesTo1 {
  ObjectBoxCitationRelatesTo1({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? relationshipType,
    List<ObjectBoxCodeableConcept>? targetClassifier,
    this.targetUri,
    ObjectBoxElement? targetUriElement,
    ObjectBoxIdentifier? targetIdentifier,
    ObjectBoxReference? targetReference,
    ObjectBoxAttachment? targetAttachment,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.relationshipType.target = relationshipType;
    this.targetClassifier.addAll(targetClassifier ?? []);
    this.targetUriElement.target = targetUriElement;
    this.targetIdentifier.target = targetIdentifier;
    this.targetReference.target = targetReference;
    this.targetAttachment.target = targetAttachment;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> relationshipType =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> targetClassifier =
      ToMany<ObjectBoxCodeableConcept>();
  String? targetUri;
  ToOne<ObjectBoxElement> targetUriElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxIdentifier> targetIdentifier = ToOne<ObjectBoxIdentifier>();
  ToOne<ObjectBoxReference> targetReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxAttachment> targetAttachment = ToOne<ObjectBoxAttachment>();
}

@Entity()
class ObjectBoxCitationPublicationForm {
  ObjectBoxCitationPublicationForm({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCitationPublishedIn? publishedIn,
    ObjectBoxCitationPeriodicRelease? periodicRelease,
    this.articleDate,
    ObjectBoxElement? articleDateElement,
    this.lastRevisionDate,
    ObjectBoxElement? lastRevisionDateElement,
    List<ObjectBoxCodeableConcept>? language,
    this.accessionNumber,
    ObjectBoxElement? accessionNumberElement,
    this.pageString,
    ObjectBoxElement? pageStringElement,
    this.firstPage,
    ObjectBoxElement? firstPageElement,
    this.lastPage,
    ObjectBoxElement? lastPageElement,
    this.pageCount,
    ObjectBoxElement? pageCountElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.publishedIn.target = publishedIn;
    this.periodicRelease.target = periodicRelease;
    this.articleDateElement.target = articleDateElement;
    this.lastRevisionDateElement.target = lastRevisionDateElement;
    this.language.addAll(language ?? []);
    this.accessionNumberElement.target = accessionNumberElement;
    this.pageStringElement.target = pageStringElement;
    this.firstPageElement.target = firstPageElement;
    this.lastPageElement.target = lastPageElement;
    this.pageCountElement.target = pageCountElement;
    this.copyrightElement.target = copyrightElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCitationPublishedIn> publishedIn =
      ToOne<ObjectBoxCitationPublishedIn>();
  ToOne<ObjectBoxCitationPeriodicRelease> periodicRelease =
      ToOne<ObjectBoxCitationPeriodicRelease>();
  String? articleDate;
  ToOne<ObjectBoxElement> articleDateElement = ToOne<ObjectBoxElement>();
  String? lastRevisionDate;
  ToOne<ObjectBoxElement> lastRevisionDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept> language =
      ToMany<ObjectBoxCodeableConcept>();
  String? accessionNumber;
  ToOne<ObjectBoxElement> accessionNumberElement = ToOne<ObjectBoxElement>();
  String? pageString;
  ToOne<ObjectBoxElement> pageStringElement = ToOne<ObjectBoxElement>();
  String? firstPage;
  ToOne<ObjectBoxElement> firstPageElement = ToOne<ObjectBoxElement>();
  String? lastPage;
  ToOne<ObjectBoxElement> lastPageElement = ToOne<ObjectBoxElement>();
  String? pageCount;
  ToOne<ObjectBoxElement> pageCountElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationPublishedIn {
  ObjectBoxCitationPublishedIn({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxIdentifier>? identifier,
    this.title,
    ObjectBoxElement? titleElement,
    ObjectBoxReference? publisher,
    this.publisherLocation,
    ObjectBoxElement? publisherLocationElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.identifier.addAll(identifier ?? []);
    this.titleElement.target = titleElement;
    this.publisher.target = publisher;
    this.publisherLocationElement.target = publisherLocationElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> publisher = ToOne<ObjectBoxReference>();
  String? publisherLocation;
  ToOne<ObjectBoxElement> publisherLocationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationPeriodicRelease {
  ObjectBoxCitationPeriodicRelease({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? citedMedium,
    this.volume,
    ObjectBoxElement? volumeElement,
    this.issue,
    ObjectBoxElement? issueElement,
    ObjectBoxCitationDateOfPublication? dateOfPublication,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.citedMedium.target = citedMedium;
    this.volumeElement.target = volumeElement;
    this.issueElement.target = issueElement;
    this.dateOfPublication.target = dateOfPublication;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> citedMedium =
      ToOne<ObjectBoxCodeableConcept>();
  String? volume;
  ToOne<ObjectBoxElement> volumeElement = ToOne<ObjectBoxElement>();
  String? issue;
  ToOne<ObjectBoxElement> issueElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCitationDateOfPublication> dateOfPublication =
      ToOne<ObjectBoxCitationDateOfPublication>();
}

@Entity()
class ObjectBoxCitationDateOfPublication {
  ObjectBoxCitationDateOfPublication({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.date,
    ObjectBoxElement? dateElement,
    this.year,
    ObjectBoxElement? yearElement,
    this.month,
    ObjectBoxElement? monthElement,
    this.day,
    ObjectBoxElement? dayElement,
    this.season,
    ObjectBoxElement? seasonElement,
    this.text,
    ObjectBoxElement? textElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.dateElement.target = dateElement;
    this.yearElement.target = yearElement;
    this.monthElement.target = monthElement;
    this.dayElement.target = dayElement;
    this.seasonElement.target = seasonElement;
    this.textElement.target = textElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? year;
  ToOne<ObjectBoxElement> yearElement = ToOne<ObjectBoxElement>();
  String? month;
  ToOne<ObjectBoxElement> monthElement = ToOne<ObjectBoxElement>();
  String? day;
  ToOne<ObjectBoxElement> dayElement = ToOne<ObjectBoxElement>();
  String? season;
  ToOne<ObjectBoxElement> seasonElement = ToOne<ObjectBoxElement>();
  String? text;
  ToOne<ObjectBoxElement> textElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationWebLocation {
  ObjectBoxCitationWebLocation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.url,
    ObjectBoxElement? urlElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.urlElement.target = urlElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationClassification1 {
  ObjectBoxCitationClassification1({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    List<ObjectBoxCodeableConcept>? classifier,
    ObjectBoxCitationWhoClassified? whoClassified,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.classifier.addAll(classifier ?? []);
    this.whoClassified.target = whoClassified;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCodeableConcept> classifier =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCitationWhoClassified> whoClassified =
      ToOne<ObjectBoxCitationWhoClassified>();
}

@Entity()
class ObjectBoxCitationWhoClassified {
  ObjectBoxCitationWhoClassified({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxReference? person,
    ObjectBoxReference? organization,
    ObjectBoxReference? publisher,
    this.classifierCopyright,
    ObjectBoxElement? classifierCopyrightElement,
    this.freeToShare,
    ObjectBoxElement? freeToShareElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.person.target = person;
    this.organization.target = organization;
    this.publisher.target = publisher;
    this.classifierCopyrightElement.target = classifierCopyrightElement;
    this.freeToShareElement.target = freeToShareElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxReference> person = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> organization = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> publisher = ToOne<ObjectBoxReference>();
  String? classifierCopyright;
  ToOne<ObjectBoxElement> classifierCopyrightElement =
      ToOne<ObjectBoxElement>();
  bool? freeToShare;
  ToOne<ObjectBoxElement> freeToShareElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationContributorship {
  ObjectBoxCitationContributorship({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.complete,
    ObjectBoxElement? completeElement,
    List<ObjectBoxCitationEntry>? entry,
    List<ObjectBoxCitationSummary>? summary,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.completeElement.target = completeElement;
    this.entry.addAll(entry ?? []);
    this.summary.addAll(summary ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? complete;
  ToOne<ObjectBoxElement> completeElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCitationEntry> entry = ToMany<ObjectBoxCitationEntry>();
  ToMany<ObjectBoxCitationSummary> summary = ToMany<ObjectBoxCitationSummary>();
}

@Entity()
class ObjectBoxCitationEntry {
  ObjectBoxCitationEntry({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxHumanName? name,
    this.initials,
    ObjectBoxElement? initialsElement,
    this.collectiveName,
    ObjectBoxElement? collectiveNameElement,
    List<ObjectBoxIdentifier>? identifier,
    List<ObjectBoxCitationAffiliationInfo>? affiliationInfo,
    List<ObjectBoxAddress>? address,
    List<ObjectBoxContactPoint>? telecom,
    List<ObjectBoxCodeableConcept>? contributionType,
    ObjectBoxCodeableConcept? role,
    List<ObjectBoxCitationContributionInstance>? contributionInstance,
    this.correspondingContact,
    ObjectBoxElement? correspondingContactElement,
    this.listOrder,
    ObjectBoxElement? listOrderElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.name.target = name;
    this.initialsElement.target = initialsElement;
    this.collectiveNameElement.target = collectiveNameElement;
    this.identifier.addAll(identifier ?? []);
    this.affiliationInfo.addAll(affiliationInfo ?? []);
    this.address.addAll(address ?? []);
    this.telecom.addAll(telecom ?? []);
    this.contributionType.addAll(contributionType ?? []);
    this.role.target = role;
    this.contributionInstance.addAll(contributionInstance ?? []);
    this.correspondingContactElement.target = correspondingContactElement;
    this.listOrderElement.target = listOrderElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxHumanName> name = ToOne<ObjectBoxHumanName>();
  String? initials;
  ToOne<ObjectBoxElement> initialsElement = ToOne<ObjectBoxElement>();
  String? collectiveName;
  ToOne<ObjectBoxElement> collectiveNameElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  ToMany<ObjectBoxCitationAffiliationInfo> affiliationInfo =
      ToMany<ObjectBoxCitationAffiliationInfo>();
  ToMany<ObjectBoxAddress> address = ToMany<ObjectBoxAddress>();
  ToMany<ObjectBoxContactPoint> telecom = ToMany<ObjectBoxContactPoint>();
  ToMany<ObjectBoxCodeableConcept> contributionType =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> role = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxCitationContributionInstance> contributionInstance =
      ToMany<ObjectBoxCitationContributionInstance>();
  bool? correspondingContact;
  ToOne<ObjectBoxElement> correspondingContactElement =
      ToOne<ObjectBoxElement>();
  int? listOrder;
  ToOne<ObjectBoxElement> listOrderElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationAffiliationInfo {
  ObjectBoxCitationAffiliationInfo({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.affiliation,
    ObjectBoxElement? affiliationElement,
    this.role,
    ObjectBoxElement? roleElement,
    List<ObjectBoxIdentifier>? identifier,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.affiliationElement.target = affiliationElement;
    this.roleElement.target = roleElement;
    this.identifier.addAll(identifier ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? affiliation;
  ToOne<ObjectBoxElement> affiliationElement = ToOne<ObjectBoxElement>();
  String? role;
  ToOne<ObjectBoxElement> roleElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
}

@Entity()
class ObjectBoxCitationContributionInstance {
  ObjectBoxCitationContributionInstance({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    this.time,
    ObjectBoxElement? timeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.timeElement.target = timeElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  String? time;
  ToOne<ObjectBoxElement> timeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxCitationSummary1 {
  ObjectBoxCitationSummary1({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? type,
    ObjectBoxCodeableConcept? style,
    ObjectBoxCodeableConcept? source,
    required this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.type.target = type;
    this.style.target = style;
    this.source.target = source;
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> type = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> style = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> source = ToOne<ObjectBoxCodeableConcept>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}

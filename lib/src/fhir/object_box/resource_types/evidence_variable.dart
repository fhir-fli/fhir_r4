// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxEvidenceVariable {
  ObjectBoxEvidenceVariable({
    String? id,
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
    this.shortTitle,
    ObjectBoxElement? shortTitleElement,
    this.subtitle,
    ObjectBoxElement? subtitleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.date,
    ObjectBoxElement? dateElement,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxUsageContext>? useContext,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    List<ObjectBoxContactDetail>? author,
    List<ObjectBoxContactDetail>? editor,
    List<ObjectBoxContactDetail>? reviewer,
    List<ObjectBoxContactDetail>? endorser,
    List<ObjectBoxRelatedArtifact>? relatedArtifact,
    this.actual,
    ObjectBoxElement? actualElement,
    this.characteristicCombination,
    ObjectBoxElement? characteristicCombinationElement,
    List<ObjectBoxEvidenceVariableCharacteristic>? characteristic,
    this.handling,
    ObjectBoxElement? handlingElement,
    List<ObjectBoxEvidenceVariableCategory>? category,
  }) {
    this.id.target = id;
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
    this.shortTitleElement.target = shortTitleElement;
    this.subtitleElement.target = subtitleElement;
    this.statusElement.target = statusElement;
    this.dateElement.target = dateElement;
    this.descriptionElement.target = descriptionElement;
    this.note.addAll(note ?? []);
    this.useContext.addAll(useContext ?? []);
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.author.addAll(author ?? []);
    this.editor.addAll(editor ?? []);
    this.reviewer.addAll(reviewer ?? []);
    this.endorser.addAll(endorser ?? []);
    this.relatedArtifact.addAll(relatedArtifact ?? []);
    this.actualElement.target = actualElement;
    this.characteristicCombinationElement.target =
        characteristicCombinationElement;
    this.characteristic.addAll(characteristic ?? []);
    this.handlingElement.target = handlingElement;
    this.category.addAll(category ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
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
  String? shortTitle;
  ToOne<ObjectBoxElement> shortTitleElement = ToOne<ObjectBoxElement>();
  String? subtitle;
  ToOne<ObjectBoxElement> subtitleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> author = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> editor = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> reviewer = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxContactDetail> endorser = ToMany<ObjectBoxContactDetail>();
  ToMany<ObjectBoxRelatedArtifact> relatedArtifact =
      ToMany<ObjectBoxRelatedArtifact>();
  bool? actual;
  ToOne<ObjectBoxElement> actualElement = ToOne<ObjectBoxElement>();
  String? characteristicCombination;
  ToOne<ObjectBoxElement> characteristicCombinationElement =
      ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxEvidenceVariableCharacteristic> characteristic =
      ToMany<ObjectBoxEvidenceVariableCharacteristic>();
  String? handling;
  ToOne<ObjectBoxElement> handlingElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxEvidenceVariableCategory> category =
      ToMany<ObjectBoxEvidenceVariableCategory>();
}

@Entity()
class ObjectBoxEvidenceVariableCharacteristic {
  ObjectBoxEvidenceVariableCharacteristic({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxReference? definitionReference,
    this.definitionCanonical,
    ObjectBoxElement? definitionCanonicalElement,
    ObjectBoxCodeableConcept? definitionCodeableConcept,
    ObjectBoxFhirExpression? definitionExpression,
    ObjectBoxCodeableConcept? method,
    ObjectBoxReference? device,
    this.exclude,
    ObjectBoxElement? excludeElement,
    ObjectBoxEvidenceVariableTimeFromStart? timeFromStart,
    this.groupMeasure,
    ObjectBoxElement? groupMeasureElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.definitionReference.target = definitionReference;
    this.definitionCanonicalElement.target = definitionCanonicalElement;
    this.definitionCodeableConcept.target = definitionCodeableConcept;
    this.definitionExpression.target = definitionExpression;
    this.method.target = method;
    this.device.target = device;
    this.excludeElement.target = excludeElement;
    this.timeFromStart.target = timeFromStart;
    this.groupMeasureElement.target = groupMeasureElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> definitionReference = ToOne<ObjectBoxReference>();
  String? definitionCanonical;
  ToOne<ObjectBoxElement> definitionCanonicalElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> definitionCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxFhirExpression> definitionExpression =
      ToOne<ObjectBoxFhirExpression>();
  ToOne<ObjectBoxCodeableConcept> method = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> device = ToOne<ObjectBoxReference>();
  bool? exclude;
  ToOne<ObjectBoxElement> excludeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxEvidenceVariableTimeFromStart> timeFromStart =
      ToOne<ObjectBoxEvidenceVariableTimeFromStart>();
  String? groupMeasure;
  ToOne<ObjectBoxElement> groupMeasureElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxEvidenceVariableTimeFromStart {
  ObjectBoxEvidenceVariableTimeFromStart({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.description,
    ObjectBoxElement? descriptionElement,
    ObjectBoxQuantity? quantity,
    ObjectBoxRange? range,
    List<ObjectBoxAnnotation>? note,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.quantity.target = quantity;
    this.range.target = range;
    this.note.addAll(note ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxQuantity> quantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> range = ToOne<ObjectBoxRange>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
}

@Entity()
class ObjectBoxEvidenceVariableCategory {
  ObjectBoxEvidenceVariableCategory({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.name,
    ObjectBoxElement? nameElement,
    ObjectBoxCodeableConcept? valueCodeableConcept,
    ObjectBoxQuantity? valueQuantity,
    ObjectBoxRange? valueRange,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.valueCodeableConcept.target = valueCodeableConcept;
    this.valueQuantity.target = valueQuantity;
    this.valueRange.target = valueRange;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> valueCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxQuantity> valueQuantity = ToOne<ObjectBoxQuantity>();
  ToOne<ObjectBoxRange> valueRange = ToOne<ObjectBoxRange>();
}

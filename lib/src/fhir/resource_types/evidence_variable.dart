import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class EvidenceVariable extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirString? shortTitle;
  final Element? shortTitleElement;
  final FhirString? subtitle;
  final Element? subtitleElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<Annotation>? note;
  final List<UsageContext>? useContext;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final List<ContactDetail>? author;
  final List<ContactDetail>? editor;
  final List<ContactDetail>? reviewer;
  final List<ContactDetail>? endorser;
  final List<RelatedArtifact>? relatedArtifact;
  final FhirBoolean? actual;
  final Element? actualElement;
  final FhirCode? characteristicCombination;
  final Element? characteristicCombinationElement;
  final List<BackboneElement>? characteristic;
  final BackboneElement? timeFromStart;
  final FhirCode? handling;
  final Element? handlingElement;
  final List<BackboneElement>? category;

  EvidenceVariable({
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
    this.shortTitle,
this.shortTitleElement,
    this.subtitle,
this.subtitleElement,
    required this.status,
this.statusElement,
    this.date,
this.dateElement,
    this.description,
this.descriptionElement,
    this.note,
    this.useContext,
    this.publisher,
this.publisherElement,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.actual,
this.actualElement,
    this.characteristicCombination,
this.characteristicCombinationElement,
    this.characteristic,
    this.timeFromStart,
    this.handling,
this.handlingElement,
    this.category,
  }) : super(resourceType: R4ResourceType.EvidenceVariable);

@override
EvidenceVariable clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EvidenceVariableCharacteristic extends BackboneElement {
  final FhirString? description;
  final Element? descriptionElement;
  final Reference definitionReference;
  final FhirCanonical definitionFhirCanonical;
  final Element? definitionFhirCanonicalElement;
  final CodeableConcept definitionCodeableConcept;
  final FhirExpression definitionFhirExpression;
  final CodeableConcept? method;
  final Reference? device;
  final FhirBoolean? exclude;
  final Element? excludeElement;
  final FhirCode? groupMeasure;
  final Element? groupMeasureElement;

  EvidenceVariableCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
this.descriptionElement,
    required this.definitionReference,
    required this.definitionFhirCanonical,
this.definitionFhirCanonicalElement,
    required this.definitionCodeableConcept,
    required this.definitionFhirExpression,
    this.method,
    this.device,
    this.exclude,
this.excludeElement,
    this.groupMeasure,
this.groupMeasureElement,
  });

@override
EvidenceVariableCharacteristic clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EvidenceVariableTimeFromStart extends BackboneElement {
  final FhirString? description;
  final Element? descriptionElement;
  final Quantity? quantity;
  final Range? range;
  final List<Annotation>? note;

  EvidenceVariableTimeFromStart({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
this.descriptionElement,
    this.quantity,
    this.range,
    this.note,
  });

@override
EvidenceVariableTimeFromStart clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class EvidenceVariableCategory extends BackboneElement {
  final FhirString? name;
  final Element? nameElement;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final Range? valueRange;

  EvidenceVariableCategory({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
this.nameElement,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueRange,
  });

@override
EvidenceVariableCategory clone() => throw UnimplementedError();
}


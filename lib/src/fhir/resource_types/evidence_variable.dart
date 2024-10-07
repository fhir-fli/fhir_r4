import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class EvidenceVariable extends DomainResource {
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
    this.handling,
    this.handlingElement,
    this.category,
  }) : super(resourceType: R4ResourceType.EvidenceVariable);

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
  final List<EvidenceVariableCharacteristic>? characteristic;
  final FhirCode? handling;
  final Element? handlingElement;
  final List<EvidenceVariableCategory>? category;
  @override
  EvidenceVariable clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceVariableCharacteristic extends BackboneElement {
  EvidenceVariableCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    required this.definitionReference,
    required this.definitionCanonical,
    this.definitionCanonicalElement,
    required this.definitionCodeableConcept,
    required this.definitionExpression,
    this.method,
    this.device,
    this.exclude,
    this.excludeElement,
    this.timeFromStart,
    this.groupMeasure,
    this.groupMeasureElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? description;
  final Element? descriptionElement;
  final Reference definitionReference;
  final FhirCanonical definitionCanonical;
  final Element? definitionCanonicalElement;
  final CodeableConcept definitionCodeableConcept;
  final FhirExpression definitionExpression;
  final CodeableConcept? method;
  final Reference? device;
  final FhirBoolean? exclude;
  final Element? excludeElement;
  final EvidenceVariableTimeFromStart? timeFromStart;
  final FhirCode? groupMeasure;
  final Element? groupMeasureElement;
  @override
  EvidenceVariableCharacteristic clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceVariableTimeFromStart extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? description;
  final Element? descriptionElement;
  final Quantity? quantity;
  final Range? range;
  final List<Annotation>? note;
  @override
  EvidenceVariableTimeFromStart clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceVariableCategory extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? name;
  final Element? nameElement;
  final CodeableConcept? valueCodeableConcept;
  final Quantity? valueQuantity;
  final Range? valueRange;
  @override
  EvidenceVariableCategory clone() => throw UnimplementedError();
}

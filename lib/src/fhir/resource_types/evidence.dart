import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Evidence extends DomainResource {
  Evidence({
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
    this.title,
    this.titleElement,
    this.citeAsReference,
    this.citeAsMarkdown,
    this.citeAsMarkdownElement,
    required this.status,
    this.statusElement,
    this.date,
    this.dateElement,
    this.useContext,
    this.approvalDate,
    this.approvalDateElement,
    this.lastReviewDate,
    this.lastReviewDateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.author,
    this.editor,
    this.reviewer,
    this.endorser,
    this.relatedArtifact,
    this.description,
    this.descriptionElement,
    this.assertion,
    this.assertionElement,
    this.note,
    required this.variableDefinition,
    this.synthesisType,
    this.studyType,
    this.statistic,
    this.certainty,
  }) : super(resourceType: R4ResourceType.Evidence);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? title;
  final Element? titleElement;
  final Reference? citeAsReference;
  final FhirMarkdown? citeAsMarkdown;
  final Element? citeAsMarkdownElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final List<UsageContext>? useContext;
  final FhirDate? approvalDate;
  final Element? approvalDateElement;
  final FhirDate? lastReviewDate;
  final Element? lastReviewDateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final List<ContactDetail>? author;
  final List<ContactDetail>? editor;
  final List<ContactDetail>? reviewer;
  final List<ContactDetail>? endorser;
  final List<RelatedArtifact>? relatedArtifact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final FhirMarkdown? assertion;
  final Element? assertionElement;
  final List<Annotation>? note;
  final List<EvidenceVariableDefinition> variableDefinition;
  final CodeableConcept? synthesisType;
  final CodeableConcept? studyType;
  final List<EvidenceStatistic>? statistic;
  final List<EvidenceCertainty>? certainty;
  @override
  Evidence clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceVariableDefinition extends BackboneElement {
  EvidenceVariableDefinition({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    required this.variableRole,
    this.observed,
    this.intended,
    this.directnessMatch,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<Annotation>? note;
  final CodeableConcept variableRole;
  final Reference? observed;
  final Reference? intended;
  final CodeableConcept? directnessMatch;
  @override
  EvidenceVariableDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceStatistic extends BackboneElement {
  EvidenceStatistic({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.statisticType,
    this.category,
    this.quantity,
    this.numberOfEvents,
    this.numberOfEventsElement,
    this.numberAffected,
    this.numberAffectedElement,
    this.sampleSize,
    this.attributeEstimate,
    this.modelCharacteristic,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? description;
  final Element? descriptionElement;
  final List<Annotation>? note;
  final CodeableConcept? statisticType;
  final CodeableConcept? category;
  final Quantity? quantity;
  final FhirUnsignedInt? numberOfEvents;
  final Element? numberOfEventsElement;
  final FhirUnsignedInt? numberAffected;
  final Element? numberAffectedElement;
  final EvidenceSampleSize? sampleSize;
  final List<EvidenceAttributeEstimate>? attributeEstimate;
  final List<EvidenceModelCharacteristic>? modelCharacteristic;
  @override
  EvidenceStatistic clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceSampleSize extends BackboneElement {
  EvidenceSampleSize({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.numberOfStudies,
    this.numberOfStudiesElement,
    this.numberOfParticipants,
    this.numberOfParticipantsElement,
    this.knownDataCount,
    this.knownDataCountElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? description;
  final Element? descriptionElement;
  final List<Annotation>? note;
  final FhirUnsignedInt? numberOfStudies;
  final Element? numberOfStudiesElement;
  final FhirUnsignedInt? numberOfParticipants;
  final Element? numberOfParticipantsElement;
  final FhirUnsignedInt? knownDataCount;
  final Element? knownDataCountElement;
  @override
  EvidenceSampleSize clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceAttributeEstimate extends BackboneElement {
  EvidenceAttributeEstimate({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.type,
    this.quantity,
    this.level,
    this.levelElement,
    this.range,
    this.attributeEstimate,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? description;
  final Element? descriptionElement;
  final List<Annotation>? note;
  final CodeableConcept? type;
  final Quantity? quantity;
  final FhirDecimal? level;
  final Element? levelElement;
  final Range? range;
  final List<EvidenceAttributeEstimate>? attributeEstimate;
  @override
  EvidenceAttributeEstimate clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceModelCharacteristic extends BackboneElement {
  EvidenceModelCharacteristic({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.value,
    this.variable,
    this.attributeEstimate,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept code;
  final Quantity? value;
  final List<EvidenceVariable>? variable;
  final List<EvidenceAttributeEstimate>? attributeEstimate;
  @override
  EvidenceModelCharacteristic clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class Evidencevariable extends BackboneElement {
  Evidencevariable({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.variableDefinition,
    this.handling,
    this.handlingElement,
    this.valueCategory,
    this.valueQuantity,
    this.valueRange,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Reference variableDefinition;
  final FhirCode? handling;
  final Element? handlingElement;
  final List<CodeableConcept>? valueCategory;
  final List<Quantity>? valueQuantity;
  final List<Range>? valueRange;
  @override
  Evidencevariable clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class EvidenceCertainty extends BackboneElement {
  EvidenceCertainty({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.description,
    this.descriptionElement,
    this.note,
    this.type,
    this.rating,
    this.rater,
    this.raterElement,
    this.subcomponent,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? description;
  final Element? descriptionElement;
  final List<Annotation>? note;
  final CodeableConcept? type;
  final CodeableConcept? rating;
  final FhirString? rater;
  final Element? raterElement;
  final List<EvidenceCertainty>? subcomponent;
  @override
  EvidenceCertainty clone() => throw UnimplementedError();
}

import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Composition extends DomainResource {
  Composition({
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
    this.identifier,
    required this.status,
    this.statusElement,
    required this.type,
    this.category,
    this.subject,
    this.encounter,
    required this.date,
    this.dateElement,
    required this.author,
    required this.title,
    this.titleElement,
    this.confidentiality,
    this.confidentialityElement,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section,
  }) : super(resourceType: R4ResourceType.Composition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Identifier? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept type;
  final List<CodeableConcept>? category;
  final Reference? subject;
  final Reference? encounter;
  final FhirDateTime date;
  final Element? dateElement;
  final List<Reference> author;
  final FhirString title;
  final Element? titleElement;
  final FhirCode? confidentiality;
  final Element? confidentialityElement;
  final List<CompositionAttester>? attester;
  final Reference? custodian;
  final List<CompositionRelatesTo>? relatesTo;
  final List<CompositionEvent>? event;
  final List<CompositionSection>? section;
  @override
  Composition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CompositionAttester extends BackboneElement {
  CompositionAttester({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    this.time,
    this.timeElement,
    this.party,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode mode;
  final Element? modeElement;
  final FhirDateTime? time;
  final Element? timeElement;
  final Reference? party;
  @override
  CompositionAttester clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CompositionRelatesTo extends BackboneElement {
  CompositionRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.targetIdentifier,
    required this.targetReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode code;
  final Element? codeElement;
  final Identifier targetIdentifier;
  final Reference targetReference;
  @override
  CompositionRelatesTo clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CompositionEvent extends BackboneElement {
  CompositionEvent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.period,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<CodeableConcept>? code;
  final Period? period;
  final List<Reference>? detail;
  @override
  CompositionEvent clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class CompositionSection extends BackboneElement {
  CompositionSection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.titleElement,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.modeElement,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString? title;
  final Element? titleElement;
  final CodeableConcept? code;
  final List<Reference>? author;
  final Reference? focus;
  final Narrative? text;
  final FhirCode? mode;
  final Element? modeElement;
  final CodeableConcept? orderedBy;
  final List<Reference>? entry;
  final CodeableConcept? emptyReason;
  final List<CompositionSection>? section;
  @override
  CompositionSection clone() => throw UnimplementedError();
}

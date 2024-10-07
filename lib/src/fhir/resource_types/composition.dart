import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Composition extends DomainResource {
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
  final List<BackboneElement>? attester;
  final Reference? custodian;
  final List<BackboneElement>? relatesTo;
  final List<BackboneElement>? event;
  final List<BackboneElement>? section;

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

@override
Composition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CompositionAttester extends BackboneElement {
  final FhirCode mode;
  final Element? modeElement;
  final FhirDateTime? time;
  final Element? timeElement;
  final Reference? party;

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

@override
CompositionAttester clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CompositionRelatesTo extends BackboneElement {
  final FhirCode code;
  final Element? codeElement;
  final Identifier targetIdentifier;
  final Reference targetReference;

  CompositionRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
this.codeElement,
    required this.targetIdentifier,
    required this.targetReference,
  });

@override
CompositionRelatesTo clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CompositionEvent extends BackboneElement {
  final List<CodeableConcept>? code;
  final Period? period;
  final List<Reference>? detail;

  CompositionEvent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.period,
    this.detail,
  });

@override
CompositionEvent clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class CompositionSection extends BackboneElement {
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
  final List<dynamic>? section;

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

@override
CompositionSection clone() => throw UnimplementedError();
}


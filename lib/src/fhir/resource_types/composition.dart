import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Composition extends DomainResource {
  final Identifier? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final CodeableConcept type;
  final List<CodeableConcept>? category;
  final Reference? subject;
  final Reference? encounter;
  final FhirDateTime? date;
  final Element? dateElement;
  final List<Reference> author;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode? confidentiality;
  final Element? confidentialityElement;
  final List<CompositionAttester>? attester;
  final Reference? custodian;
  final List<CompositionRelatesTo>? relatesTo;
  final List<CompositionEvent>? event;
  final List<CompositionSection>? section;

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
    this.status,
    this.statusElement,
    required this.type,
    this.category,
    this.subject,
    this.encounter,
    this.date,
    this.dateElement,
    required this.author,
    this.title,
    this.titleElement,
    this.confidentiality,
    this.confidentialityElement,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section,
  }): super(resourceType: R4ResourceType.Composition);

@override
Composition clone() => this;

}


@Data()
@JsonCodable()
class CompositionAttester {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? mode;
  final Element? modeElement;
  final FhirDateTime? time;
  final Element? timeElement;
  final Reference? party;

  CompositionAttester({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.mode,
    this.modeElement,
    this.time,
    this.timeElement,
    this.party,
  });

}


@Data()
@JsonCodable()
class CompositionRelatesTo {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final Identifier? targetIdentifier;
  final Reference? targetReference;

  CompositionRelatesTo({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.targetIdentifier,
    this.targetReference,
  });

}


@Data()
@JsonCodable()
class CompositionEvent {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<CodeableConcept>? code;
  final Period? period;
  final List<Reference>? detail;

  CompositionEvent({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.period,
    this.detail,
  });

}


@Data()
@JsonCodable()
class CompositionSection {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
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

  CompositionSection({
    this.id,
    this.extension_,
    this.modifierExtension,
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

}




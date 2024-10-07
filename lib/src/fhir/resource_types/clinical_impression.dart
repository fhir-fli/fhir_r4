import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ClinicalImpression extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? statusReason;
  final CodeableConcept? code;
  final FhirString? description;
  final Element? descriptionElement;
  final Reference subject;
  final Reference? encounter;
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;
  final Period? effectivePeriod;
  final FhirDateTime? date;
  final Element? dateElement;
  final Reference? assessor;
  final Reference? previous;
  final List<Reference>? problem;
  final List<ClinicalImpressionInvestigation>? investigation;
  final List<FhirUri>? protocol;
  final List<Element>? protocolElement;
  final FhirString? summary;
  final Element? summaryElement;
  final List<ClinicalImpressionFinding>? finding;
  final List<CodeableConcept>? prognosisCodeableConcept;
  final List<Reference>? prognosisReference;
  final List<Reference>? supportingInfo;
  final List<Annotation>? note;

  ClinicalImpression({
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
    this.statusReason,
    this.code,
    this.description,
this.descriptionElement,
    required this.subject,
    this.encounter,
    this.effectiveDateTime,
this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.date,
this.dateElement,
    this.assessor,
    this.previous,
    this.problem,
    this.investigation,
    this.protocol,
this.protocolElement,
    this.summary,
this.summaryElement,
    this.finding,
    this.prognosisCodeableConcept,
    this.prognosisReference,
    this.supportingInfo,
    this.note,
  }) : super(resourceType: R4ResourceType.ClinicalImpression);

@override
ClinicalImpression clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClinicalImpressionInvestigation extends BackboneElement {
  final CodeableConcept code;
  final List<Reference>? item;

  ClinicalImpressionInvestigation({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.item,
  });

@override
ClinicalImpressionInvestigation clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ClinicalImpressionFinding extends BackboneElement {
  final CodeableConcept? itemCodeableConcept;
  final Reference? itemReference;
  final FhirString? basis;
  final Element? basisElement;

  ClinicalImpressionFinding({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.itemCodeableConcept,
    this.itemReference,
    this.basis,
this.basisElement,
  });

@override
ClinicalImpressionFinding clone() => throw UnimplementedError();
}


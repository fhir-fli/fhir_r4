import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Condition extends DomainResource {
  final List<Identifier>? identifier;
  final CodeableConcept? clinicalStatus;
  final CodeableConcept? verificationStatus;
  final List<CodeableConcept>? category;
  final CodeableConcept? severity;
  final CodeableConcept? code;
  final List<CodeableConcept>? bodySite;
  final Reference subject;
  final Reference? encounter;
  final FhirDateTime? onsetFhirDateTime;
  final Element? onsetFhirDateTimeElement;
  final Age? onsetAge;
  final Period? onsetPeriod;
  final Range? onsetRange;
  final FhirString? onsetFhirString;
  final Element? onsetFhirStringElement;
  final FhirDateTime? abatementFhirDateTime;
  final Element? abatementFhirDateTimeElement;
  final Age? abatementAge;
  final Period? abatementPeriod;
  final Range? abatementRange;
  final FhirString? abatementFhirString;
  final Element? abatementFhirStringElement;
  final FhirDateTime? recordedDate;
  final Element? recordedDateElement;
  final Reference? recorder;
  final Reference? asserter;
  final List<BackboneElement>? stage;
  final List<BackboneElement>? evidence;
  final List<Annotation>? note;

  Condition({
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
    this.clinicalStatus,
    this.verificationStatus,
    this.category,
    this.severity,
    this.code,
    this.bodySite,
    required this.subject,
    this.encounter,
    this.onsetFhirDateTime,
this.onsetFhirDateTimeElement,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetFhirString,
this.onsetFhirStringElement,
    this.abatementFhirDateTime,
this.abatementFhirDateTimeElement,
    this.abatementAge,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementFhirString,
this.abatementFhirStringElement,
    this.recordedDate,
this.recordedDateElement,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
    this.note,
  }) : super(resourceType: R4ResourceType.Condition);

@override
Condition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConditionStage extends BackboneElement {
  final CodeableConcept? summary;
  final List<Reference>? assessment;
  final CodeableConcept? type;

  ConditionStage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.summary,
    this.assessment,
    this.type,
  });

@override
ConditionStage clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConditionEvidence extends BackboneElement {
  final List<CodeableConcept>? code;
  final List<Reference>? detail;

  ConditionEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
  });

@override
ConditionEvidence clone() => throw UnimplementedError();
}


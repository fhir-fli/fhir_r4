import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Condition extends DomainResource {
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
    this.onsetDateTime,
    this.onsetDateTimeElement,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.onsetStringElement,
    this.abatementDateTime,
    this.abatementDateTimeElement,
    this.abatementAge,
    this.abatementPeriod,
    this.abatementRange,
    this.abatementString,
    this.abatementStringElement,
    this.recordedDate,
    this.recordedDateElement,
    this.recorder,
    this.asserter,
    this.stage,
    this.evidence,
    this.note,
  }) : super(resourceType: R4ResourceType.Condition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final CodeableConcept? clinicalStatus;
  final CodeableConcept? verificationStatus;
  final List<CodeableConcept>? category;
  final CodeableConcept? severity;
  final CodeableConcept? code;
  final List<CodeableConcept>? bodySite;
  final Reference subject;
  final Reference? encounter;
  final FhirDateTime? onsetDateTime;
  final Element? onsetDateTimeElement;
  final Age? onsetAge;
  final Period? onsetPeriod;
  final Range? onsetRange;
  final FhirString? onsetString;
  final Element? onsetStringElement;
  final FhirDateTime? abatementDateTime;
  final Element? abatementDateTimeElement;
  final Age? abatementAge;
  final Period? abatementPeriod;
  final Range? abatementRange;
  final FhirString? abatementString;
  final Element? abatementStringElement;
  final FhirDateTime? recordedDate;
  final Element? recordedDateElement;
  final Reference? recorder;
  final Reference? asserter;
  final List<ConditionStage>? stage;
  final List<ConditionEvidence>? evidence;
  final List<Annotation>? note;
  @override
  Condition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ConditionStage extends BackboneElement {
  ConditionStage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.summary,
    this.assessment,
    this.type,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? summary;
  final List<Reference>? assessment;
  final CodeableConcept? type;
  @override
  ConditionStage clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class ConditionEvidence extends BackboneElement {
  ConditionEvidence({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<CodeableConcept>? code;
  final List<Reference>? detail;
  @override
  ConditionEvidence clone() => throw UnimplementedError();
}

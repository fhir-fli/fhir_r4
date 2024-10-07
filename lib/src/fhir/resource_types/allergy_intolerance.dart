import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class AllergyIntolerance extends DomainResource {
  AllergyIntolerance({
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
    this.type,
    this.typeElement,
    this.category,
    this.categoryElement,
    this.criticality,
    this.criticalityElement,
    this.code,
    required this.patient,
    this.encounter,
    this.onsetDateTime,
    this.onsetDateTimeElement,
    this.onsetAge,
    this.onsetPeriod,
    this.onsetRange,
    this.onsetString,
    this.onsetStringElement,
    this.recordedDate,
    this.recordedDateElement,
    this.recorder,
    this.asserter,
    this.lastOccurrence,
    this.lastOccurrenceElement,
    this.note,
    this.reaction,
  }) : super(resourceType: R4ResourceType.AllergyIntolerance);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final CodeableConcept? clinicalStatus;
  final CodeableConcept? verificationStatus;
  final FhirCode? type;
  final Element? typeElement;
  final List<FhirCode>? category;
  final List<Element>? categoryElement;
  final FhirCode? criticality;
  final Element? criticalityElement;
  final CodeableConcept? code;
  final Reference patient;
  final Reference? encounter;
  final FhirDateTime? onsetDateTime;
  final Element? onsetDateTimeElement;
  final Age? onsetAge;
  final Period? onsetPeriod;
  final Range? onsetRange;
  final FhirString? onsetString;
  final Element? onsetStringElement;
  final FhirDateTime? recordedDate;
  final Element? recordedDateElement;
  final Reference? recorder;
  final Reference? asserter;
  final FhirDateTime? lastOccurrence;
  final Element? lastOccurrenceElement;
  final List<Annotation>? note;
  final List<AllergyIntoleranceReaction>? reaction;
  @override
  AllergyIntolerance clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class AllergyIntoleranceReaction extends BackboneElement {
  AllergyIntoleranceReaction({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    required this.manifestation,
    this.description,
    this.descriptionElement,
    this.onset,
    this.onsetElement,
    this.severity,
    this.severityElement,
    this.exposureRoute,
    this.note,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept? substance;
  final List<CodeableConcept> manifestation;
  final FhirString? description;
  final Element? descriptionElement;
  final FhirDateTime? onset;
  final Element? onsetElement;
  final FhirCode? severity;
  final Element? severityElement;
  final CodeableConcept? exposureRoute;
  final List<Annotation>? note;
  @override
  AllergyIntoleranceReaction clone() => throw UnimplementedError();
}

import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class FamilyMemberHistory extends DomainResource {
  FamilyMemberHistory({
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
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    required this.status,
    this.statusElement,
    this.dataAbsentReason,
    required this.patient,
    this.date,
    this.dateElement,
    this.name,
    this.nameElement,
    required this.relationship,
    this.sex,
    this.bornPeriod,
    this.bornDate,
    this.bornDateElement,
    this.bornString,
    this.bornStringElement,
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.ageStringElement,
    this.estimatedAge,
    this.estimatedAgeElement,
    this.deceasedBoolean,
    this.deceasedBooleanElement,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedDate,
    this.deceasedDateElement,
    this.deceasedString,
    this.deceasedStringElement,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition,
  }) : super(resourceType: R4ResourceType.FamilyMemberHistory);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final List<FhirCanonical>? instantiatesCanonical;
  final List<Element>? instantiatesCanonicalElement;
  final List<FhirUri>? instantiatesUri;
  final List<Element>? instantiatesUriElement;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? dataAbsentReason;
  final Reference patient;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? name;
  final Element? nameElement;
  final CodeableConcept relationship;
  final CodeableConcept? sex;
  final Period? bornPeriod;
  final FhirDate? bornDate;
  final Element? bornDateElement;
  final FhirString? bornString;
  final Element? bornStringElement;
  final Age? ageAge;
  final Range? ageRange;
  final FhirString? ageString;
  final Element? ageStringElement;
  final FhirBoolean? estimatedAge;
  final Element? estimatedAgeElement;
  final FhirBoolean? deceasedBoolean;
  final Element? deceasedBooleanElement;
  final Age? deceasedAge;
  final Range? deceasedRange;
  final FhirDate? deceasedDate;
  final Element? deceasedDateElement;
  final FhirString? deceasedString;
  final Element? deceasedStringElement;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Annotation>? note;
  final List<FamilyMemberHistoryCondition>? condition;
  @override
  FamilyMemberHistory clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class FamilyMemberHistoryCondition extends BackboneElement {
  FamilyMemberHistoryCondition({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.outcome,
    this.contributedToDeath,
    this.contributedToDeathElement,
    this.onsetAge,
    this.onsetRange,
    this.onsetPeriod,
    this.onsetString,
    this.onsetStringElement,
    this.note,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final CodeableConcept code;
  final CodeableConcept? outcome;
  final FhirBoolean? contributedToDeath;
  final Element? contributedToDeathElement;
  final Age? onsetAge;
  final Range? onsetRange;
  final Period? onsetPeriod;
  final FhirString? onsetString;
  final Element? onsetStringElement;
  final List<Annotation>? note;
  @override
  FamilyMemberHistoryCondition clone() => throw UnimplementedError();
}

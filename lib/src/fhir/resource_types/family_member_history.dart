import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class FamilyMemberHistory extends DomainResource {
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
  final FhirDate? bornFhirDate;
  final Element? bornFhirDateElement;
  final FhirString? bornFhirString;
  final Element? bornFhirStringElement;
  final Age? ageAge;
  final Range? ageRange;
  final FhirString? ageFhirString;
  final Element? ageFhirStringElement;
  final FhirBoolean? estimatedAge;
  final Element? estimatedAgeElement;
  final FhirBoolean? deceasedFhirBoolean;
  final Element? deceasedFhirBooleanElement;
  final Age? deceasedAge;
  final Range? deceasedRange;
  final FhirDate? deceasedFhirDate;
  final Element? deceasedFhirDateElement;
  final FhirString? deceasedFhirString;
  final Element? deceasedFhirStringElement;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Annotation>? note;
  final List<BackboneElement>? condition;

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
    this.bornFhirDate,
this.bornFhirDateElement,
    this.bornFhirString,
this.bornFhirStringElement,
    this.ageAge,
    this.ageRange,
    this.ageFhirString,
this.ageFhirStringElement,
    this.estimatedAge,
this.estimatedAgeElement,
    this.deceasedFhirBoolean,
this.deceasedFhirBooleanElement,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedFhirDate,
this.deceasedFhirDateElement,
    this.deceasedFhirString,
this.deceasedFhirStringElement,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition,
  }) : super(resourceType: R4ResourceType.FamilyMemberHistory);

@override
FamilyMemberHistory clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class FamilyMemberHistoryCondition extends BackboneElement {
  final CodeableConcept code;
  final CodeableConcept? outcome;
  final FhirBoolean? contributedToDeath;
  final Element? contributedToDeathElement;
  final Age? onsetAge;
  final Range? onsetRange;
  final Period? onsetPeriod;
  final FhirString? onsetFhirString;
  final Element? onsetFhirStringElement;
  final List<Annotation>? note;

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
    this.onsetFhirString,
this.onsetFhirStringElement,
    this.note,
  });

@override
FamilyMemberHistoryCondition clone() => throw UnimplementedError();
}


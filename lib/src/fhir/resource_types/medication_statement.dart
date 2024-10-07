import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MedicationStatement extends DomainResource {
  final List<Identifier>? identifier;
  final List<Reference>? basedOn;
  final List<Reference>? partOf;
  final FhirCode status;
  final Element? statusElement;
  final List<CodeableConcept>? statusReason;
  final CodeableConcept? category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference? context;
  final FhirDateTime? effectiveDateTime;
  final Element? effectiveDateTimeElement;
  final Period? effectivePeriod;
  final FhirDateTime? dateAsserted;
  final Element? dateAssertedElement;
  final Reference? informationSource;
  final List<Reference>? derivedFrom;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final List<Annotation>? note;
  final List<Dosage>? dosage;

  MedicationStatement({
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
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    required this.subject,
    this.context,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.dateAsserted,
    this.dateAssertedElement,
    this.informationSource,
    this.derivedFrom,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.dosage,
  }) : super(resourceType: R4ResourceType.MedicationStatement);

  @override
  MedicationStatement clone() => throw UnimplementedError();
}

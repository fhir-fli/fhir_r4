import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class MedicationAdministration extends DomainResource {
  MedicationAdministration({
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
    this.instantiates,
    this.instantiatesElement,
    this.partOf,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    required this.subject,
    this.context,
    this.supportingInformation,
    required this.effectiveDateTime,
    this.effectiveDateTimeElement,
    required this.effectivePeriod,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory,
  }) : super(resourceType: R4ResourceType.MedicationAdministration);

  final List<Identifier>? identifier;
  final List<FhirUri>? instantiates;
  final List<Element>? instantiatesElement;
  final List<Reference>? partOf;
  final FhirCode status;
  final Element? statusElement;
  final List<CodeableConcept>? statusReason;
  final CodeableConcept? category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference? context;
  final List<Reference>? supportingInformation;
  final FhirDateTime effectiveDateTime;
  final Element? effectiveDateTimeElement;
  final Period effectivePeriod;
  final List<MedicationAdministrationPerformer>? performer;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final Reference? request;
  final List<Reference>? device;
  final List<Annotation>? note;
  final MedicationAdministrationDosage? dosage;
  final List<Reference>? eventHistory;
  @override
  MedicationAdministration clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MedicationAdministrationPerformer extends BackboneElement {
  MedicationAdministrationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
  });

  final CodeableConcept? function_;
  final Reference actor;
  @override
  MedicationAdministrationPerformer clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MedicationAdministrationDosage extends BackboneElement {
  MedicationAdministrationDosage({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.text,
    this.textElement,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateRatio,
    this.rateQuantity,
  });

  final FhirString? text;
  final Element? textElement;
  final CodeableConcept? site;
  final CodeableConcept? route;
  final CodeableConcept? method;
  final Quantity? dose;
  final Ratio? rateRatio;
  final Quantity? rateQuantity;
  @override
  MedicationAdministrationDosage clone() => throw UnimplementedError();
}

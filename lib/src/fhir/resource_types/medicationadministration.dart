import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MedicationAdministration extends DomainResource {
  final List<Identifier>? identifier;
  final List<FhirUri>? instantiates;
  final List<Element>? instantiatesElement;
  final List<Reference>? partOf;
  final FhirCode? status;
  final Element? statusElement;
  final List<CodeableConcept>? statusReason;
  final CodeableConcept? category;
  final CodeableConcept? medicationCodeableConcept;
  final Reference? medicationReference;
  final Reference subject;
  final Reference? context;
  final List<Reference>? supportingInformation;
  final FhirString? effectiveDateTime;
  final Element? effectiveDateTimeElement;
  final Period? effectivePeriod;
  final List<MedicationAdministrationPerformer>? performer;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final Reference? request;
  final List<Reference>? device;
  final List<Annotation>? note;
  final MedicationAdministrationDosage? dosage;
  final List<Reference>? eventHistory;

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
    this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    this.medicationCodeableConcept,
    this.medicationReference,
    required this.subject,
    this.context,
    this.supportingInformation,
    this.effectiveDateTime,
    this.effectiveDateTimeElement,
    this.effectivePeriod,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.request,
    this.device,
    this.note,
    this.dosage,
    this.eventHistory,
  }): super(resourceType: R4ResourceType.MedicationAdministration);

@override
MedicationAdministration clone() => this;

}


@Data()
@JsonCodable()
class MedicationAdministrationPerformer {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final CodeableConcept? function_;
  final Reference actor;

  MedicationAdministrationPerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
  });

}


@Data()
@JsonCodable()
class MedicationAdministrationDosage {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? text;
  final Element? textElement;
  final CodeableConcept? site;
  final CodeableConcept? route;
  final CodeableConcept? method;
  final Quantity? dose;
  final Ratio? rateRatio;
  final Quantity? rateQuantity;

  MedicationAdministrationDosage({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.text,
    this.textElement,
    this.site,
    this.route,
    this.method,
    this.dose,
    this.rateRatio,
    this.rateQuantity,
  });

}




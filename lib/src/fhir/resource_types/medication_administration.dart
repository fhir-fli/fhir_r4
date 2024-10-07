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
  final FhirCode status;
  final Element? statusElement;
  final List<CodeableConcept>? statusReason;
  final CodeableConcept? category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference subject;
  final Reference? context;
  final List<Reference>? supportingInformation;
  final FhirDateTime effectiveFhirDateTime;
  final Element? effectiveFhirDateTimeElement;
  final Period effectivePeriod;
  final List<BackboneElement>? performer;
  final List<CodeableConcept>? reasonCode;
  final List<Reference>? reasonReference;
  final Reference? request;
  final List<Reference>? device;
  final List<Annotation>? note;
  final BackboneElement? dosage;
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
    required this.status,
this.statusElement,
    this.statusReason,
    this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    required this.subject,
    this.context,
    this.supportingInformation,
    required this.effectiveFhirDateTime,
this.effectiveFhirDateTimeElement,
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

@override
MedicationAdministration clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationAdministrationPerformer extends BackboneElement {
  final CodeableConcept? function_;
  final Reference actor;

  MedicationAdministrationPerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
  });

@override
MedicationAdministrationPerformer clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationAdministrationDosage extends BackboneElement {
  final FhirString? text;
  final Element? textElement;
  final CodeableConcept? site;
  final CodeableConcept? route;
  final CodeableConcept? method;
  final Quantity? dose;
  final Ratio? rateRatio;
  final Quantity? rateQuantity;

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

@override
MedicationAdministrationDosage clone() => throw UnimplementedError();
}


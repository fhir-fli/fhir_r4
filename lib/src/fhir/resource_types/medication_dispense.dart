import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MedicationDispense extends DomainResource {
  final List<Identifier>? identifier;
  final List<Reference>? partOf;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? statusReasonCodeableConcept;
  final Reference? statusReasonReference;
  final CodeableConcept? category;
  final CodeableConcept medicationCodeableConcept;
  final Reference medicationReference;
  final Reference? subject;
  final Reference? context;
  final List<Reference>? supportingInformation;
  final List<MedicationDispensePerformer>? performer;
  final Reference? location;
  final List<Reference>? authorizingPrescription;
  final CodeableConcept? type;
  final Quantity? quantity;
  final Quantity? daysSupply;
  final FhirDateTime? whenPrepared;
  final Element? whenPreparedElement;
  final FhirDateTime? whenHandedOver;
  final Element? whenHandedOverElement;
  final Reference? destination;
  final List<Reference>? receiver;
  final List<Annotation>? note;
  final List<Dosage>? dosageInstruction;
  final MedicationDispenseSubstitution? substitution;
  final List<Reference>? detectedIssue;
  final List<Reference>? eventHistory;

  MedicationDispense({
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
    this.partOf,
    required this.status,
this.statusElement,
    this.statusReasonCodeableConcept,
    this.statusReasonReference,
    this.category,
    required this.medicationCodeableConcept,
    required this.medicationReference,
    this.subject,
    this.context,
    this.supportingInformation,
    this.performer,
    this.location,
    this.authorizingPrescription,
    this.type,
    this.quantity,
    this.daysSupply,
    this.whenPrepared,
this.whenPreparedElement,
    this.whenHandedOver,
this.whenHandedOverElement,
    this.destination,
    this.receiver,
    this.note,
    this.dosageInstruction,
    this.substitution,
    this.detectedIssue,
    this.eventHistory,
  }) : super(resourceType: R4ResourceType.MedicationDispense);

@override
MedicationDispense clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationDispensePerformer extends BackboneElement {
  final CodeableConcept? function_;
  final Reference actor;

  MedicationDispensePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
  });

@override
MedicationDispensePerformer clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class MedicationDispenseSubstitution extends BackboneElement {
  final FhirBoolean wasSubstituted;
  final Element? wasSubstitutedElement;
  final CodeableConcept? type;
  final List<CodeableConcept>? reason;
  final List<Reference>? responsibleParty;

  MedicationDispenseSubstitution({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.wasSubstituted,
this.wasSubstitutedElement,
    this.type,
    this.reason,
    this.responsibleParty,
  });

@override
MedicationDispenseSubstitution clone() => throw UnimplementedError();
}


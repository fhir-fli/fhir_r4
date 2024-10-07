import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class MedicationDispense extends DomainResource {
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
  @override
  MedicationDispense clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MedicationDispensePerformer extends BackboneElement {
  MedicationDispensePerformer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.function_,
    required this.actor,
  });

  final CodeableConcept? function_;
  final Reference actor;
  @override
  MedicationDispensePerformer clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MedicationDispenseSubstitution extends BackboneElement {
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

  final FhirBoolean wasSubstituted;
  final Element? wasSubstitutedElement;
  final CodeableConcept? type;
  final List<CodeableConcept>? reason;
  final List<Reference>? responsibleParty;
  @override
  MedicationDispenseSubstitution clone() => throw UnimplementedError();
}

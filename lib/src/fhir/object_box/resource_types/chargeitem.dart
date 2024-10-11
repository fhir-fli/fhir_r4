import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class ChargeItem extends Resource {
  ChargeItem({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.definitionUri,
    this.definitionCanonical,
    required this.status,
    this.partOf,
    required this.code,
    required this.subject,
    this.context,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.priceOverride,
    this.overrideReason,
    this.enterer,
    this.enteredDate,
    this.reason,
    this.service,
    this.productReference,
    this.productCodeableConcept,
    this.account,
    this.note,
    this.supportingInformation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  List<String>? definitionUri;
  List<String>? definitionCanonical;
  String status;
  ToMany<Reference>? partOf = ToMany<Reference>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? context = ToOne<Reference>();
  String? occurrenceDateTime;
  ToOne<Period>? occurrencePeriod = ToOne<Period>();
  ToOne<Timing>? occurrenceTiming = ToOne<Timing>();
  ToMany<ChargeItemPerformer>? performer = ToMany<ChargeItemPerformer>();
  ToOne<Reference>? performingOrganization = ToOne<Reference>();
  ToOne<Reference>? requestingOrganization = ToOne<Reference>();
  ToOne<Reference>? costCenter = ToOne<Reference>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  ToMany<CodeableConcept>? bodysite = ToMany<CodeableConcept>();
  double? factorOverride;
  ToOne<Money>? priceOverride = ToOne<Money>();
  String? overrideReason;
  ToOne<Reference>? enterer = ToOne<Reference>();
  String? enteredDate;
  ToMany<CodeableConcept>? reason = ToMany<CodeableConcept>();
  ToMany<Reference>? service = ToMany<Reference>();
  ToOne<Reference>? productReference = ToOne<Reference>();
  ToOne<CodeableConcept>? productCodeableConcept = ToOne<CodeableConcept>();
  ToMany<Reference>? account = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<Reference>? supportingInformation = ToMany<Reference>();
}

@Entity()
class ChargeItemPerformer {
  ChargeItemPerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept>? function_ = ToOne<CodeableConcept>();
  ToOne<Reference> actor = ToOne<Reference>();
}

import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class CarePlan extends Resource {
  CarePlan({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.basedOn,
    this.replaces,
    this.partOf,
    required this.status,
    required this.intent,
    this.category,
    this.title,
    this.description,
    required this.subject,
    this.encounter,
    this.period,
    this.created,
    this.author,
    this.contributor,
    this.careTeam,
    this.addresses,
    this.supportingInfo,
    this.goal,
    this.activity,
    this.note,
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
  List<String>? instantiatesCanonical;
  List<String>? instantiatesUri;
  ToMany<Reference>? basedOn = ToMany<Reference>();
  ToMany<Reference>? replaces = ToMany<Reference>();
  ToMany<Reference>? partOf = ToMany<Reference>();
  String status;
  String intent;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  String? title;
  String? description;
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  ToOne<Period>? period = ToOne<Period>();
  String? created;
  ToOne<Reference>? author = ToOne<Reference>();
  ToMany<Reference>? contributor = ToMany<Reference>();
  ToMany<Reference>? careTeam = ToMany<Reference>();
  ToMany<Reference>? addresses = ToMany<Reference>();
  ToMany<Reference>? supportingInfo = ToMany<Reference>();
  ToMany<Reference>? goal = ToMany<Reference>();
  ToMany<CarePlanActivity>? activity = ToMany<CarePlanActivity>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

@Entity()
class CarePlanActivity {
  CarePlanActivity({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.outcomeCodeableConcept,
    this.outcomeReference,
    this.progress,
    this.reference,
    this.detail,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<CodeableConcept>? outcomeCodeableConcept = ToMany<CodeableConcept>();
  ToMany<Reference>? outcomeReference = ToMany<Reference>();
  ToMany<Annotation>? progress = ToMany<Annotation>();
  ToOne<Reference>? reference = ToOne<Reference>();
  ToOne<CarePlanDetail>? detail = ToOne<CarePlanDetail>();
}

@Entity()
class CarePlanDetail {
  CarePlanDetail({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.kind,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.code,
    this.reasonCode,
    this.reasonReference,
    this.goal,
    required this.status,
    this.statusReason,
    this.doNotPerform,
    this.scheduledTiming,
    this.scheduledPeriod,
    this.scheduledString,
    this.location,
    this.performer,
    this.productCodeableConcept,
    this.productReference,
    this.dailyAmount,
    this.quantity,
    this.description,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? kind;
  List<String>? instantiatesCanonical;
  List<String>? instantiatesUri;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Reference>? goal = ToMany<Reference>();
  String status;
  ToOne<CodeableConcept>? statusReason = ToOne<CodeableConcept>();
  bool? doNotPerform;
  ToOne<Timing>? scheduledTiming = ToOne<Timing>();
  ToOne<Period>? scheduledPeriod = ToOne<Period>();
  String? scheduledString;
  ToOne<Reference>? location = ToOne<Reference>();
  ToMany<Reference>? performer = ToMany<Reference>();
  ToOne<CodeableConcept>? productCodeableConcept = ToOne<CodeableConcept>();
  ToOne<Reference>? productReference = ToOne<Reference>();
  ToOne<Quantity>? dailyAmount = ToOne<Quantity>();
  ToOne<Quantity>? quantity = ToOne<Quantity>();
  String? description;
}

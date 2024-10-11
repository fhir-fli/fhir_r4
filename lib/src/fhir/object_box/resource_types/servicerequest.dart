import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ServiceRequest extends Resource {
  ServiceRequest({
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
    this.requisition,
    required this.status,
    required this.intent,
    this.category,
    this.priority,
    this.doNotPerform,
    this.code,
    this.orderDetail,
    this.quantityQuantity,
    this.quantityRatio,
    this.quantityRange,
    required this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.asNeededBoolean,
    this.asNeededCodeableConcept,
    this.authoredOn,
    this.requester,
    this.performerType,
    this.performer,
    this.locationCode,
    this.locationReference,
    this.reasonCode,
    this.reasonReference,
    this.insurance,
    this.supportingInfo,
    this.specimen,
    this.bodySite,
    this.note,
    this.patientInstruction,
    this.relevantHistory,
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
  ToOne<Identifier>? requisition = ToOne<Identifier>();
  String status;
  String intent;
  ToMany<CodeableConcept>? category = ToMany<CodeableConcept>();
  String? priority;
  bool? doNotPerform;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToMany<CodeableConcept>? orderDetail = ToMany<CodeableConcept>();
  ToOne<Quantity>? quantityQuantity = ToOne<Quantity>();
  ToOne<Ratio>? quantityRatio = ToOne<Ratio>();
  ToOne<Range>? quantityRange = ToOne<Range>();
  ToOne<Reference> subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? occurrenceDateTime;
  ToOne<Period>? occurrencePeriod = ToOne<Period>();
  ToOne<Timing>? occurrenceTiming = ToOne<Timing>();
  bool? asNeededBoolean;
  ToOne<CodeableConcept>? asNeededCodeableConcept = ToOne<CodeableConcept>();
  String? authoredOn;
  ToOne<Reference>? requester = ToOne<Reference>();
  ToOne<CodeableConcept>? performerType = ToOne<CodeableConcept>();
  ToMany<Reference>? performer = ToMany<Reference>();
  ToMany<CodeableConcept>? locationCode = ToMany<CodeableConcept>();
  ToMany<Reference>? locationReference = ToMany<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Reference>? insurance = ToMany<Reference>();
  ToMany<Reference>? supportingInfo = ToMany<Reference>();
  ToMany<Reference>? specimen = ToMany<Reference>();
  ToMany<CodeableConcept>? bodySite = ToMany<CodeableConcept>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  String? patientInstruction;
  ToMany<Reference>? relevantHistory = ToMany<Reference>();
}

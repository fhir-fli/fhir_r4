import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class DeviceUseStatement extends Resource {
  DeviceUseStatement({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.basedOn,
    required this.status,
    required this.subject,
    this.derivedFrom,
    this.timingTiming,
    this.timingPeriod,
    this.timingDateTime,
    this.recordedOn,
    this.source,
    required this.device,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
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
  ToMany<Reference>? basedOn = ToMany<Reference>();
  String status;
  ToOne<Reference> subject = ToOne<Reference>();
  ToMany<Reference>? derivedFrom = ToMany<Reference>();
  ToOne<Timing>? timingTiming = ToOne<Timing>();
  ToOne<Period>? timingPeriod = ToOne<Period>();
  String? timingDateTime;
  String? recordedOn;
  ToOne<Reference>? source = ToOne<Reference>();
  ToOne<Reference> device = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToOne<CodeableConcept>? bodySite = ToOne<CodeableConcept>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

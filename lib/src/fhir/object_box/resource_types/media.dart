import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Media extends Resource {
  Media({
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
    this.partOf,
    required this.status,
    this.type,
    this.modality,
    this.view,
    this.subject,
    this.encounter,
    this.createdDateTime,
    this.createdPeriod,
    this.issued,
    this.operator_,
    this.reasonCode,
    this.bodySite,
    this.deviceName,
    this.device,
    this.height,
    this.width,
    this.frames,
    this.duration,
    required this.content,
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
  ToMany<Reference>? partOf = ToMany<Reference>();
  String status;
  ToOne<CodeableConcept>? type = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? modality = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? view = ToOne<CodeableConcept>();
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? createdDateTime;
  ToOne<Period>? createdPeriod = ToOne<Period>();
  String? issued;
  ToOne<Reference>? operator_ = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToOne<CodeableConcept>? bodySite = ToOne<CodeableConcept>();
  String? deviceName;
  ToOne<Reference>? device = ToOne<Reference>();
  int? height;
  int? width;
  int? frames;
  double? duration;
  ToOne<Attachment> content = ToOne<Attachment>();
  ToMany<Annotation>? note = ToMany<Annotation>();
}

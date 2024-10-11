import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class GuidanceResponse extends Resource {
  GuidanceResponse({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.requestIdentifier,
    this.identifier,
    this.moduleUri,
    this.moduleCanonical,
    this.moduleCodeableConcept,
    required this.status,
    this.subject,
    this.encounter,
    this.occurrenceDateTime,
    this.performer,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.evaluationMessage,
    this.outputParameters,
    this.result,
    this.dataRequirement,
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
  ToOne<Identifier>? requestIdentifier = ToOne<Identifier>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? moduleUri;
  String? moduleCanonical;
  ToOne<CodeableConcept>? moduleCodeableConcept = ToOne<CodeableConcept>();
  String status;
  ToOne<Reference>? subject = ToOne<Reference>();
  ToOne<Reference>? encounter = ToOne<Reference>();
  String? occurrenceDateTime;
  ToOne<Reference>? performer = ToOne<Reference>();
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<Reference>? evaluationMessage = ToMany<Reference>();
  ToOne<Reference>? outputParameters = ToOne<Reference>();
  ToOne<Reference>? result = ToOne<Reference>();
  ToMany<DataRequirement>? dataRequirement = ToMany<DataRequirement>();
}

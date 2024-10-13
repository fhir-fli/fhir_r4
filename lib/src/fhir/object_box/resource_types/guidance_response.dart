// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxGuidanceResponse {
  ObjectBoxGuidanceResponse({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxIdentifier? requestIdentifier,
    List<ObjectBoxIdentifier>? identifier,
    this.moduleUri,
    ObjectBoxElement? moduleUriElement,
    this.moduleCanonical,
    ObjectBoxElement? moduleCanonicalElement,
    ObjectBoxCodeableConcept? moduleCodeableConcept,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.occurrenceDateTime,
    ObjectBoxElement? occurrenceDateTimeElement,
    ObjectBoxReference? performer,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxReference>? evaluationMessage,
    ObjectBoxReference? outputParameters,
    ObjectBoxReference? result,
    List<ObjectBoxDataRequirement>? dataRequirement,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.requestIdentifier.target = requestIdentifier;
    this.identifier.addAll(identifier ?? []);
    this.moduleUriElement.target = moduleUriElement;
    this.moduleCanonicalElement.target = moduleCanonicalElement;
    this.moduleCodeableConcept.target = moduleCodeableConcept;
    this.statusElement.target = statusElement;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.occurrenceDateTimeElement.target = occurrenceDateTimeElement;
    this.performer.target = performer;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.note.addAll(note ?? []);
    this.evaluationMessage.addAll(evaluationMessage ?? []);
    this.outputParameters.target = outputParameters;
    this.result.target = result;
    this.dataRequirement.addAll(dataRequirement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxIdentifier> requestIdentifier = ToOne<ObjectBoxIdentifier>();
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  String? moduleUri;
  ToOne<ObjectBoxElement> moduleUriElement = ToOne<ObjectBoxElement>();
  String? moduleCanonical;
  ToOne<ObjectBoxElement> moduleCanonicalElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> moduleCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement> occurrenceDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference> performer = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference> evaluationMessage = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference> outputParameters = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> result = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxDataRequirement> dataRequirement =
      ToMany<ObjectBoxDataRequirement>();
}

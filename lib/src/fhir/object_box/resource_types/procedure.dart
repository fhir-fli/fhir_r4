// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxProcedure {
  ObjectBoxProcedure({
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
    List<ObjectBoxIdentifier>? identifier,
    this.instantiatesCanonical,
    List<ObjectBoxElement>? instantiatesCanonicalElement,
    this.instantiatesUri,
    List<ObjectBoxElement>? instantiatesUriElement,
    List<ObjectBoxReference>? basedOn,
    List<ObjectBoxReference>? partOf,
    required this.status,
    ObjectBoxElement? statusElement,
    ObjectBoxCodeableConcept? statusReason,
    ObjectBoxCodeableConcept? category,
    ObjectBoxCodeableConcept? code,
    ObjectBoxReference? subject,
    ObjectBoxReference? encounter,
    this.performedDateTime,
    ObjectBoxElement? performedDateTimeElement,
    ObjectBoxPeriod? performedPeriod,
    this.performedString,
    ObjectBoxElement? performedStringElement,
    ObjectBoxAge? performedAge,
    ObjectBoxRange? performedRange,
    ObjectBoxReference? recorder,
    ObjectBoxReference? asserter,
    List<ObjectBoxProcedurePerformer>? performer,
    ObjectBoxReference? location,
    List<ObjectBoxCodeableConcept>? reasonCode,
    List<ObjectBoxReference>? reasonReference,
    List<ObjectBoxCodeableConcept>? bodySite,
    ObjectBoxCodeableConcept? outcome,
    List<ObjectBoxReference>? report,
    List<ObjectBoxCodeableConcept>? complication,
    List<ObjectBoxReference>? complicationDetail,
    List<ObjectBoxCodeableConcept>? followUp,
    List<ObjectBoxAnnotation>? note,
    List<ObjectBoxProcedureFocalDevice>? focalDevice,
    List<ObjectBoxReference>? usedReference,
    List<ObjectBoxCodeableConcept>? usedCode,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifier.addAll(identifier ?? []);
    this
        .instantiatesCanonicalElement
        .addAll(instantiatesCanonicalElement ?? []);
    this.instantiatesUriElement.addAll(instantiatesUriElement ?? []);
    this.basedOn.addAll(basedOn ?? []);
    this.partOf.addAll(partOf ?? []);
    this.statusElement.target = statusElement;
    this.statusReason.target = statusReason;
    this.category.target = category;
    this.code.target = code;
    this.subject.target = subject;
    this.encounter.target = encounter;
    this.performedDateTimeElement.target = performedDateTimeElement;
    this.performedPeriod.target = performedPeriod;
    this.performedStringElement.target = performedStringElement;
    this.performedAge.target = performedAge;
    this.performedRange.target = performedRange;
    this.recorder.target = recorder;
    this.asserter.target = asserter;
    this.performer.addAll(performer ?? []);
    this.location.target = location;
    this.reasonCode.addAll(reasonCode ?? []);
    this.reasonReference.addAll(reasonReference ?? []);
    this.bodySite.addAll(bodySite ?? []);
    this.outcome.target = outcome;
    this.report.addAll(report ?? []);
    this.complication.addAll(complication ?? []);
    this.complicationDetail.addAll(complicationDetail ?? []);
    this.followUp.addAll(followUp ?? []);
    this.note.addAll(note ?? []);
    this.focalDevice.addAll(focalDevice ?? []);
    this.usedReference.addAll(usedReference ?? []);
    this.usedCode.addAll(usedCode ?? []);
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement> instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement> instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference> basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference> partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept> statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> encounter = ToOne<ObjectBoxReference>();
  String? performedDateTime;
  ToOne<ObjectBoxElement> performedDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod> performedPeriod = ToOne<ObjectBoxPeriod>();
  String? performedString;
  ToOne<ObjectBoxElement> performedStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge> performedAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxRange> performedRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxReference> recorder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> asserter = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxProcedurePerformer> performer =
      ToMany<ObjectBoxProcedurePerformer>();
  ToOne<ObjectBoxReference> location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> bodySite =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept> outcome = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> report = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> complication =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference> complicationDetail = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> followUp =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation> note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxProcedureFocalDevice> focalDevice =
      ToMany<ObjectBoxProcedureFocalDevice>();
  ToMany<ObjectBoxReference> usedReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept> usedCode =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxProcedurePerformer {
  ObjectBoxProcedurePerformer({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? function_,
    ObjectBoxReference? actor,
    ObjectBoxReference? onBehalfOf,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.function_.target = function_;
    this.actor.target = actor;
    this.onBehalfOf.target = onBehalfOf;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> function_ = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference> onBehalfOf = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxProcedureFocalDevice {
  ObjectBoxProcedureFocalDevice({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    ObjectBoxCodeableConcept? action,
    ObjectBoxReference? manipulated,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.action.target = action;
    this.manipulated.target = manipulated;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept> action = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> manipulated = ToOne<ObjectBoxReference>();
}

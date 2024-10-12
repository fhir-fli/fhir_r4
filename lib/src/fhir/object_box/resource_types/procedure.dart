// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxProcedure {
  ObjectBoxProcedure({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesCanonicalElement,
    this.instantiatesUri,
    this.instantiatesUriElement,
    this.basedOn,
    this.partOf,
    required this.status,
    this.statusElement,
    this.statusReason,
    this.category,
    this.code,
    required this.subject,
    this.encounter,
    this.performedDateTime,
    this.performedDateTimeElement,
    this.performedPeriod,
    this.performedString,
    this.performedStringElement,
    this.performedAge,
    this.performedRange,
    this.recorder,
    this.asserter,
    this.performer,
    this.location,
    this.reasonCode,
    this.reasonReference,
    this.bodySite,
    this.outcome,
    this.report,
    this.complication,
    this.complicationDetail,
    this.followUp,
    this.note,
    this.focalDevice,
    this.usedReference,
    this.usedCode,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
  List<String>? instantiatesCanonical;
  ToMany<ObjectBoxElement>? instantiatesCanonicalElement =
      ToMany<ObjectBoxElement>();
  List<String>? instantiatesUri;
  ToMany<ObjectBoxElement>? instantiatesUriElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? basedOn = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxReference>? partOf = ToMany<ObjectBoxReference>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCodeableConcept>? statusReason =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? category = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? encounter = ToOne<ObjectBoxReference>();
  String? performedDateTime;
  ToOne<ObjectBoxElement>? performedDateTimeElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? performedPeriod = ToOne<ObjectBoxPeriod>();
  String? performedString;
  ToOne<ObjectBoxElement>? performedStringElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxAge>? performedAge = ToOne<ObjectBoxAge>();
  ToOne<ObjectBoxRange>? performedRange = ToOne<ObjectBoxRange>();
  ToOne<ObjectBoxReference>? recorder = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? asserter = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxProcedurePerformer>? performer =
      ToMany<ObjectBoxProcedurePerformer>();
  ToOne<ObjectBoxReference>? location = ToOne<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? reasonCode =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? reasonReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? bodySite =
      ToMany<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxCodeableConcept>? outcome = ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? report = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? complication =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? complicationDetail = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? followUp =
      ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxProcedureFocalDevice>? focalDevice =
      ToMany<ObjectBoxProcedureFocalDevice>();
  ToMany<ObjectBoxReference>? usedReference = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxCodeableConcept>? usedCode =
      ToMany<ObjectBoxCodeableConcept>();
}

@Entity()
class ObjectBoxProcedurePerformer {
  ObjectBoxProcedurePerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
    this.onBehalfOf,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? function_ =
      ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> actor = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? onBehalfOf = ToOne<ObjectBoxReference>();
}

@Entity()
class ObjectBoxProcedureFocalDevice {
  ObjectBoxProcedureFocalDevice({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.action,
    required this.manipulated,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  ToOne<ObjectBoxCodeableConcept>? action = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> manipulated = ToOne<ObjectBoxReference>();
}

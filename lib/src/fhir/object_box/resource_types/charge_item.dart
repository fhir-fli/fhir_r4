// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxChargeItem {
  ObjectBoxChargeItem({
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
    this.definitionUri,
    this.definitionUriElement,
    this.definitionCanonical,
    this.definitionCanonicalElement,
    required this.status,
    this.statusElement,
    this.partOf,
    required this.code,
    required this.subject,
    this.context,
    this.occurrenceDateTime,
    this.occurrenceDateTimeElement,
    this.occurrencePeriod,
    this.occurrenceTiming,
    this.performer,
    this.performingOrganization,
    this.requestingOrganization,
    this.costCenter,
    this.quantity,
    this.bodysite,
    this.factorOverride,
    this.factorOverrideElement,
    this.priceOverride,
    this.overrideReason,
    this.overrideReasonElement,
    this.enterer,
    this.enteredDate,
    this.enteredDateElement,
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
  List<String>? definitionUri;
  ToMany<ObjectBoxElement>? definitionUriElement = ToMany<ObjectBoxElement>();
  List<String>? definitionCanonical;
  ToMany<ObjectBoxElement>? definitionCanonicalElement =
      ToMany<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxReference>? partOf = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept> code = ToOne<ObjectBoxCodeableConcept>();
  ToOne<ObjectBoxReference> subject = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? context = ToOne<ObjectBoxReference>();
  String? occurrenceDateTime;
  ToOne<ObjectBoxElement>? occurrenceDateTimeElement =
      ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxPeriod>? occurrencePeriod = ToOne<ObjectBoxPeriod>();
  ToOne<ObjectBoxTiming>? occurrenceTiming = ToOne<ObjectBoxTiming>();
  ToMany<ObjectBoxChargeItemPerformer>? performer =
      ToMany<ObjectBoxChargeItemPerformer>();
  ToOne<ObjectBoxReference>? performingOrganization =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? requestingOrganization =
      ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? costCenter = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxQuantity>? quantity = ToOne<ObjectBoxQuantity>();
  ToMany<ObjectBoxCodeableConcept>? bodysite =
      ToMany<ObjectBoxCodeableConcept>();
  double? factorOverride;
  ToOne<ObjectBoxElement>? factorOverrideElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxMoney>? priceOverride = ToOne<ObjectBoxMoney>();
  String? overrideReason;
  ToOne<ObjectBoxElement>? overrideReasonElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxReference>? enterer = ToOne<ObjectBoxReference>();
  String? enteredDate;
  ToOne<ObjectBoxElement>? enteredDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxCodeableConcept>? reason = ToMany<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? service = ToMany<ObjectBoxReference>();
  ToOne<ObjectBoxReference>? productReference = ToOne<ObjectBoxReference>();
  ToOne<ObjectBoxCodeableConcept>? productCodeableConcept =
      ToOne<ObjectBoxCodeableConcept>();
  ToMany<ObjectBoxReference>? account = ToMany<ObjectBoxReference>();
  ToMany<ObjectBoxAnnotation>? note = ToMany<ObjectBoxAnnotation>();
  ToMany<ObjectBoxReference>? supportingInformation =
      ToMany<ObjectBoxReference>();
}

@Entity()
class ObjectBoxChargeItemPerformer {
  ObjectBoxChargeItemPerformer({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.function_,
    required this.actor,
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
}

import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class InvoiceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Invoice';

  String? id;

  @ToOne()
  FhirMetaEntity? meta;

  String? implicitRules;

  @ToOne()
  PrimitiveElementEntity? implicitRulesElement;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  NarrativeEntity? text;

  @ToMany()
  List<ResourceEntity>? contained;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? cancelledReason;

  @ToOne()
  PrimitiveElementEntity? cancelledReasonElement;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  ReferenceEntity? subject;

  @ToOne()
  ReferenceEntity? recipient;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToMany()
  List<InvoiceParticipantEntity>? participant;

  @ToOne()
  ReferenceEntity? issuer;

  @ToOne()
  ReferenceEntity? account;

  @ToMany()
  List<InvoiceLineItemEntity>? lineItem;

  @ToMany()
  List<InvoicePriceComponentEntity>? totalPriceComponent;

  @ToOne()
  MoneyEntity? totalNet;

  @ToOne()
  MoneyEntity? totalGross;

  String? paymentTerms;

  @ToOne()
  PrimitiveElementEntity? paymentTermsElement;

  @ToMany()
  List<AnnotationEntity>? note;
}

class InvoiceParticipantEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  CodeableConceptEntity? role;

  @ToOne()
  ReferenceEntity? actor;
}

class InvoiceLineItemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  int? sequence;

  @ToOne()
  PrimitiveElementEntity? sequenceElement;

  @ToOne()
  ReferenceEntity? chargeItemReference;

  @ToOne()
  CodeableConceptEntity? chargeItemCodeableConcept;

  @ToMany()
  List<InvoicePriceComponentEntity>? priceComponent;
}

class InvoicePriceComponentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  @ToOne()
  CodeableConceptEntity? code;

  double? factor;

  @ToOne()
  PrimitiveElementEntity? factorElement;

  @ToOne()
  MoneyEntity? amount;
}

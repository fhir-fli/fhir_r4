import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class PaymentNoticeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'PaymentNotice';

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

  @ToOne()
  ReferenceEntity? request;

  @ToOne()
  ReferenceEntity? response;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToOne()
  ReferenceEntity? provider;

  @ToOne()
  ReferenceEntity? payment;

  String? paymentDate;

  @ToOne()
  PrimitiveElementEntity? paymentDateElement;

  @ToOne()
  ReferenceEntity? payee;

  @ToOne()
  ReferenceEntity? recipient;

  @ToOne()
  MoneyEntity? amount;

  @ToOne()
  CodeableConceptEntity? paymentStatus;
}

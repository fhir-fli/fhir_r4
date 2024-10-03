import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class PaymentReconciliationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'PaymentReconciliation';

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
  PeriodEntity? period;

  String? created;

  @ToOne()
  PrimitiveElementEntity? createdElement;

  @ToOne()
  ReferenceEntity? paymentIssuer;

  @ToOne()
  ReferenceEntity? request;

  @ToOne()
  ReferenceEntity? requestor;

  String? outcome;

  @ToOne()
  PrimitiveElementEntity? outcomeElement;

  String? disposition;

  @ToOne()
  PrimitiveElementEntity? dispositionElement;

  String? paymentDate;

  @ToOne()
  PrimitiveElementEntity? paymentDateElement;

  @ToOne()
  MoneyEntity? paymentAmount;

  @ToOne()
  IdentifierEntity? paymentIdentifier;

  @ToMany()
  List<PaymentReconciliationDetailEntity>? detail;

  @ToOne()
  CodeableConceptEntity? formCode;

  @ToMany()
  List<PaymentReconciliationProcessNoteEntity>? processNote;
}

class PaymentReconciliationDetailEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToOne()
  IdentifierEntity? identifier;

  @ToOne()
  IdentifierEntity? predecessor;

  @ToOne()
  CodeableConceptEntity? type;

  @ToOne()
  ReferenceEntity? request;

  @ToOne()
  ReferenceEntity? submitter;

  @ToOne()
  ReferenceEntity? response;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  @ToOne()
  ReferenceEntity? responsible;

  @ToOne()
  ReferenceEntity? payee;

  @ToOne()
  MoneyEntity? amount;
}

class PaymentReconciliationProcessNoteEntity {
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

  String? text;

  @ToOne()
  PrimitiveElementEntity? textElement;
}

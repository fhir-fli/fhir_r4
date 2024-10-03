import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SubscriptionStatusEntity {
  @Id(assignable: true)
  int dbId = 0;
  @ToOne()
  R4ResourceTypeEntity? resourceType;

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

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? eventsSinceSubscriptionStart;

  @ToOne()
  PrimitiveElementEntity? eventsSinceSubscriptionStartElement;

  @ToMany()
  List<SubscriptionStatusNotificationEventEntity>? notificationEvent;

  @ToOne()
  ReferenceEntity? subscription;

  String? topic;

  @ToMany()
  List<CodeableConceptEntity>? error;
}

class SubscriptionStatusNotificationEventEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? eventNumber;

  @ToOne()
  PrimitiveElementEntity? eventNumberElement;

  String? timestamp;

  @ToOne()
  PrimitiveElementEntity? timestampElement;

  @ToOne()
  ReferenceEntity? focus;

  @ToMany()
  List<ReferenceEntity>? additionalContext;
}

import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SubscriptionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'Subscription';

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

  @ToMany()
  List<ContactPointEntity>? contact;

  String? end;

  @ToOne()
  PrimitiveElementEntity? endElement;

  String? reason;

  @ToOne()
  PrimitiveElementEntity? reasonElement;

  String? criteria;

  @ToOne()
  PrimitiveElementEntity? criteriaElement;

  String? error;

  @ToOne()
  PrimitiveElementEntity? errorElement;

  @ToOne()
  SubscriptionChannelEntity? channel;
}

class SubscriptionChannelEntity {
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

  String? endpoint;

  @ToOne()
  PrimitiveElementEntity? endpointElement;

  String? payload;

  @ToOne()
  PrimitiveElementEntity? payloadElement;

  List<String>? header;

  @ToMany()
  List<PrimitiveElementEntity>? headerElement;
}

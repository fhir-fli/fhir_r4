import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MessageHeaderEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'MessageHeader';

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

  @ToOne()
  CodingEntity? eventCoding;

  String? eventUri;

  @ToOne()
  PrimitiveElementEntity? eventUriElement;

  @ToMany()
  List<MessageHeaderDestinationEntity>? destination;

  @ToOne()
  ReferenceEntity? sender;

  @ToOne()
  ReferenceEntity? enterer;

  @ToOne()
  ReferenceEntity? author;

  @ToOne()
  MessageHeaderSourceEntity? source;

  @ToOne()
  ReferenceEntity? responsible;

  @ToOne()
  CodeableConceptEntity? reason;

  @ToOne()
  MessageHeaderResponseEntity? response;

  @ToMany()
  List<ReferenceEntity>? focus;

  String? definition;
}

class MessageHeaderDestinationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  @ToOne()
  ReferenceEntity? target;

  String? endpoint;

  @ToOne()
  PrimitiveElementEntity? endpointElement;

  @ToOne()
  ReferenceEntity? receiver;
}

class MessageHeaderSourceEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? software;

  @ToOne()
  PrimitiveElementEntity? softwareElement;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  @ToOne()
  ContactPointEntity? contact;

  String? endpoint;

  @ToOne()
  PrimitiveElementEntity? endpointElement;
}

class MessageHeaderResponseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? identifier;

  @ToOne()
  PrimitiveElementEntity? identifierElement;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  @ToOne()
  ReferenceEntity? details;
}

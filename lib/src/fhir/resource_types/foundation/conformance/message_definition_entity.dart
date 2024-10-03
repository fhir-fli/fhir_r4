import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class MessageDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'MessageDefinition';

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

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;

  @ToMany()
  List<IdentifierEntity>? identifier;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  List<String>? replaces;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  bool? experimental;

  @ToOne()
  PrimitiveElementEntity? experimentalElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  String? base;

  List<String>? parent;

  @ToOne()
  CodingEntity? eventCoding;

  String? eventUri;

  @ToOne()
  PrimitiveElementEntity? eventUriElement;

  String? category;

  @ToOne()
  PrimitiveElementEntity? categoryElement;

  @ToMany()
  List<MessageDefinitionFocusEntity>? focus;

  String? responseRequired;

  @ToOne()
  PrimitiveElementEntity? responseRequiredElement;

  @ToMany()
  List<MessageDefinitionAllowedResponseEntity>? allowedResponse;

  List<String>? graph;
}

class MessageDefinitionFocusEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  String? profile;

  int? min;

  @ToOne()
  PrimitiveElementEntity? minElement;

  String? max;

  @ToOne()
  PrimitiveElementEntity? maxElement;
}

class MessageDefinitionAllowedResponseEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? message;

  String? situation;

  @ToOne()
  PrimitiveElementEntity? situationElement;
}

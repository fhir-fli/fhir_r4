import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class GraphDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'GraphDefinition';

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

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

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

  String? start;

  @ToOne()
  PrimitiveElementEntity? startElement;

  String? profile;

  @ToMany()
  List<GraphDefinitionLinkEntity>? link;
}

class GraphDefinitionLinkEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? path;

  @ToOne()
  PrimitiveElementEntity? pathElement;

  String? sliceName;

  @ToOne()
  PrimitiveElementEntity? sliceNameElement;

  int? min;

  @ToOne()
  PrimitiveElementEntity? minElement;

  String? max;

  @ToOne()
  PrimitiveElementEntity? maxElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<GraphDefinitionTargetEntity>? target;
}

class GraphDefinitionTargetEntity {
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

  String? params;

  @ToOne()
  PrimitiveElementEntity? paramsElement;

  String? profile;

  @ToMany()
  List<GraphDefinitionCompartmentEntity>? compartment;

  @ToMany()
  List<GraphDefinitionLinkEntity>? link;
}

class GraphDefinitionCompartmentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? use;

  @ToOne()
  PrimitiveElementEntity? useElement;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  String? rule;

  @ToOne()
  PrimitiveElementEntity? ruleElement;

  String? expression;

  @ToOne()
  PrimitiveElementEntity? expressionElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;
}

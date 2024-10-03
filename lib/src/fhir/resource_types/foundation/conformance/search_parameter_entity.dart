import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class SearchParameterEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'SearchParameter';

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

  String? derivedFrom;

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

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  List<String>? base;

  @ToMany()
  List<PrimitiveElementEntity>? baseElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? expression;

  @ToOne()
  PrimitiveElementEntity? expressionElement;

  String? xpath;

  @ToOne()
  PrimitiveElementEntity? xpathElement;

  String? xpathUsage;

  @ToOne()
  PrimitiveElementEntity? xpathUsageElement;

  List<String>? target;

  @ToMany()
  List<PrimitiveElementEntity>? targetElement;

  bool? multipleOr;

  @ToOne()
  PrimitiveElementEntity? multipleOrElement;

  bool? multipleAnd;

  @ToOne()
  PrimitiveElementEntity? multipleAndElement;

  List<String>? comparator;

  @ToMany()
  List<PrimitiveElementEntity>? comparatorElement;

  List<String>? modifier;

  @ToMany()
  List<PrimitiveElementEntity>? modifierElement;

  List<String>? chain;

  @ToMany()
  List<PrimitiveElementEntity>? chainElement;

  @ToMany()
  List<SearchParameterComponentEntity>? component;
}

class SearchParameterComponentEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? definition;

  String? expression;

  @ToOne()
  PrimitiveElementEntity? expressionElement;
}

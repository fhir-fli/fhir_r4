import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CompartmentDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'CompartmentDefinition';

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

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  bool? search;

  @ToOne()
  PrimitiveElementEntity? searchElement;

  @ToMany()
  List<CompartmentDefinitionResourceEntity>? resource;
}

class CompartmentDefinitionResourceEntity {
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

  List<String>? param;

  @ToMany()
  List<PrimitiveElementEntity>? paramElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;
}

import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class NamingSystemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'NamingSystem';

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

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? kind;

  @ToOne()
  PrimitiveElementEntity? kindElement;

  String? date;

  @ToOne()
  PrimitiveElementEntity? dateElement;

  String? publisher;

  @ToOne()
  PrimitiveElementEntity? publisherElement;

  @ToMany()
  List<ContactDetailEntity>? contact;

  String? responsible;

  @ToOne()
  PrimitiveElementEntity? responsibleElement;

  @ToOne()
  CodeableConceptEntity? type;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  @ToMany()
  List<UsageContextEntity>? useContext;

  @ToMany()
  List<CodeableConceptEntity>? jurisdiction;

  String? usage;

  @ToOne()
  PrimitiveElementEntity? usageElement;

  @ToMany()
  List<NamingSystemUniqueIdEntity>? uniqueId;
}

class NamingSystemUniqueIdEntity {
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

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;

  bool? preferred;

  @ToOne()
  PrimitiveElementEntity? preferredElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;

  @ToOne()
  PeriodEntity? period;
}

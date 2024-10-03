import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class StructureDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'StructureDefinition';

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

  @ToMany()
  List<CodingEntity>? keyword;

  String? fhirVersion;

  @ToOne()
  PrimitiveElementEntity? fhirVersionElement;

  @ToMany()
  List<StructureDefinitionMappingEntity>? mapping;

  String? kind;

  @ToOne()
  PrimitiveElementEntity? kindElement;

  bool? abstract_;

  @ToOne()
  PrimitiveElementEntity? abstractElement;

  @ToMany()
  List<StructureDefinitionContextEntity>? context;

  List<String>? contextInvariant;

  @ToMany()
  List<PrimitiveElementEntity>? contextInvariantElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  String? baseDefinition;
  @ToOne()
  PrimitiveElementEntity? baseDefinitionElement;

  String? derivation;

  @ToOne()
  PrimitiveElementEntity? derivationElement;

  @ToOne()
  StructureDefinitionSnapshotEntity? snapshot;

  @ToOne()
  StructureDefinitionDifferentialEntity? differential;
}

class StructureDefinitionMappingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? identity;

  @ToOne()
  PrimitiveElementEntity? identityElement;

  String? uri;

  @ToOne()
  PrimitiveElementEntity? uriElement;

  String? name;

  @ToOne()
  PrimitiveElementEntity? nameElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;
}

class StructureDefinitionContextEntity {
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

  String? expression;

  @ToOne()
  PrimitiveElementEntity? expressionElement;
}

class StructureDefinitionSnapshotEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ElementDefinitionEntity>? element;
}

class StructureDefinitionDifferentialEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  @ToMany()
  List<ElementDefinitionEntity>? element;
}

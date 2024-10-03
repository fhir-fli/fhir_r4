import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ConceptMapEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ConceptMap';

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

  @ToOne()
  IdentifierEntity? identifier;

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

  String? sourceUri;

  @ToOne()
  PrimitiveElementEntity? sourceUriElement;

  String? sourceCanonical;

  @ToOne()
  PrimitiveElementEntity? sourceCanonicalElement;

  String? targetUri;

  @ToOne()
  PrimitiveElementEntity? targetUriElement;

  String? targetCanonical;

  @ToOne()
  PrimitiveElementEntity? targetCanonicalElement;

  @ToMany()
  List<ConceptMapGroupEntity>? group;
}

class ConceptMapGroupEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? source;

  @ToOne()
  PrimitiveElementEntity? sourceElement;

  String? sourceVersion;

  @ToOne()
  PrimitiveElementEntity? sourceVersionElement;

  String? target;

  @ToOne()
  PrimitiveElementEntity? targetElement;

  String? targetVersion;

  @ToOne()
  PrimitiveElementEntity? targetVersionElement;

  @ToMany()
  List<ConceptMapElementEntity>? element;

  @ToOne()
  ConceptMapUnmappedEntity? unmapped;
}

class ConceptMapElementEntity {
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

  String? display;

  @ToOne()
  PrimitiveElementEntity? displayElement;

  @ToMany()
  List<ConceptMapTargetEntity>? target;
}

class ConceptMapTargetEntity {
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

  String? display;

  @ToOne()
  PrimitiveElementEntity? displayElement;

  String? equivalence;

  @ToOne()
  PrimitiveElementEntity? equivalenceElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;

  @ToMany()
  List<ConceptMapDependsOnEntity>? dependsOn;

  @ToMany()
  List<ConceptMapDependsOnEntity>? product;
}

class ConceptMapDependsOnEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? property;

  @ToOne()
  PrimitiveElementEntity? propertyElement;

  String? system;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;

  String? display;

  @ToOne()
  PrimitiveElementEntity? displayElement;
}

class ConceptMapUnmappedEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? mode;

  @ToOne()
  PrimitiveElementEntity? modeElement;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  String? display;

  @ToOne()
  PrimitiveElementEntity? displayElement;

  String? url;
}

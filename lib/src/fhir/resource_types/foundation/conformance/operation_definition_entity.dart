import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class OperationDefinitionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'OperationDefinition';

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

  String? title;

  @ToOne()
  PrimitiveElementEntity? titleElement;

  String? status;

  @ToOne()
  PrimitiveElementEntity? statusElement;

  String? kind;

  @ToOne()
  PrimitiveElementEntity? kindElement;

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

  bool? affectsState;

  @ToOne()
  PrimitiveElementEntity? affectsStateElement;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;

  String? base;

  List<String>? resource;

  @ToMany()
  List<PrimitiveElementEntity>? resourceElement;

  bool? system;

  @ToOne()
  PrimitiveElementEntity? systemElement;

  bool? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  bool? instance;

  @ToOne()
  PrimitiveElementEntity? instanceElement;

  String? inputProfile;

  String? outputProfile;

  @ToMany()
  List<OperationDefinitionParameterEntity>? parameter;

  @ToMany()
  List<OperationDefinitionOverloadEntity>? overload;
}

class OperationDefinitionParameterEntity {
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

  String? use;

  @ToOne()
  PrimitiveElementEntity? useElement;

  int? min;

  @ToOne()
  PrimitiveElementEntity? minElement;

  String? max;

  @ToOne()
  PrimitiveElementEntity? maxElement;

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;

  List<String>? targetProfile;

  String? searchType;

  @ToOne()
  PrimitiveElementEntity? searchTypeElement;

  @ToOne()
  OperationDefinitionBindingEntity? binding;

  @ToMany()
  List<OperationDefinitionReferencedFromEntity>? referencedFrom;

  @ToMany()
  List<OperationDefinitionParameterEntity>? part_;
}

class OperationDefinitionBindingEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? strength;

  @ToOne()
  PrimitiveElementEntity? strengthElement;

  String? valueSet;
}

class OperationDefinitionReferencedFromEntity {
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

  String? sourceId;

  @ToOne()
  PrimitiveElementEntity? sourceIdElement;
}

class OperationDefinitionOverloadEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  List<String>? parameterName;

  @ToMany()
  List<PrimitiveElementEntity>? parameterNameElement;

  String? comment;

  @ToOne()
  PrimitiveElementEntity? commentElement;
}

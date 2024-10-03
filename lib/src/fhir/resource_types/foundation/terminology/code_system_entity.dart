import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class CodeSystemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'CodeSystem';

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

  bool? caseSensitive;

  @ToOne()
  PrimitiveElementEntity? caseSensitiveElement;

  String? valueSet;

  String? hierarchyMeaning;

  @ToOne()
  PrimitiveElementEntity? hierarchyMeaningElement;

  bool? compositional;

  @ToOne()
  PrimitiveElementEntity? compositionalElement;

  bool? versionNeeded;

  @ToOne()
  PrimitiveElementEntity? versionNeededElement;

  String? content;

  @ToOne()
  PrimitiveElementEntity? contentElement;

  String? supplements;

  int? count;

  @ToOne()
  PrimitiveElementEntity? countElement;

  @ToMany()
  List<CodeSystemFilterEntity>? filter;

  @ToMany()
  List<CodeSystemPropertyEntity>? property;

  @ToMany()
  List<CodeSystemConceptEntity>? concept;
}

class CodeSystemFilterEntity {
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

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  List<String>? operator_;

  @ToMany()
  List<PrimitiveElementEntity>? operatorElement;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;
}

class CodeSystemPropertyEntity {
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

  String? uri;

  @ToOne()
  PrimitiveElementEntity? uriElement;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? type;

  @ToOne()
  PrimitiveElementEntity? typeElement;
}

class CodeSystemConceptEntity {
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

  String? definition;

  @ToOne()
  PrimitiveElementEntity? definitionElement;

  @ToMany()
  List<CodeSystemDesignationEntity>? designation;

  @ToMany()
  List<CodeSystemProperty1Entity>? property;

  @ToMany()
  List<CodeSystemConceptEntity>? concept;
}

class CodeSystemDesignationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? language;

  @ToOne()
  PrimitiveElementEntity? languageElement;

  @ToOne()
  CodingEntity? use;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;
}

class CodeSystemProperty1Entity {
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

  String? valueCode;

  @ToOne()
  PrimitiveElementEntity? valueCodeElement;

  @ToOne()
  CodingEntity? valueCoding;

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  int? valueInteger;

  @ToOne()
  PrimitiveElementEntity? valueIntegerElement;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  String? valueDateTime;

  @ToOne()
  PrimitiveElementEntity? valueDateTimeElement;

  double? valueDecimal;

  @ToOne()
  PrimitiveElementEntity? valueDecimalElement;
}

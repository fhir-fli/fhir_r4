import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class ValueSetEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'ValueSet';

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

  bool? immutable;

  @ToOne()
  PrimitiveElementEntity? immutableElement;

  String? purpose;

  @ToOne()
  PrimitiveElementEntity? purposeElement;

  String? copyright;

  @ToOne()
  PrimitiveElementEntity? copyrightElement;

  @ToOne()
  ValueSetComposeEntity? compose;

  @ToOne()
  ValueSetExpansionEntity? expansion;
}

class ValueSetComposeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? lockedDate;

  @ToOne()
  PrimitiveElementEntity? lockedDateElement;

  bool? inactive;

  @ToOne()
  PrimitiveElementEntity? inactiveElement;

  @ToMany()
  List<ValueSetIncludeEntity>? include;

  @ToMany()
  List<ValueSetIncludeEntity>? exclude;
}

class ValueSetIncludeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? system;

  @ToOne()
  PrimitiveElementEntity? systemElement;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  @ToMany()
  List<ValueSetConceptEntity>? concept;

  @ToMany()
  List<ValueSetFilterEntity>? filter;

  List<String>? valueSet;
}

class ValueSetConceptEntity {
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
  List<ValueSetDesignationEntity>? designation;
}

class ValueSetDesignationEntity {
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

class ValueSetFilterEntity {
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

  String? op;

  @ToOne()
  PrimitiveElementEntity? opElement;

  String? value;

  @ToOne()
  PrimitiveElementEntity? valueElement;
}

class ValueSetExpansionEntity {
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

  String? timestamp;

  @ToOne()
  PrimitiveElementEntity? timestampElement;

  int? total;

  @ToOne()
  PrimitiveElementEntity? totalElement;

  int? offset;

  @ToOne()
  PrimitiveElementEntity? offsetElement;

  @ToMany()
  List<ValueSetParameterEntity>? parameter;

  @ToMany()
  List<ValueSetContainsEntity>? contains;
}

class ValueSetParameterEntity {
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

  String? valueString;

  @ToOne()
  PrimitiveElementEntity? valueStringElement;

  bool? valueBoolean;

  @ToOne()
  PrimitiveElementEntity? valueBooleanElement;

  int? valueInteger;

  @ToOne()
  PrimitiveElementEntity? valueIntegerElement;

  double? valueDecimal;

  @ToOne()
  PrimitiveElementEntity? valueDecimalElement;

  String? valueUri;

  @ToOne()
  PrimitiveElementEntity? valueUriElement;

  String? valueCode;

  @ToOne()
  PrimitiveElementEntity? valueCodeElement;

  String? valueDateTime;

  @ToOne()
  PrimitiveElementEntity? valueDateTimeElement;
}

class ValueSetContainsEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? system;

  @ToOne()
  PrimitiveElementEntity? systemElement;

  bool? abstract_;

  @ToOne()
  PrimitiveElementEntity? abstractElement;

  bool? inactive;

  @ToOne()
  PrimitiveElementEntity? inactiveElement;

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;

  String? code;

  @ToOne()
  PrimitiveElementEntity? codeElement;

  String? display;

  @ToOne()
  PrimitiveElementEntity? displayElement;

  @ToMany()
  List<ValueSetDesignationEntity>? designation;

  @ToMany()
  List<ValueSetContainsEntity>? contains;
}

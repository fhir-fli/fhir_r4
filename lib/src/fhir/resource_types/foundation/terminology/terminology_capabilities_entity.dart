import 'package:objectbox/objectbox.dart';
import '../../../r4_entity.dart';

@Entity()
class TerminologyCapabilitiesEntity {
  @Id(assignable: true)
  int dbId = 0;
  String resourceType = 'TerminologyCapabilities';

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

  String? kind;

  @ToOne()
  PrimitiveElementEntity? kindElement;

  @ToOne()
  TerminologyCapabilitiesSoftwareEntity? software;

  @ToOne()
  TerminologyCapabilitiesImplementationEntity? implementation;

  bool? lockedDate;

  @ToOne()
  PrimitiveElementEntity? lockedDateElement;

  @ToMany()
  List<TerminologyCapabilitiesCodeSystemEntity>? codeSystem;

  @ToOne()
  TerminologyCapabilitiesExpansionEntity? expansion;

  String? codeSearch;

  @ToOne()
  PrimitiveElementEntity? codeSearchElement;

  @ToOne()
  TerminologyCapabilitiesValidateCodeEntity? validateCode;
  @ToOne()
  TerminologyCapabilitiesTranslationEntity? translation;
  @ToOne()
  TerminologyCapabilitiesClosureEntity? closure;
}

class TerminologyCapabilitiesSoftwareEntity {
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

  String? version;

  @ToOne()
  PrimitiveElementEntity? versionElement;
}

class TerminologyCapabilitiesImplementationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? description;

  @ToOne()
  PrimitiveElementEntity? descriptionElement;

  String? url;

  @ToOne()
  PrimitiveElementEntity? urlElement;
}

class TerminologyCapabilitiesCodeSystemEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  String? uri;

  @ToMany()
  List<TerminologyCapabilitiesVersionEntity>? version;

  bool? subsumption;

  @ToOne()
  PrimitiveElementEntity? subsumptionElement;
}

class TerminologyCapabilitiesVersionEntity {
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

  bool? isDefault;

  @ToOne()
  PrimitiveElementEntity? isDefaultElement;

  bool? compositional;

  @ToOne()
  PrimitiveElementEntity? compositionalElement;

  List<String>? language;

  @ToMany()
  List<PrimitiveElementEntity>? languageElement;

  @ToMany()
  List<TerminologyCapabilitiesFilterEntity>? filter;

  List<String>? property;

  @ToMany()
  List<PrimitiveElementEntity>? propertyElement;
}

class TerminologyCapabilitiesFilterEntity {
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

  List<String>? op;

  @ToMany()
  List<PrimitiveElementEntity>? opElement;
}

class TerminologyCapabilitiesExpansionEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? hierarchical;

  @ToOne()
  PrimitiveElementEntity? hierarchicalElement;

  bool? paging;

  @ToOne()
  PrimitiveElementEntity? pagingElement;

  bool? incomplete;

  @ToOne()
  PrimitiveElementEntity? incompleteElement;

  @ToMany()
  List<TerminologyCapabilitiesParameterEntity>? parameter;

  String? textFilter;

  @ToOne()
  PrimitiveElementEntity? textFilterElement;
}

class TerminologyCapabilitiesParameterEntity {
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

  String? documentation;

  @ToOne()
  PrimitiveElementEntity? documentationElement;
}

class TerminologyCapabilitiesValidateCodeEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? translations;

  @ToOne()
  PrimitiveElementEntity? translationsElement;
}

class TerminologyCapabilitiesTranslationEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? needsMap;

  @ToOne()
  PrimitiveElementEntity? needsMapElement;
}

class TerminologyCapabilitiesClosureEntity {
  @Id(assignable: true)
  int dbId = 0;
  String? id;

  @ToMany()
  List<FhirExtensionEntity>? extension_;

  @ToMany()
  List<FhirExtensionEntity>? modifierExtension;

  bool? translation;

  @ToOne()
  PrimitiveElementEntity? translationElement;
}

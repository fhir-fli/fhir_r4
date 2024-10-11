import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class TerminologyCapabilities extends Resource {
  TerminologyCapabilities({
    this.id,
    this.meta,
    this.implicitRules,
    this.implicitRulesElement,
    this.language,
    this.languageElement,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.urlElement,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    required this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    required this.kind,
    this.kindElement,
    this.software,
    this.implementation,
    this.lockedDate,
    this.lockedDateElement,
    this.codeSystem,
    this.expansion,
    this.codeSearch,
    this.codeSearchElement,
    this.validateCode,
    this.translation,
    this.closure,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  ToOne<Element>? implicitRulesElement = ToOne<Element>();
  String? language;
  ToOne<Element>? languageElement = ToOne<Element>();
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
  String? name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? title;
  ToOne<Element>? titleElement = ToOne<Element>();
  String status;
  ToOne<Element>? statusElement = ToOne<Element>();
  bool? experimental;
  ToOne<Element>? experimentalElement = ToOne<Element>();
  String date;
  ToOne<Element>? dateElement = ToOne<Element>();
  String? publisher;
  ToOne<Element>? publisherElement = ToOne<Element>();
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  ToOne<Element>? purposeElement = ToOne<Element>();
  String? copyright;
  ToOne<Element>? copyrightElement = ToOne<Element>();
  String kind;
  ToOne<Element>? kindElement = ToOne<Element>();
  ToOne<TerminologyCapabilitiesSoftware>? software =
      ToOne<TerminologyCapabilitiesSoftware>();
  ToOne<TerminologyCapabilitiesImplementation>? implementation =
      ToOne<TerminologyCapabilitiesImplementation>();
  bool? lockedDate;
  ToOne<Element>? lockedDateElement = ToOne<Element>();
  ToMany<TerminologyCapabilitiesCodeSystem>? codeSystem =
      ToMany<TerminologyCapabilitiesCodeSystem>();
  ToOne<TerminologyCapabilitiesExpansion>? expansion =
      ToOne<TerminologyCapabilitiesExpansion>();
  String? codeSearch;
  ToOne<Element>? codeSearchElement = ToOne<Element>();
  ToOne<TerminologyCapabilitiesValidateCode>? validateCode =
      ToOne<TerminologyCapabilitiesValidateCode>();
  ToOne<TerminologyCapabilitiesTranslation>? translation =
      ToOne<TerminologyCapabilitiesTranslation>();
  ToOne<TerminologyCapabilitiesClosure>? closure =
      ToOne<TerminologyCapabilitiesClosure>();
}

@Entity()
class TerminologyCapabilitiesSoftware {
  TerminologyCapabilitiesSoftware({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    this.version,
    this.versionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? version;
  ToOne<Element>? versionElement = ToOne<Element>();
}

@Entity()
class TerminologyCapabilitiesImplementation {
  TerminologyCapabilitiesImplementation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.description,
    this.descriptionElement,
    this.url,
    this.urlElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String description;
  ToOne<Element>? descriptionElement = ToOne<Element>();
  String? url;
  ToOne<Element>? urlElement = ToOne<Element>();
}

@Entity()
class TerminologyCapabilitiesCodeSystem {
  TerminologyCapabilitiesCodeSystem({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.uri,
    this.uriElement,
    this.version,
    this.subsumption,
    this.subsumptionElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? uri;
  ToOne<Element>? uriElement = ToOne<Element>();
  ToMany<TerminologyCapabilitiesVersion>? version =
      ToMany<TerminologyCapabilitiesVersion>();
  bool? subsumption;
  ToOne<Element>? subsumptionElement = ToOne<Element>();
}

@Entity()
class TerminologyCapabilitiesVersion {
  TerminologyCapabilitiesVersion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.isDefault,
    this.isDefaultElement,
    this.compositional,
    this.compositionalElement,
    this.language,
    this.languageElement,
    this.filter,
    this.property,
    this.propertyElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? code;
  ToOne<Element>? codeElement = ToOne<Element>();
  bool? isDefault;
  ToOne<Element>? isDefaultElement = ToOne<Element>();
  bool? compositional;
  ToOne<Element>? compositionalElement = ToOne<Element>();
  List<String>? language;
  ToMany<Element>? languageElement = ToMany<Element>();
  ToMany<TerminologyCapabilitiesFilter>? filter =
      ToMany<TerminologyCapabilitiesFilter>();
  List<String>? property;
  ToMany<Element>? propertyElement = ToMany<Element>();
}

@Entity()
class TerminologyCapabilitiesFilter {
  TerminologyCapabilitiesFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    required this.op,
    this.opElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String code;
  ToOne<Element>? codeElement = ToOne<Element>();
  List<String> op;
  ToMany<Element>? opElement = ToMany<Element>();
}

@Entity()
class TerminologyCapabilitiesExpansion {
  TerminologyCapabilitiesExpansion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.hierarchical,
    this.hierarchicalElement,
    this.paging,
    this.pagingElement,
    this.incomplete,
    this.incompleteElement,
    this.parameter,
    this.textFilter,
    this.textFilterElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? hierarchical;
  ToOne<Element>? hierarchicalElement = ToOne<Element>();
  bool? paging;
  ToOne<Element>? pagingElement = ToOne<Element>();
  bool? incomplete;
  ToOne<Element>? incompleteElement = ToOne<Element>();
  ToMany<TerminologyCapabilitiesParameter>? parameter =
      ToMany<TerminologyCapabilitiesParameter>();
  String? textFilter;
  ToOne<Element>? textFilterElement = ToOne<Element>();
}

@Entity()
class TerminologyCapabilitiesParameter {
  TerminologyCapabilitiesParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    this.documentation,
    this.documentationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String name;
  ToOne<Element>? nameElement = ToOne<Element>();
  String? documentation;
  ToOne<Element>? documentationElement = ToOne<Element>();
}

@Entity()
class TerminologyCapabilitiesValidateCode {
  TerminologyCapabilitiesValidateCode({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.translations,
    this.translationsElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool translations;
  ToOne<Element>? translationsElement = ToOne<Element>();
}

@Entity()
class TerminologyCapabilitiesTranslation {
  TerminologyCapabilitiesTranslation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.needsMap,
    this.needsMapElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool needsMap;
  ToOne<Element>? needsMapElement = ToOne<Element>();
}

@Entity()
class TerminologyCapabilitiesClosure {
  TerminologyCapabilitiesClosure({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.translation,
    this.translationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  bool? translation;
  ToOne<Element>? translationElement = ToOne<Element>();
}

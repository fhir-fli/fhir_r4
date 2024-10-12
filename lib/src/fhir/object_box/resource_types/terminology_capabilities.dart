// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTerminologyCapabilities {
  ObjectBoxTerminologyCapabilities({
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
  ToOne<ObjectBoxFhirMeta>? meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement>? implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative>? text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource>? contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement>? titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement>? statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement>? experimentalElement = ToOne<ObjectBoxElement>();
  String date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String kind;
  ToOne<ObjectBoxElement>? kindElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTerminologyCapabilitiesSoftware>? software =
      ToOne<ObjectBoxTerminologyCapabilitiesSoftware>();
  ToOne<ObjectBoxTerminologyCapabilitiesImplementation>? implementation =
      ToOne<ObjectBoxTerminologyCapabilitiesImplementation>();
  bool? lockedDate;
  ToOne<ObjectBoxElement>? lockedDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTerminologyCapabilitiesCodeSystem>? codeSystem =
      ToMany<ObjectBoxTerminologyCapabilitiesCodeSystem>();
  ToOne<ObjectBoxTerminologyCapabilitiesExpansion>? expansion =
      ToOne<ObjectBoxTerminologyCapabilitiesExpansion>();
  String? codeSearch;
  ToOne<ObjectBoxElement>? codeSearchElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTerminologyCapabilitiesValidateCode>? validateCode =
      ToOne<ObjectBoxTerminologyCapabilitiesValidateCode>();
  ToOne<ObjectBoxTerminologyCapabilitiesTranslation>? translation =
      ToOne<ObjectBoxTerminologyCapabilitiesTranslation>();
  ToOne<ObjectBoxTerminologyCapabilitiesClosure>? closure =
      ToOne<ObjectBoxTerminologyCapabilitiesClosure>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesSoftware {
  ObjectBoxTerminologyCapabilitiesSoftware({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesImplementation {
  ObjectBoxTerminologyCapabilitiesImplementation({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesCodeSystem {
  ObjectBoxTerminologyCapabilitiesCodeSystem({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? uri;
  ToOne<ObjectBoxElement>? uriElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTerminologyCapabilitiesVersion>? version =
      ToMany<ObjectBoxTerminologyCapabilitiesVersion>();
  bool? subsumption;
  ToOne<ObjectBoxElement>? subsumptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesVersion {
  ObjectBoxTerminologyCapabilitiesVersion({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  bool? isDefault;
  ToOne<ObjectBoxElement>? isDefaultElement = ToOne<ObjectBoxElement>();
  bool? compositional;
  ToOne<ObjectBoxElement>? compositionalElement = ToOne<ObjectBoxElement>();
  List<String>? language;
  ToMany<ObjectBoxElement>? languageElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxTerminologyCapabilitiesFilter>? filter =
      ToMany<ObjectBoxTerminologyCapabilitiesFilter>();
  List<String>? property;
  ToMany<ObjectBoxElement>? propertyElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesFilter {
  ObjectBoxTerminologyCapabilitiesFilter({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  List<String> op;
  ToMany<ObjectBoxElement>? opElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesExpansion {
  ObjectBoxTerminologyCapabilitiesExpansion({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? hierarchical;
  ToOne<ObjectBoxElement>? hierarchicalElement = ToOne<ObjectBoxElement>();
  bool? paging;
  ToOne<ObjectBoxElement>? pagingElement = ToOne<ObjectBoxElement>();
  bool? incomplete;
  ToOne<ObjectBoxElement>? incompleteElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTerminologyCapabilitiesParameter>? parameter =
      ToMany<ObjectBoxTerminologyCapabilitiesParameter>();
  String? textFilter;
  ToOne<ObjectBoxElement>? textFilterElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesParameter {
  ObjectBoxTerminologyCapabilitiesParameter({
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
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement>? documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesValidateCode {
  ObjectBoxTerminologyCapabilitiesValidateCode({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.translations,
    this.translationsElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool translations;
  ToOne<ObjectBoxElement>? translationsElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesTranslation {
  ObjectBoxTerminologyCapabilitiesTranslation({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.needsMap,
    this.needsMapElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool needsMap;
  ToOne<ObjectBoxElement>? needsMapElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesClosure {
  ObjectBoxTerminologyCapabilitiesClosure({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.translation,
    this.translationElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? translation;
  ToOne<ObjectBoxElement>? translationElement = ToOne<ObjectBoxElement>();
}

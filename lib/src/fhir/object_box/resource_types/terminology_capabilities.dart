// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxTerminologyCapabilities {
  ObjectBoxTerminologyCapabilities({
    String? id,
    ObjectBoxFhirMeta? meta,
    this.implicitRules,
    ObjectBoxElement? implicitRulesElement,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxNarrative? text,
    List<ObjectBoxResource>? contained,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.url,
    ObjectBoxElement? urlElement,
    this.version,
    ObjectBoxElement? versionElement,
    this.name,
    ObjectBoxElement? nameElement,
    this.title,
    ObjectBoxElement? titleElement,
    required this.status,
    ObjectBoxElement? statusElement,
    this.experimental,
    ObjectBoxElement? experimentalElement,
    required this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    required this.kind,
    ObjectBoxElement? kindElement,
    ObjectBoxTerminologyCapabilitiesSoftware? software,
    ObjectBoxTerminologyCapabilitiesImplementation? implementation,
    this.lockedDate,
    ObjectBoxElement? lockedDateElement,
    List<ObjectBoxTerminologyCapabilitiesCodeSystem>? codeSystem,
    ObjectBoxTerminologyCapabilitiesExpansion? expansion,
    this.codeSearch,
    ObjectBoxElement? codeSearchElement,
    ObjectBoxTerminologyCapabilitiesValidateCode? validateCode,
    ObjectBoxTerminologyCapabilitiesTranslation? translation,
    ObjectBoxTerminologyCapabilitiesClosure? closure,
  }) {
    this.id.target = id;
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.versionElement.target = versionElement;
    this.nameElement.target = nameElement;
    this.titleElement.target = titleElement;
    this.statusElement.target = statusElement;
    this.experimentalElement.target = experimentalElement;
    this.dateElement.target = dateElement;
    this.publisherElement.target = publisherElement;
    this.contact.addAll(contact ?? []);
    this.descriptionElement.target = descriptionElement;
    this.useContext.addAll(useContext ?? []);
    this.jurisdiction.addAll(jurisdiction ?? []);
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.kindElement.target = kindElement;
    this.software.target = software;
    this.implementation.target = implementation;
    this.lockedDateElement.target = lockedDateElement;
    this.codeSystem.addAll(codeSystem ?? []);
    this.expansion.target = expansion;
    this.codeSearchElement.target = codeSearchElement;
    this.validateCode.target = validateCode;
    this.translation.target = translation;
    this.closure.target = closure;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToOne<ObjectBoxFhirMeta> meta = ToOne<ObjectBoxFhirMeta>();
  String? implicitRules;
  ToOne<ObjectBoxElement> implicitRulesElement = ToOne<ObjectBoxElement>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxNarrative> text = ToOne<ObjectBoxNarrative>();
  ToMany<ObjectBoxResource> contained = ToMany<ObjectBoxResource>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? title;
  ToOne<ObjectBoxElement> titleElement = ToOne<ObjectBoxElement>();
  String status;
  ToOne<ObjectBoxElement> statusElement = ToOne<ObjectBoxElement>();
  bool? experimental;
  ToOne<ObjectBoxElement> experimentalElement = ToOne<ObjectBoxElement>();
  String date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  String kind;
  ToOne<ObjectBoxElement> kindElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTerminologyCapabilitiesSoftware> software =
      ToOne<ObjectBoxTerminologyCapabilitiesSoftware>();
  ToOne<ObjectBoxTerminologyCapabilitiesImplementation> implementation =
      ToOne<ObjectBoxTerminologyCapabilitiesImplementation>();
  bool? lockedDate;
  ToOne<ObjectBoxElement> lockedDateElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTerminologyCapabilitiesCodeSystem> codeSystem =
      ToMany<ObjectBoxTerminologyCapabilitiesCodeSystem>();
  ToOne<ObjectBoxTerminologyCapabilitiesExpansion> expansion =
      ToOne<ObjectBoxTerminologyCapabilitiesExpansion>();
  String? codeSearch;
  ToOne<ObjectBoxElement> codeSearchElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxTerminologyCapabilitiesValidateCode> validateCode =
      ToOne<ObjectBoxTerminologyCapabilitiesValidateCode>();
  ToOne<ObjectBoxTerminologyCapabilitiesTranslation> translation =
      ToOne<ObjectBoxTerminologyCapabilitiesTranslation>();
  ToOne<ObjectBoxTerminologyCapabilitiesClosure> closure =
      ToOne<ObjectBoxTerminologyCapabilitiesClosure>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesSoftware {
  ObjectBoxTerminologyCapabilitiesSoftware({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.version,
    ObjectBoxElement? versionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.versionElement.target = versionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesImplementation {
  ObjectBoxTerminologyCapabilitiesImplementation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.description,
    ObjectBoxElement? descriptionElement,
    this.url,
    ObjectBoxElement? urlElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.descriptionElement.target = descriptionElement;
    this.urlElement.target = urlElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement> urlElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesCodeSystem {
  ObjectBoxTerminologyCapabilitiesCodeSystem({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.uri,
    ObjectBoxElement? uriElement,
    List<ObjectBoxTerminologyCapabilitiesVersion>? version,
    this.subsumption,
    ObjectBoxElement? subsumptionElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.uriElement.target = uriElement;
    this.version.addAll(version ?? []);
    this.subsumptionElement.target = subsumptionElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? uri;
  ToOne<ObjectBoxElement> uriElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTerminologyCapabilitiesVersion> version =
      ToMany<ObjectBoxTerminologyCapabilitiesVersion>();
  bool? subsumption;
  ToOne<ObjectBoxElement> subsumptionElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesVersion {
  ObjectBoxTerminologyCapabilitiesVersion({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.code,
    ObjectBoxElement? codeElement,
    this.isDefault,
    ObjectBoxElement? isDefaultElement,
    this.compositional,
    ObjectBoxElement? compositionalElement,
    this.language,
    List<ObjectBoxElement>? languageElement,
    List<ObjectBoxTerminologyCapabilitiesFilter>? filter,
    this.property,
    List<ObjectBoxElement>? propertyElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.isDefaultElement.target = isDefaultElement;
    this.compositionalElement.target = compositionalElement;
    this.languageElement.addAll(languageElement ?? []);
    this.filter.addAll(filter ?? []);
    this.propertyElement.addAll(propertyElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  bool? isDefault;
  ToOne<ObjectBoxElement> isDefaultElement = ToOne<ObjectBoxElement>();
  bool? compositional;
  ToOne<ObjectBoxElement> compositionalElement = ToOne<ObjectBoxElement>();
  List<String>? language;
  ToMany<ObjectBoxElement> languageElement = ToMany<ObjectBoxElement>();
  ToMany<ObjectBoxTerminologyCapabilitiesFilter> filter =
      ToMany<ObjectBoxTerminologyCapabilitiesFilter>();
  List<String>? property;
  ToMany<ObjectBoxElement> propertyElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesFilter {
  ObjectBoxTerminologyCapabilitiesFilter({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    required this.op,
    List<ObjectBoxElement>? opElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.opElement.addAll(opElement ?? []);
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  List<String> op;
  ToMany<ObjectBoxElement> opElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesExpansion {
  ObjectBoxTerminologyCapabilitiesExpansion({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.hierarchical,
    ObjectBoxElement? hierarchicalElement,
    this.paging,
    ObjectBoxElement? pagingElement,
    this.incomplete,
    ObjectBoxElement? incompleteElement,
    List<ObjectBoxTerminologyCapabilitiesParameter>? parameter,
    this.textFilter,
    ObjectBoxElement? textFilterElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.hierarchicalElement.target = hierarchicalElement;
    this.pagingElement.target = pagingElement;
    this.incompleteElement.target = incompleteElement;
    this.parameter.addAll(parameter ?? []);
    this.textFilterElement.target = textFilterElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? hierarchical;
  ToOne<ObjectBoxElement> hierarchicalElement = ToOne<ObjectBoxElement>();
  bool? paging;
  ToOne<ObjectBoxElement> pagingElement = ToOne<ObjectBoxElement>();
  bool? incomplete;
  ToOne<ObjectBoxElement> incompleteElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxTerminologyCapabilitiesParameter> parameter =
      ToMany<ObjectBoxTerminologyCapabilitiesParameter>();
  String? textFilter;
  ToOne<ObjectBoxElement> textFilterElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesParameter {
  ObjectBoxTerminologyCapabilitiesParameter({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.documentation,
    ObjectBoxElement? documentationElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.documentationElement.target = documentationElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? documentation;
  ToOne<ObjectBoxElement> documentationElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesValidateCode {
  ObjectBoxTerminologyCapabilitiesValidateCode({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.translations,
    ObjectBoxElement? translationsElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.translationsElement.target = translationsElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool translations;
  ToOne<ObjectBoxElement> translationsElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesTranslation {
  ObjectBoxTerminologyCapabilitiesTranslation({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.needsMap,
    ObjectBoxElement? needsMapElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.needsMapElement.target = needsMapElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool needsMap;
  ToOne<ObjectBoxElement> needsMapElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxTerminologyCapabilitiesClosure {
  ObjectBoxTerminologyCapabilitiesClosure({
    String? id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.translation,
    ObjectBoxElement? translationElement,
  }) {
    this.id.target = id;
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.translationElement.target = translationElement;
  }

  @Id()
  int? dbId;
  ToOne<String> id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  bool? translation;
  ToOne<ObjectBoxElement> translationElement = ToOne<ObjectBoxElement>();
}

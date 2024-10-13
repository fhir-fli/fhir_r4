// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxValueSet {
  ObjectBoxValueSet({
    this.id,
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
    List<ObjectBoxIdentifier>? identifier,
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
    this.date,
    ObjectBoxElement? dateElement,
    this.publisher,
    ObjectBoxElement? publisherElement,
    List<ObjectBoxContactDetail>? contact,
    this.description,
    ObjectBoxElement? descriptionElement,
    List<ObjectBoxUsageContext>? useContext,
    List<ObjectBoxCodeableConcept>? jurisdiction,
    this.immutable,
    ObjectBoxElement? immutableElement,
    this.purpose,
    ObjectBoxElement? purposeElement,
    this.copyright,
    ObjectBoxElement? copyrightElement,
    ObjectBoxValueSetCompose? compose,
    ObjectBoxValueSetExpansion? expansion,
  }) {
    this.meta.target = meta;
    this.implicitRulesElement.target = implicitRulesElement;
    this.languageElement.target = languageElement;
    this.text.target = text;
    this.contained.addAll(contained ?? []);
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.urlElement.target = urlElement;
    this.identifier.addAll(identifier ?? []);
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
    this.immutableElement.target = immutableElement;
    this.purposeElement.target = purposeElement;
    this.copyrightElement.target = copyrightElement;
    this.compose.target = compose;
    this.expansion.target = expansion;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
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
  ToMany<ObjectBoxIdentifier> identifier = ToMany<ObjectBoxIdentifier>();
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
  String? date;
  ToOne<ObjectBoxElement> dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement> publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail> contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement> descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext> useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept> jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  bool? immutable;
  ToOne<ObjectBoxElement> immutableElement = ToOne<ObjectBoxElement>();
  String? purpose;
  ToOne<ObjectBoxElement> purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement> copyrightElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxValueSetCompose> compose = ToOne<ObjectBoxValueSetCompose>();
  ToOne<ObjectBoxValueSetExpansion> expansion =
      ToOne<ObjectBoxValueSetExpansion>();
}

@Entity()
class ObjectBoxValueSetCompose {
  ObjectBoxValueSetCompose({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.lockedDate,
    ObjectBoxElement? lockedDateElement,
    this.inactive,
    ObjectBoxElement? inactiveElement,
    List<ObjectBoxValueSetInclude>? include,
    List<ObjectBoxValueSetInclude>? exclude,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.lockedDateElement.target = lockedDateElement;
    this.inactiveElement.target = inactiveElement;
    this.include.addAll(include ?? []);
    this.exclude.addAll(exclude ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? lockedDate;
  ToOne<ObjectBoxElement> lockedDateElement = ToOne<ObjectBoxElement>();
  bool? inactive;
  ToOne<ObjectBoxElement> inactiveElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetInclude> include = ToMany<ObjectBoxValueSetInclude>();
  ToMany<ObjectBoxValueSetInclude> exclude = ToMany<ObjectBoxValueSetInclude>();
}

@Entity()
class ObjectBoxValueSetInclude {
  ObjectBoxValueSetInclude({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.system,
    ObjectBoxElement? systemElement,
    this.version,
    ObjectBoxElement? versionElement,
    List<ObjectBoxValueSetConcept>? concept,
    List<ObjectBoxValueSetFilter>? filter,
    this.valueSet,
    List<ObjectBoxElement>? valueSetElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.systemElement.target = systemElement;
    this.versionElement.target = versionElement;
    this.concept.addAll(concept ?? []);
    this.filter.addAll(filter ?? []);
    this.valueSetElement.addAll(valueSetElement ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? system;
  ToOne<ObjectBoxElement> systemElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetConcept> concept = ToMany<ObjectBoxValueSetConcept>();
  ToMany<ObjectBoxValueSetFilter> filter = ToMany<ObjectBoxValueSetFilter>();
  List<String>? valueSet;
  ToMany<ObjectBoxElement> valueSetElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxValueSetConcept {
  ObjectBoxValueSetConcept({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.code,
    ObjectBoxElement? codeElement,
    this.display,
    ObjectBoxElement? displayElement,
    List<ObjectBoxValueSetDesignation>? designation,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.codeElement.target = codeElement;
    this.displayElement.target = displayElement;
    this.designation.addAll(designation ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetDesignation> designation =
      ToMany<ObjectBoxValueSetDesignation>();
}

@Entity()
class ObjectBoxValueSetDesignation {
  ObjectBoxValueSetDesignation({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.language,
    ObjectBoxElement? languageElement,
    ObjectBoxCoding? use,
    required this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.languageElement.target = languageElement;
    this.use.target = use;
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? language;
  ToOne<ObjectBoxElement> languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding> use = ToOne<ObjectBoxCoding>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxValueSetFilter {
  ObjectBoxValueSetFilter({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.property,
    ObjectBoxElement? propertyElement,
    required this.op,
    ObjectBoxElement? opElement,
    required this.value,
    ObjectBoxElement? valueElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.propertyElement.target = propertyElement;
    this.opElement.target = opElement;
    this.valueElement.target = valueElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String property;
  ToOne<ObjectBoxElement> propertyElement = ToOne<ObjectBoxElement>();
  String op;
  ToOne<ObjectBoxElement> opElement = ToOne<ObjectBoxElement>();
  String value;
  ToOne<ObjectBoxElement> valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxValueSetExpansion {
  ObjectBoxValueSetExpansion({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.identifier,
    ObjectBoxElement? identifierElement,
    required this.timestamp,
    ObjectBoxElement? timestampElement,
    this.total,
    ObjectBoxElement? totalElement,
    this.offset,
    ObjectBoxElement? offsetElement,
    List<ObjectBoxValueSetParameter>? parameter,
    List<ObjectBoxValueSetContains>? contains,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.identifierElement.target = identifierElement;
    this.timestampElement.target = timestampElement;
    this.totalElement.target = totalElement;
    this.offsetElement.target = offsetElement;
    this.parameter.addAll(parameter ?? []);
    this.contains.addAll(contains ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? identifier;
  ToOne<ObjectBoxElement> identifierElement = ToOne<ObjectBoxElement>();
  String timestamp;
  ToOne<ObjectBoxElement> timestampElement = ToOne<ObjectBoxElement>();
  int? total;
  ToOne<ObjectBoxElement> totalElement = ToOne<ObjectBoxElement>();
  int? offset;
  ToOne<ObjectBoxElement> offsetElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetParameter> parameter =
      ToMany<ObjectBoxValueSetParameter>();
  ToMany<ObjectBoxValueSetContains> contains =
      ToMany<ObjectBoxValueSetContains>();
}

@Entity()
class ObjectBoxValueSetParameter {
  ObjectBoxValueSetParameter({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    required this.name,
    ObjectBoxElement? nameElement,
    this.valueString,
    ObjectBoxElement? valueStringElement,
    this.valueBoolean,
    ObjectBoxElement? valueBooleanElement,
    this.valueInteger,
    ObjectBoxElement? valueIntegerElement,
    this.valueDecimal,
    ObjectBoxElement? valueDecimalElement,
    this.valueUri,
    ObjectBoxElement? valueUriElement,
    this.valueCode,
    ObjectBoxElement? valueCodeElement,
    this.valueDateTime,
    ObjectBoxElement? valueDateTimeElement,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.nameElement.target = nameElement;
    this.valueStringElement.target = valueStringElement;
    this.valueBooleanElement.target = valueBooleanElement;
    this.valueIntegerElement.target = valueIntegerElement;
    this.valueDecimalElement.target = valueDecimalElement;
    this.valueUriElement.target = valueUriElement;
    this.valueCodeElement.target = valueCodeElement;
    this.valueDateTimeElement.target = valueDateTimeElement;
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement> nameElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement> valueStringElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement> valueBooleanElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement> valueIntegerElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement> valueDecimalElement = ToOne<ObjectBoxElement>();
  String? valueUri;
  ToOne<ObjectBoxElement> valueUriElement = ToOne<ObjectBoxElement>();
  String? valueCode;
  ToOne<ObjectBoxElement> valueCodeElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement> valueDateTimeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxValueSetContains {
  ObjectBoxValueSetContains({
    this.id,
    List<ObjectBoxFhirExtension>? extension_,
    List<ObjectBoxFhirExtension>? modifierExtension,
    this.system,
    ObjectBoxElement? systemElement,
    this.abstract_,
    ObjectBoxElement? abstractElement,
    this.inactive,
    ObjectBoxElement? inactiveElement,
    this.version,
    ObjectBoxElement? versionElement,
    this.code,
    ObjectBoxElement? codeElement,
    this.display,
    ObjectBoxElement? displayElement,
    List<ObjectBoxValueSetDesignation>? designation,
    List<ObjectBoxValueSetContains>? contains,
  }) {
    this.extension_.addAll(extension_ ?? []);
    this.modifierExtension.addAll(modifierExtension ?? []);
    this.systemElement.target = systemElement;
    this.abstractElement.target = abstractElement;
    this.inactiveElement.target = inactiveElement;
    this.versionElement.target = versionElement;
    this.codeElement.target = codeElement;
    this.displayElement.target = displayElement;
    this.designation.addAll(designation ?? []);
    this.contains.addAll(contains ?? []);
  }

  @Id()
  int? dbId;
  String? id;
  ToOne<ObjectBoxElement> idElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxFhirExtension> extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension> modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? system;
  ToOne<ObjectBoxElement> systemElement = ToOne<ObjectBoxElement>();
  bool? abstract_;
  ToOne<ObjectBoxElement> abstractElement = ToOne<ObjectBoxElement>();
  bool? inactive;
  ToOne<ObjectBoxElement> inactiveElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement> versionElement = ToOne<ObjectBoxElement>();
  String? code;
  ToOne<ObjectBoxElement> codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement> displayElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetDesignation> designation =
      ToMany<ObjectBoxValueSetDesignation>();
  ToMany<ObjectBoxValueSetContains> contains =
      ToMany<ObjectBoxValueSetContains>();
}

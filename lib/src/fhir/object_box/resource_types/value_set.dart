// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxValueSet {
  ObjectBoxValueSet({
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
    this.identifier,
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
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.immutable,
    this.immutableElement,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.compose,
    this.expansion,
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
  ToMany<ObjectBoxIdentifier>? identifier = ToMany<ObjectBoxIdentifier>();
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
  String? date;
  ToOne<ObjectBoxElement>? dateElement = ToOne<ObjectBoxElement>();
  String? publisher;
  ToOne<ObjectBoxElement>? publisherElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxContactDetail>? contact = ToMany<ObjectBoxContactDetail>();
  String? description;
  ToOne<ObjectBoxElement>? descriptionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxUsageContext>? useContext = ToMany<ObjectBoxUsageContext>();
  ToMany<ObjectBoxCodeableConcept>? jurisdiction =
      ToMany<ObjectBoxCodeableConcept>();
  bool? immutable;
  ToOne<ObjectBoxElement>? immutableElement = ToOne<ObjectBoxElement>();
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxValueSetCompose>? compose = ToOne<ObjectBoxValueSetCompose>();
  ToOne<ObjectBoxValueSetExpansion>? expansion =
      ToOne<ObjectBoxValueSetExpansion>();
}

@Entity()
class ObjectBoxValueSetCompose {
  ObjectBoxValueSetCompose({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.lockedDate,
    this.lockedDateElement,
    this.inactive,
    this.inactiveElement,
    required this.include,
    this.exclude,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? lockedDate;
  ToOne<ObjectBoxElement>? lockedDateElement = ToOne<ObjectBoxElement>();
  bool? inactive;
  ToOne<ObjectBoxElement>? inactiveElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetInclude> include = ToMany<ObjectBoxValueSetInclude>();
  ToMany<ObjectBoxValueSetInclude>? exclude =
      ToMany<ObjectBoxValueSetInclude>();
}

@Entity()
class ObjectBoxValueSetInclude {
  ObjectBoxValueSetInclude({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.system,
    this.systemElement,
    this.version,
    this.versionElement,
    this.concept,
    this.filter,
    this.valueSet,
    this.valueSetElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? system;
  ToOne<ObjectBoxElement>? systemElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetConcept>? concept =
      ToMany<ObjectBoxValueSetConcept>();
  ToMany<ObjectBoxValueSetFilter>? filter = ToMany<ObjectBoxValueSetFilter>();
  List<String>? valueSet;
  ToMany<ObjectBoxElement>? valueSetElement = ToMany<ObjectBoxElement>();
}

@Entity()
class ObjectBoxValueSetConcept {
  ObjectBoxValueSetConcept({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement>? displayElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetDesignation>? designation =
      ToMany<ObjectBoxValueSetDesignation>();
}

@Entity()
class ObjectBoxValueSetDesignation {
  ObjectBoxValueSetDesignation({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.language,
    this.languageElement,
    this.use,
    required this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? language;
  ToOne<ObjectBoxElement>? languageElement = ToOne<ObjectBoxElement>();
  ToOne<ObjectBoxCoding>? use = ToOne<ObjectBoxCoding>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxValueSetFilter {
  ObjectBoxValueSetFilter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.property,
    this.propertyElement,
    required this.op,
    this.opElement,
    required this.value,
    this.valueElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String property;
  ToOne<ObjectBoxElement>? propertyElement = ToOne<ObjectBoxElement>();
  String op;
  ToOne<ObjectBoxElement>? opElement = ToOne<ObjectBoxElement>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxValueSetExpansion {
  ObjectBoxValueSetExpansion({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.identifierElement,
    required this.timestamp,
    this.timestampElement,
    this.total,
    this.totalElement,
    this.offset,
    this.offsetElement,
    this.parameter,
    this.contains,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? identifier;
  ToOne<ObjectBoxElement>? identifierElement = ToOne<ObjectBoxElement>();
  String timestamp;
  ToOne<ObjectBoxElement>? timestampElement = ToOne<ObjectBoxElement>();
  int? total;
  ToOne<ObjectBoxElement>? totalElement = ToOne<ObjectBoxElement>();
  int? offset;
  ToOne<ObjectBoxElement>? offsetElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetParameter>? parameter =
      ToMany<ObjectBoxValueSetParameter>();
  ToMany<ObjectBoxValueSetContains>? contains =
      ToMany<ObjectBoxValueSetContains>();
}

@Entity()
class ObjectBoxValueSetParameter {
  ObjectBoxValueSetParameter({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.name,
    this.nameElement,
    this.valueString,
    this.valueStringElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueInteger,
    this.valueIntegerElement,
    this.valueDecimal,
    this.valueDecimalElement,
    this.valueUri,
    this.valueUriElement,
    this.valueCode,
    this.valueCodeElement,
    this.valueDateTime,
    this.valueDateTimeElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String name;
  ToOne<ObjectBoxElement>? nameElement = ToOne<ObjectBoxElement>();
  String? valueString;
  ToOne<ObjectBoxElement>? valueStringElement = ToOne<ObjectBoxElement>();
  bool? valueBoolean;
  ToOne<ObjectBoxElement>? valueBooleanElement = ToOne<ObjectBoxElement>();
  int? valueInteger;
  ToOne<ObjectBoxElement>? valueIntegerElement = ToOne<ObjectBoxElement>();
  double? valueDecimal;
  ToOne<ObjectBoxElement>? valueDecimalElement = ToOne<ObjectBoxElement>();
  String? valueUri;
  ToOne<ObjectBoxElement>? valueUriElement = ToOne<ObjectBoxElement>();
  String? valueCode;
  ToOne<ObjectBoxElement>? valueCodeElement = ToOne<ObjectBoxElement>();
  String? valueDateTime;
  ToOne<ObjectBoxElement>? valueDateTimeElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxValueSetContains {
  ObjectBoxValueSetContains({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.system,
    this.systemElement,
    this.abstract_,
    this.abstractElement,
    this.inactive,
    this.inactiveElement,
    this.version,
    this.versionElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.designation,
    this.contains,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? system;
  ToOne<ObjectBoxElement>? systemElement = ToOne<ObjectBoxElement>();
  bool? abstract_;
  ToOne<ObjectBoxElement>? abstractElement = ToOne<ObjectBoxElement>();
  bool? inactive;
  ToOne<ObjectBoxElement>? inactiveElement = ToOne<ObjectBoxElement>();
  String? version;
  ToOne<ObjectBoxElement>? versionElement = ToOne<ObjectBoxElement>();
  String? code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement>? displayElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxValueSetDesignation>? designation =
      ToMany<ObjectBoxValueSetDesignation>();
  ToMany<ObjectBoxValueSetContains>? contains =
      ToMany<ObjectBoxValueSetContains>();
}

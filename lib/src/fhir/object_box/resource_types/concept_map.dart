// ignore_for_file: public_member_api_docs

import 'package:fhir_r4/src/fhir/object_box/object_box.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ObjectBoxConceptMap {
  ObjectBoxConceptMap({
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
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.sourceUri,
    this.sourceUriElement,
    this.sourceCanonical,
    this.sourceCanonicalElement,
    this.targetUri,
    this.targetUriElement,
    this.targetCanonical,
    this.targetCanonicalElement,
    this.group,
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
  ToOne<ObjectBoxIdentifier>? identifier = ToOne<ObjectBoxIdentifier>();
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
  String? purpose;
  ToOne<ObjectBoxElement>? purposeElement = ToOne<ObjectBoxElement>();
  String? copyright;
  ToOne<ObjectBoxElement>? copyrightElement = ToOne<ObjectBoxElement>();
  String? sourceUri;
  ToOne<ObjectBoxElement>? sourceUriElement = ToOne<ObjectBoxElement>();
  String? sourceCanonical;
  ToOne<ObjectBoxElement>? sourceCanonicalElement = ToOne<ObjectBoxElement>();
  String? targetUri;
  ToOne<ObjectBoxElement>? targetUriElement = ToOne<ObjectBoxElement>();
  String? targetCanonical;
  ToOne<ObjectBoxElement>? targetCanonicalElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxConceptMapGroup>? group = ToMany<ObjectBoxConceptMapGroup>();
}

@Entity()
class ObjectBoxConceptMapGroup {
  ObjectBoxConceptMapGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.source,
    this.sourceElement,
    this.sourceVersion,
    this.sourceVersionElement,
    this.target,
    this.targetElement,
    this.targetVersion,
    this.targetVersionElement,
    required this.element,
    this.unmapped,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? source;
  ToOne<ObjectBoxElement>? sourceElement = ToOne<ObjectBoxElement>();
  String? sourceVersion;
  ToOne<ObjectBoxElement>? sourceVersionElement = ToOne<ObjectBoxElement>();
  String? target;
  ToOne<ObjectBoxElement>? targetElement = ToOne<ObjectBoxElement>();
  String? targetVersion;
  ToOne<ObjectBoxElement>? targetVersionElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxConceptMapElement> element =
      ToMany<ObjectBoxConceptMapElement>();
  ToOne<ObjectBoxConceptMapUnmapped>? unmapped =
      ToOne<ObjectBoxConceptMapUnmapped>();
}

@Entity()
class ObjectBoxConceptMapElement {
  ObjectBoxConceptMapElement({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.target,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement>? displayElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxConceptMapTarget>? target =
      ToMany<ObjectBoxConceptMapTarget>();
}

@Entity()
class ObjectBoxConceptMapTarget {
  ObjectBoxConceptMapTarget({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    required this.equivalence,
    this.equivalenceElement,
    this.comment,
    this.commentElement,
    this.dependsOn,
    this.product,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String? code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement>? displayElement = ToOne<ObjectBoxElement>();
  String equivalence;
  ToOne<ObjectBoxElement>? equivalenceElement = ToOne<ObjectBoxElement>();
  String? comment;
  ToOne<ObjectBoxElement>? commentElement = ToOne<ObjectBoxElement>();
  ToMany<ObjectBoxConceptMapDependsOn>? dependsOn =
      ToMany<ObjectBoxConceptMapDependsOn>();
  ToMany<ObjectBoxConceptMapDependsOn>? product =
      ToMany<ObjectBoxConceptMapDependsOn>();
}

@Entity()
class ObjectBoxConceptMapDependsOn {
  ObjectBoxConceptMapDependsOn({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.property,
    this.propertyElement,
    this.system,
    this.systemElement,
    required this.value,
    this.valueElement,
    this.display,
    this.displayElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String property;
  ToOne<ObjectBoxElement>? propertyElement = ToOne<ObjectBoxElement>();
  String? system;
  ToOne<ObjectBoxElement>? systemElement = ToOne<ObjectBoxElement>();
  String value;
  ToOne<ObjectBoxElement>? valueElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement>? displayElement = ToOne<ObjectBoxElement>();
}

@Entity()
class ObjectBoxConceptMapUnmapped {
  ObjectBoxConceptMapUnmapped({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    this.modeElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.url,
    this.urlElement,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<ObjectBoxFhirExtension>? extension_ = ToMany<ObjectBoxFhirExtension>();
  ToMany<ObjectBoxFhirExtension>? modifierExtension =
      ToMany<ObjectBoxFhirExtension>();
  String mode;
  ToOne<ObjectBoxElement>? modeElement = ToOne<ObjectBoxElement>();
  String? code;
  ToOne<ObjectBoxElement>? codeElement = ToOne<ObjectBoxElement>();
  String? display;
  ToOne<ObjectBoxElement>? displayElement = ToOne<ObjectBoxElement>();
  String? url;
  ToOne<ObjectBoxElement>? urlElement = ToOne<ObjectBoxElement>();
}

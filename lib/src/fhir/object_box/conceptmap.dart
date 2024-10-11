import 'package:objectbox/objectbox.dart';
import 'object_box.dart';

@Entity()
class ConceptMap extends Resource {
  ConceptMap({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.url,
    this.identifier,
    this.version,
    this.name,
    this.title,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.copyright,
    this.sourceUri,
    this.sourceCanonical,
    this.targetUri,
    this.targetCanonical,
    this.group,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? url;
  ToOne<Identifier>? identifier = ToOne<Identifier>();
  String? version;
  String? name;
  String? title;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? purpose;
  String? copyright;
  String? sourceUri;
  String? sourceCanonical;
  String? targetUri;
  String? targetCanonical;
  ToMany<ConceptMapGroup>? group = ToMany<ConceptMapGroup>();
}

@Entity()
class ConceptMapGroup {
  ConceptMapGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.source,
    this.sourceVersion,
    this.target,
    this.targetVersion,
    required this.element,
    this.unmapped,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? source;
  String? sourceVersion;
  String? target;
  String? targetVersion;
  ToMany<ConceptMapElement> element = ToMany<ConceptMapElement>();
  ToOne<ConceptMapUnmapped>? unmapped = ToOne<ConceptMapUnmapped>();
}

@Entity()
class ConceptMapElement {
  ConceptMapElement({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.display,
    this.target,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? code;
  String? display;
  ToMany<ConceptMapTarget>? target = ToMany<ConceptMapTarget>();
}

@Entity()
class ConceptMapTarget {
  ConceptMapTarget({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.display,
    required this.equivalence,
    this.comment,
    this.dependsOn,
    this.product,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? code;
  String? display;
  String equivalence;
  String? comment;
  ToMany<ConceptMapDependsOn>? dependsOn = ToMany<ConceptMapDependsOn>();
  ToMany<ConceptMapDependsOn>? product = ToMany<ConceptMapDependsOn>();
}

@Entity()
class ConceptMapDependsOn {
  ConceptMapDependsOn({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.property,
    this.system,
    required this.value,
    this.display,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String property;
  String? system;
  String value;
  String? display;
}

@Entity()
class ConceptMapUnmapped {
  ConceptMapUnmapped({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.mode,
    this.code,
    this.display,
    this.url,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String mode;
  String? code;
  String? display;
  String? url;
}

import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class DocumentManifest extends DomainResource {
  final Identifier? masterIdentifier;
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final CodeableConcept? type;
  final Reference? subject;
  final FhirDateTime? created;
  final Element? createdElement;
  final List<Reference>? author;
  final List<Reference>? recipient;
  final FhirUri? source;
  final Element? sourceElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<Reference> content;
  final List<BackboneElement>? related;

  DocumentManifest({
    super.id,
    super.meta,
    super.implicitRules,
super.implicitRulesElement,
    super.language,
super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.masterIdentifier,
    this.identifier,
    required this.status,
this.statusElement,
    this.type,
    this.subject,
    this.created,
this.createdElement,
    this.author,
    this.recipient,
    this.source,
this.sourceElement,
    this.description,
this.descriptionElement,
    required this.content,
    this.related,
  }) : super(resourceType: R4ResourceType.DocumentManifest);

@override
DocumentManifest clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class DocumentManifestRelated extends BackboneElement {
  final Identifier? identifier;
  final Reference? ref;

  DocumentManifestRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.ref,
  });

@override
DocumentManifestRelated clone() => throw UnimplementedError();
}


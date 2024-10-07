import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class DocumentManifest extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  final List<DocumentManifestRelated>? related;
  @override
  DocumentManifest clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class DocumentManifestRelated extends BackboneElement {
  DocumentManifestRelated({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.ref,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final Identifier? identifier;
  final Reference? ref;
  @override
  DocumentManifestRelated clone() => throw UnimplementedError();
}

import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [FhirMeta] /// The metadata about a resource. This is content in the resource that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.
class FhirMeta extends DataType {
  FhirMeta({
    super.id,
    super.extension_,
    this.versionId,
    this.versionIdElement,
    this.lastUpdated,
    this.lastUpdatedElement,
    this.source,
    this.sourceElement,
    this.profile,
    this.profileElement,
    this.security,
    this.tag,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [versionId] /// The version specific identifier, as it appears in the version portion of
  /// the URL. This value changes when the resource is created, updated, or
  /// deleted.
  final FhirId? versionId;
  final Element? versionIdElement;

  /// [lastUpdated] /// When the resource last changed - e.g. when the version changed.
  final FhirInstant? lastUpdated;
  final Element? lastUpdatedElement;

  /// [source] /// A uri that identifies the source system of the resource. This provides a
  /// minimal amount of [Provenance](provenance.html#) information that can be
  /// used to track or differentiate the source of information in the resource.
  /// The source may identify another FHIR server, document, message, database,
  /// etc.
  final FhirUri? source;
  final Element? sourceElement;

  /// [profile] /// A list of profiles (references to
  /// [StructureDefinition](structuredefinition.html#) resources) that this
  /// resource claims to conform to. The URL is a reference to
  /// [StructureDefinition.url](structuredefinition-definitions.html#StructureDefinition.url).
  final List<FhirCanonical>? profile;
  final List<Element>? profileElement;

  /// [security] /// Security labels applied to this resource. These tags connect specific
  /// resources to the overall security policy and infrastructure.
  final List<Coding>? security;

  /// [tag] /// Tags applied to this resource. Tags are intended to be used to identify and
  /// relate resources to process and workflow, and applications are not required
  /// to consider the tags when interpreting the meaning of a resource.
  final List<Coding>? tag;
  @override
  FhirMeta clone() => throw UnimplementedError();
  FhirMeta copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirId? versionId,
    Element? versionIdElement,
    FhirInstant? lastUpdated,
    Element? lastUpdatedElement,
    FhirUri? source,
    Element? sourceElement,
    List<FhirCanonical>? profile,
    List<Element>? profileElement,
    List<Coding>? security,
    List<Coding>? tag,
  }) {
    return FhirMeta(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      versionId: versionId ?? this.versionId,
      versionIdElement: versionIdElement ?? this.versionIdElement,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      lastUpdatedElement: lastUpdatedElement ?? this.lastUpdatedElement,
      source: source ?? this.source,
      sourceElement: sourceElement ?? this.sourceElement,
      profile: profile ?? this.profile,
      profileElement: profileElement ?? this.profileElement,
      security: security ?? this.security,
      tag: tag ?? this.tag,
    );
  }
}

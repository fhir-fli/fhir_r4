import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Binary] /// A resource that represents the data of a single raw artifact as digital
/// content accessible in its native format. A Binary resource can contain any
/// content, whether text, image, pdf, zip archive, etc.
class Binary extends DomainResource {
  Binary({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    required this.contentType,
    this.contentTypeElement,
    this.securityContext,
    this.data,
    this.dataElement,
  }) : super(resourceType: R4ResourceType.Binary);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [contentType] /// MimeType of the binary content represented as a standard MimeType (BCP 13).
  final FhirCode contentType;
  final Element? contentTypeElement;

  /// [securityContext] /// This element identifies another resource that can be used as a proxy of the
  /// security sensitivity to use when deciding and enforcing access control
  /// rules for the Binary resource. Given that the Binary resource contains very
  /// few elements that can be used to determine the sensitivity of the data and
  /// relationships to individuals, the referenced resource stands in as a proxy
  /// equivalent for this purpose. This referenced resource may be related to the
  /// Binary (e.g. Media, DocumentReference), or may be some non-related Resource
  /// purely as a security proxy. E.g. to identify that the binary resource
  /// relates to a patient, and access should only be granted to applications
  /// that have access to the patient.
  final Reference? securityContext;

  /// [data] /// The actual content, base64 encoded.
  final FhirBase64Binary? data;
  final Element? dataElement;
  @override
  Binary clone() => throw UnimplementedError();
  Binary copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    FhirCode? contentType,
    Element? contentTypeElement,
    Reference? securityContext,
    FhirBase64Binary? data,
    Element? dataElement,
  }) {
    return Binary(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      contentType: contentType ?? this.contentType,
      contentTypeElement: contentTypeElement ?? this.contentTypeElement,
      securityContext: securityContext ?? this.securityContext,
      data: data ?? this.data,
      dataElement: dataElement ?? this.dataElement,
    );
  }
}

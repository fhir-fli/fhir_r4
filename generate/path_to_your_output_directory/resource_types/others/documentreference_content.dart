import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DocumentReference_Content] A reference to a document of any kind for
/// any purpose. While the term “document” implies a more narrow focus, for
/// this resource this "document" encompasses *any* serialized object with a
/// mime-type, it includes formal patient-centric documents (CDA), clinical
/// notes, scanned paper, non-patient specific documents like policy text, as
/// well as a photo, video, or audio recording acquired or used in healthcare.
/// The DocumentReference resource provides metadata about the document so that
/// the document can be discovered and managed.  The actual content may be
/// inline base64 encoded data or provided by direct reference.

@freezed
class DocumentReference_Content with _$DocumentReference_Content {
  const DocumentReference_Content._();

  const factory DocumentReference_Content({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [attachment] The document or URL of the document along with critical
/// metadata to prove content has integrity.

    @JsonKey(name: 'attachment') Attachment? attachment,
/// [profile] An identifier of the document constraints, encoding,
/// structure, and template that the document conforms to beyond the base
/// format indicated in the mimeType.

    @JsonKey(name: 'profile') List<List<DocumentReference_Profile>>? profile,
  }) = _$DocumentReference_Content;

  @override
  String get fhirType => 'DocumentReference_Content';

  factory DocumentReference_Content.fromJson(Map<String, dynamic> json) =>
      _$DocumentReference_ContentFromJson(json);

  factory DocumentReference_Content.fromYaml(dynamic yaml) => yaml is String
      ? DocumentReference_Content.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DocumentReference_Content.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DocumentReference_Content cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DocumentReference_Content.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DocumentReference_ContentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

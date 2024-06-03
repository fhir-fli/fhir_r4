import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CapabilityStatement_Messaging] A Capability Statement documents a set
/// of capabilities (behaviors) of a FHIR Server or Client for a particular
/// version of FHIR that may be used as a statement of actual server
/// functionality or a statement of required or desired server implementation.

@freezed
class CapabilityStatement_Messaging with _$CapabilityStatement_Messaging {
  const CapabilityStatement_Messaging._();

  const factory CapabilityStatement_Messaging({
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
/// [endpoint] An endpoint (network accessible address) to which messages
/// and/or replies are to be sent.

    @JsonKey(name: 'endpoint') List<List<CapabilityStatement_Endpoint>>? endpoint,
/// [reliableCache] Length if the receiver's reliable messaging cache in
/// minutes (if a receiver) or how long the cache length on the receiver should
/// be (if a sender).

    @JsonKey(name: 'reliableCache') FhirUnsignedInt? reliableCache,
/// [_reliableCache] Extensions for reliableCache

    @JsonKey(name: '_reliableCache') PrimitiveElement? reliableCacheElement,
/// [documentation] Documentation about the system's messaging capabilities
/// for this endpoint not otherwise documented by the capability statement.
/// For example, the process for becoming an authorized messaging exchange
/// partner.

    @JsonKey(name: 'documentation') FhirMarkdown? documentation,
/// [_documentation] Extensions for documentation

    @JsonKey(name: '_documentation') PrimitiveElement? documentationElement,
/// [supportedMessage] References to message definitions for messages this
/// system can send or receive.

    @JsonKey(name: 'supportedMessage') List<List<CapabilityStatement_SupportedMessage>>? supportedMessage,
  }) = _$CapabilityStatement_Messaging;

  @override
  String get fhirType => 'CapabilityStatement_Messaging';

  factory CapabilityStatement_Messaging.fromJson(Map<String, dynamic> json) =>
      _$CapabilityStatement_MessagingFromJson(json);

  factory CapabilityStatement_Messaging.fromYaml(dynamic yaml) => yaml is String
      ? CapabilityStatement_Messaging.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CapabilityStatement_Messaging.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CapabilityStatement_Messaging cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CapabilityStatement_Messaging.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CapabilityStatement_MessagingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

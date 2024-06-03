import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MessageDefinition_Focus] Defines the characteristics of a message that
/// can be shared between systems, including the type of event that initiates
/// the message, the content to be transmitted and what response(s), if any,
/// are permitted.

@freezed
class MessageDefinition_Focus with _$MessageDefinition_Focus {
  const MessageDefinition_Focus._();

  const factory MessageDefinition_Focus({
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
/// [code] The kind of resource that must be the focus for this message.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [profile] A profile that reflects constraints for the focal resource
/// (and potentially for related resources).

    @JsonKey(name: 'profile') FhirCanonical? profile,
/// [min] Identifies the minimum number of resources of this type that must
/// be pointed to by a message in order for it to be valid against this
/// MessageDefinition.

    @JsonKey(name: 'min') FhirUnsignedInt? min,
/// [_min] Extensions for min

    @JsonKey(name: '_min') PrimitiveElement? minElement,
/// [max] Identifies the maximum number of resources of this type that must
/// be pointed to by a message in order for it to be valid against this
/// MessageDefinition.

    @JsonKey(name: 'max') String? max,
/// [_max] Extensions for max

    @JsonKey(name: '_max') PrimitiveElement? maxElement,
  }) = _$MessageDefinition_Focus;

  @override
  String get fhirType => 'MessageDefinition_Focus';

  factory MessageDefinition_Focus.fromJson(Map<String, dynamic> json) =>
      _$MessageDefinition_FocusFromJson(json);

  factory MessageDefinition_Focus.fromYaml(dynamic yaml) => yaml is String
      ? MessageDefinition_Focus.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MessageDefinition_Focus.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MessageDefinition_Focus cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MessageDefinition_Focus.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MessageDefinition_FocusFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

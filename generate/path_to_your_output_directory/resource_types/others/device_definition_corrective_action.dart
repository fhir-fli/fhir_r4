import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [DeviceDefinition_CorrectiveAction] The characteristics, operational
/// status and capabilities of a medical-related component of a medical device.

@freezed
class DeviceDefinition_CorrectiveAction with _$DeviceDefinition_CorrectiveAction {
  const DeviceDefinition_CorrectiveAction._();

  const factory DeviceDefinition_CorrectiveAction({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [recall] Whether the last corrective action known for this device was a
/// recall.

    @JsonKey(name: 'recall') FhirBoolean? recall,
/// [_recall] Extensions for recall

    @JsonKey(name: '_recall') PrimitiveElement? recallElement,
/// [scope] The scope of the corrective action - whether the action
/// targeted all units of a given device model, or only a specific set of
/// batches identified by lot numbers, or individually identified devices
/// identified by the serial name.

    @JsonKey(name: 'scope') FhirCode? scope,
/// [_scope] Extensions for scope

    @JsonKey(name: '_scope') PrimitiveElement? scopeElement,
/// [period] Start and end dates of the  corrective action.

    @JsonKey(name: 'period') Period? period,
  }) = _$DeviceDefinition_CorrectiveAction;

  @override
  String get fhirType => 'DeviceDefinition_CorrectiveAction';

  factory DeviceDefinition_CorrectiveAction.fromJson(Map<String, dynamic> json) =>
      _$DeviceDefinition_CorrectiveActionFromJson(json);

  factory DeviceDefinition_CorrectiveAction.fromYaml(dynamic yaml) => yaml is String
      ? DeviceDefinition_CorrectiveAction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? DeviceDefinition_CorrectiveAction.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'DeviceDefinition_CorrectiveAction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory DeviceDefinition_CorrectiveAction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DeviceDefinition_CorrectiveActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

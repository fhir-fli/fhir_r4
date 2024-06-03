import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ExampleScenario_Operation] Example of workflow instance.

@freezed
class ExampleScenario_Operation with _$ExampleScenario_Operation {
  const ExampleScenario_Operation._();

  const factory ExampleScenario_Operation({
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
/// [type] The standardized type of action (FHIR or otherwise).

    @JsonKey(name: 'type') Coding? type,
/// [title] A short descriptive label the step to be used in tables or
/// diagrams.

    @JsonKey(name: 'title') String? title,
/// [_title] Extensions for title

    @JsonKey(name: '_title') PrimitiveElement? titleElement,
/// [initiator] The system that invokes the action/transmits the data.

    @JsonKey(name: 'initiator') String? initiator,
/// [_initiator] Extensions for initiator

    @JsonKey(name: '_initiator') PrimitiveElement? initiatorElement,
/// [receiver] The system on which the action is invoked/receives the data.

    @JsonKey(name: 'receiver') String? receiver,
/// [_receiver] Extensions for receiver

    @JsonKey(name: '_receiver') PrimitiveElement? receiverElement,
/// [description] An explanation of what the operation represents and what
/// it does.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [initiatorActive] If false, the initiator is deactivated right after
/// the operation.

    @JsonKey(name: 'initiatorActive') FhirBoolean? initiatorActive,
/// [_initiatorActive] Extensions for initiatorActive

    @JsonKey(name: '_initiatorActive') PrimitiveElement? initiatorActiveElement,
/// [receiverActive] If false, the receiver is deactivated right after the
/// operation.

    @JsonKey(name: 'receiverActive') FhirBoolean? receiverActive,
/// [_receiverActive] Extensions for receiverActive

    @JsonKey(name: '_receiverActive') PrimitiveElement? receiverActiveElement,
/// [request] A reference to the instance that is transmitted from
/// requester to receiver as part of the invocation of the operation.

    @JsonKey(name: 'request') ExampleScenario_ContainedInstance? request,
/// [response] A reference to the instance that is transmitted from
/// receiver to requester as part of the operation's synchronous response (if
/// any).

    @JsonKey(name: 'response') ExampleScenario_ContainedInstance? response,
  }) = _$ExampleScenario_Operation;

  @override
  String get fhirType => 'ExampleScenario_Operation';

  factory ExampleScenario_Operation.fromJson(Map<String, dynamic> json) =>
      _$ExampleScenario_OperationFromJson(json);

  factory ExampleScenario_Operation.fromYaml(dynamic yaml) => yaml is String
      ? ExampleScenario_Operation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExampleScenario_Operation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExampleScenario_Operation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExampleScenario_Operation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExampleScenario_OperationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

/// /// [Task_Restriction] A task to be performed as a part of a workflow and
/// the related informations like inputs, outputs and execution progress. While
/// very simple workflows can be implemented with Request alone, most workflows
/// would require a Task (explicit or contained) as a means to track the
/// execution data (i.e. inputs, outputs, status). Please refer to the workflow
/// page for more details.

@freezed
class Task_Restriction with _$Task_Restriction {
  const Task_Restriction._();

  const factory Task_Restriction({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [repetitions] Indicates the number of times the requested action should
/// occur.

    @JsonKey(name: 'repetitions') FhirPositiveInt? repetitions,
/// /// [_repetitions] Extensions for repetitions

    @JsonKey(name: '_repetitions') FhirElement? repetitionsElement,
/// /// [period] The time-period for which fulfillment is sought. This must
/// fall within the overall time period authorized in the referenced request.
/// E.g. ServiceRequest.occurance[x].

    @JsonKey(name: 'period') Period? period,
/// /// [recipient] For requests that are targeted to more than one potential
/// recipient/target, to identify who is fulfillment is sought for.

    @JsonKey(name: 'recipient') List<List<Reference>>? recipient,
  }) = _$Task_Restriction;

  @override
  String get fhirType => 'Task_Restriction';

  factory Task_Restriction.fromJson(Map<String, dynamic> json) =>
      _$Task_RestrictionFromJson(json);

  factory Task_Restriction.fromYaml(dynamic yaml) => yaml is String
      ? Task_Restriction.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Task_Restriction.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Task_Restriction cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Task_Restriction.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Task_RestrictionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

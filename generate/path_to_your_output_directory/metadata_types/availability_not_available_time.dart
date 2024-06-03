import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Availability_NotAvailableTime] Availability data for an {item},
/// declaring what days/times are available, and any exceptions. The exceptions
/// could be textual only, e.g. Public holidays, or could be time period
/// specific and indicate a specific years dates.

@freezed
class Availability_NotAvailableTime with _$Availability_NotAvailableTime {
  const Availability_NotAvailableTime._();

  const factory Availability_NotAvailableTime({
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
/// [description] The reason that can be presented to the user as to why
/// this time is not available.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [during] The {item} is not available (seasonally or for a public
/// holiday) during this period.

    @JsonKey(name: 'during') Period? during,
  }) = _$Availability_NotAvailableTime;

  @override
  String get fhirType => 'Availability_NotAvailableTime';

  factory Availability_NotAvailableTime.fromJson(Map<String, dynamic> json) =>
      _$Availability_NotAvailableTimeFromJson(json);

  factory Availability_NotAvailableTime.fromYaml(dynamic yaml) => yaml is String
      ? Availability_NotAvailableTime.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Availability_NotAvailableTime.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Availability_NotAvailableTime cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Availability_NotAvailableTime.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Availability_NotAvailableTimeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

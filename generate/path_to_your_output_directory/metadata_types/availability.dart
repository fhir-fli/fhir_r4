import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Availability] Availability data for an {item}, declaring what
/// days/times are available, and any exceptions. The exceptions could be
/// textual only, e.g. Public holidays, or could be time period specific and
/// indicate a specific years dates.

@freezed
class Availability with _$Availability {
  const Availability._();

  const factory Availability({
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
/// [period] The period of time when the availability is applicable.  For
/// example, you might use this property to indicate the period during the
/// holiday season when you close an hour early.

    @JsonKey(name: 'period') Period? period,
/// [availableTime] A collection of times that the {item} is available.

    @JsonKey(name: 'availableTime') List<List<Availability_AvailableTime>>? availableTime,
/// [notAvailableTime] The {item} is not available during this period of
/// time due to the provided reason.

    @JsonKey(name: 'notAvailableTime') List<List<Availability_NotAvailableTime>>? notAvailableTime,
  }) = _$Availability;

  @override
  String get fhirType => 'Availability';

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);

  factory Availability.fromYaml(dynamic yaml) => yaml is String
      ? Availability.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Availability.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Availability cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Availability.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AvailabilityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

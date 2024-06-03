import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Location_Position] Details and position information for a place where
/// services are provided and resources and participants may be stored, found,
/// contained, or accommodated.

@freezed
class Location_Position with _$Location_Position {
  const Location_Position._();

  const factory Location_Position({
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
/// [longitude] Longitude. The value domain and the interpretation are the
/// same as for the text of the longitude element in KML (see notes on Location
/// main page).

    @JsonKey(name: 'longitude') FhirDecimal? longitude,
/// [_longitude] Extensions for longitude

    @JsonKey(name: '_longitude') PrimitiveElement? longitudeElement,
/// [latitude] Latitude. The value domain and the interpretation are the
/// same as for the text of the latitude element in KML (see notes on Location
/// main page).

    @JsonKey(name: 'latitude') FhirDecimal? latitude,
/// [_latitude] Extensions for latitude

    @JsonKey(name: '_latitude') PrimitiveElement? latitudeElement,
/// [altitude] Altitude. The value domain and the interpretation are the
/// same as for the text of the altitude element in KML (see notes on Location
/// main page).

    @JsonKey(name: 'altitude') FhirDecimal? altitude,
/// [_altitude] Extensions for altitude

    @JsonKey(name: '_altitude') PrimitiveElement? altitudeElement,
  }) = _$Location_Position;

  @override
  String get fhirType => 'Location_Position';

  factory Location_Position.fromJson(Map<String, dynamic> json) =>
      _$Location_PositionFromJson(json);

  factory Location_Position.fromYaml(dynamic yaml) => yaml is String
      ? Location_Position.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Location_Position.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Location_Position cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Location_Position.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Location_PositionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

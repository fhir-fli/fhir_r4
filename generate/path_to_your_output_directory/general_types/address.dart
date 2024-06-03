/// /// [Address] An address expressed using postal conventions (as opposed to
/// GPS or other location definition formats).  This data type may be used to
/// convey addresses for use in delivering mail as well as for visiting
/// locations which might not be valid for mail delivery.  There are a variety
/// of postal address formats defined around the world.
The
/// ISO21090-codedString may be used to provide a coded representation of the
/// contents of strings in an Address.

@freezed
class Address with _$Address {
  const Address._();

  const factory Address({
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
/// /// [use] The purpose of this address.

    @JsonKey(name: 'use') dynamic? use,
/// /// [_use] Extensions for use

    @JsonKey(name: '_use') FhirElement? useElement,
/// /// [type] Distinguishes between physical addresses (those you can visit)
/// and mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
/// are both.

    @JsonKey(name: 'type') dynamic? type,
/// /// [_type] Extensions for type

    @JsonKey(name: '_type') FhirElement? typeElement,
/// /// [text] Specifies the entire address as it should be displayed e.g. on a
/// postal label. This may be provided instead of or as well as the specific
/// parts.

    @JsonKey(name: 'text') String? text,
/// /// [_text] Extensions for text

    @JsonKey(name: '_text') FhirElement? textElement,
/// /// [line] This component contains the house number, apartment number,
/// street name, street direction,  P.O. Box number, delivery hints, and
/// similar address information.

    @JsonKey(name: 'line') List<List<String>>? line,
/// /// [_line] Extensions for line

    @JsonKey(name: '_line') List<FhirElement>? lineElement,
/// /// [city] The name of the city, town, suburb, village or other community
/// or delivery center.

    @JsonKey(name: 'city') String? city,
/// /// [_city] Extensions for city

    @JsonKey(name: '_city') FhirElement? cityElement,
/// /// [district] The name of the administrative area (county).

    @JsonKey(name: 'district') String? district,
/// /// [_district] Extensions for district

    @JsonKey(name: '_district') FhirElement? districtElement,
/// /// [state] Sub-unit of a country with limited sovereignty in a federally
/// organized country. A code may be used if codes are in common use (e.g. US 2
/// letter state codes).

    @JsonKey(name: 'state') String? state,
/// /// [_state] Extensions for state

    @JsonKey(name: '_state') FhirElement? stateElement,
/// /// [postalCode] A postal code designating a region defined by the postal
/// service.

    @JsonKey(name: 'postalCode') String? postalCode,
/// /// [_postalCode] Extensions for postalCode

    @JsonKey(name: '_postalCode') FhirElement? postalCodeElement,
/// /// [country] Country - a nation as commonly understood or generally
/// accepted.

    @JsonKey(name: 'country') String? country,
/// /// [_country] Extensions for country

    @JsonKey(name: '_country') FhirElement? countryElement,
/// /// [period] Time period when address was/is in use.

    @JsonKey(name: 'period') Period? period,
  }) = _$Address;

  @override
  String get fhirType => 'Address';

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  factory Address.fromYaml(dynamic yaml) => yaml is String
      ? Address.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Address.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Address cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Address.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AddressFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}

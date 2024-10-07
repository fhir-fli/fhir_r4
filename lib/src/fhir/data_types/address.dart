import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'address.g.dart';

/// [Address] /// An address expressed using postal conventions (as opposed to GPS or other
/// location definition formats). This data type may be used to convey
/// addresses for use in delivering mail as well as for visiting locations
/// which might not be valid for mail delivery. There are a variety of postal
/// address formats defined around the world.
@JsonSerializable()
class Address extends DataType {
  Address({
    super.id,
    super.extension_,
    this.use,
    this.useElement,
    this.type,
    this.typeElement,
    this.text,
    this.textElement,
    this.line,
    this.lineElement,
    this.city,
    this.cityElement,
    this.district,
    this.districtElement,
    this.state,
    this.stateElement,
    this.postalCode,
    this.postalCodeElement,
    this.country,
    this.countryElement,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'Address');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [use] /// The purpose of this address.
  @JsonKey(name: 'use')
  final FhirCode? use;
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [type] /// Distinguishes between physical addresses (those you can visit) and mailing
  /// addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.
  @JsonKey(name: 'type')
  final FhirCode? type;
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [text] /// Specifies the entire address as it should be displayed e.g. on a postal
  /// label. This may be provided instead of or as well as the specific parts.
  @JsonKey(name: 'text')
  final FhirString? text;
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [line] /// This component contains the house number, apartment number, street name,
  /// street direction, P.O. Box number, delivery hints, and similar address
  /// information.
  @JsonKey(name: 'line')
  final List<FhirString>? line;
  @JsonKey(name: '_line')
  final List<Element>? lineElement;

  /// [city] /// The name of the city, town, suburb, village or other community or delivery
  /// center.
  @JsonKey(name: 'city')
  final FhirString? city;
  @JsonKey(name: '_city')
  final Element? cityElement;

  /// [district] /// The name of the administrative area (county).
  @JsonKey(name: 'district')
  final FhirString? district;
  @JsonKey(name: '_district')
  final Element? districtElement;

  /// [state] /// Sub-unit of a country with limited sovereignty in a federally organized
  /// country. A code may be used if codes are in common use (e.g. US 2 letter
  /// state codes).
  @JsonKey(name: 'state')
  final FhirString? state;
  @JsonKey(name: '_state')
  final Element? stateElement;

  /// [postalCode] /// A postal code designating a region defined by the postal service.
  @JsonKey(name: 'postalCode')
  final FhirString? postalCode;
  @JsonKey(name: '_postalCode')
  final Element? postalCodeElement;

  /// [country] /// Country - a nation as commonly understood or generally accepted.
  @JsonKey(name: 'country')
  final FhirString? country;
  @JsonKey(name: '_country')
  final Element? countryElement;

  /// [period] /// Time period when address was/is in use.
  @JsonKey(name: 'period')
  final Period? period;
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  Address clone() => throw UnimplementedError();
  @override
  Address copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirCode? use,
    Element? useElement,
    FhirCode? type,
    Element? typeElement,
    FhirString? text,
    Element? textElement,
    List<FhirString>? line,
    List<Element>? lineElement,
    FhirString? city,
    Element? cityElement,
    FhirString? district,
    Element? districtElement,
    FhirString? state,
    Element? stateElement,
    FhirString? postalCode,
    Element? postalCodeElement,
    FhirString? country,
    Element? countryElement,
    Period? period,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Address(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      use: use ?? this.use,
      useElement: useElement ?? this.useElement,
      type: type ?? this.type,
      typeElement: typeElement ?? this.typeElement,
      text: text ?? this.text,
      textElement: textElement ?? this.textElement,
      line: line ?? this.line,
      lineElement: lineElement ?? this.lineElement,
      city: city ?? this.city,
      cityElement: cityElement ?? this.cityElement,
      district: district ?? this.district,
      districtElement: districtElement ?? this.districtElement,
      state: state ?? this.state,
      stateElement: stateElement ?? this.stateElement,
      postalCode: postalCode ?? this.postalCode,
      postalCodeElement: postalCodeElement ?? this.postalCodeElement,
      country: country ?? this.country,
      countryElement: countryElement ?? this.countryElement,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Address.fromYaml(dynamic yaml) => yaml is String
      ? Address.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Address.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Address cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Address.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Address.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

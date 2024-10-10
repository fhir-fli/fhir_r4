import 'dart:convert';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [Address] /// An address expressed using postal conventions (as opposed to GPS or other
/// location definition formats). This data type may be used to convey
/// addresses for use in delivering mail as well as for visiting locations
/// which might not be valid for mail delivery. There are a variety of postal
/// address formats defined around the world.
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
  });

  @override
  String get fhirType => 'Address';

  /// [use] /// The purpose of this address.
  final AddressUse? use;
  final Element? useElement;

  /// [type] /// Distinguishes between physical addresses (those you can visit) and mailing
  /// addresses (e.g. PO Boxes and care-of addresses). Most addresses are both.
  final AddressType? type;
  final Element? typeElement;

  /// [text] /// Specifies the entire address as it should be displayed e.g. on a postal
  /// label. This may be provided instead of or as well as the specific parts.
  final FhirString? text;
  final Element? textElement;

  /// [line] /// This component contains the house number, apartment number, street name,
  /// street direction, P.O. Box number, delivery hints, and similar address
  /// information.
  final List<FhirString>? line;
  final List<Element>? lineElement;

  /// [city] /// The name of the city, town, suburb, village or other community or delivery
  /// center.
  final FhirString? city;
  final Element? cityElement;

  /// [district] /// The name of the administrative area (county).
  final FhirString? district;
  final Element? districtElement;

  /// [state] /// Sub-unit of a country with limited sovereignty in a federally organized
  /// country. A code may be used if codes are in common use (e.g. US 2 letter
  /// state codes).
  final FhirString? state;
  final Element? stateElement;

  /// [postalCode] /// A postal code designating a region defined by the postal service.
  final FhirString? postalCode;
  final Element? postalCodeElement;

  /// [country] /// Country - a nation as commonly understood or generally accepted.
  final FhirString? country;
  final Element? countryElement;

  /// [period] /// Time period when address was/is in use.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (use != null) {
      json['use'] = use!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (text?.value != null) {
      json['text'] = text!.toJson();
    }
    if (textElement != null) {
      json['_text'] = textElement!.toJson();
    }
    if (line != null && line!.isNotEmpty) {
      json['line'] = line!.map((FhirString v) => v.toJson()).toList();
    }
    if (lineElement != null && lineElement!.isNotEmpty) {
      json['_line'] = lineElement!.map((Element v) => v.toJson()).toList();
    }
    if (city?.value != null) {
      json['city'] = city!.toJson();
    }
    if (cityElement != null) {
      json['_city'] = cityElement!.toJson();
    }
    if (district?.value != null) {
      json['district'] = district!.toJson();
    }
    if (districtElement != null) {
      json['_district'] = districtElement!.toJson();
    }
    if (state?.value != null) {
      json['state'] = state!.toJson();
    }
    if (stateElement != null) {
      json['_state'] = stateElement!.toJson();
    }
    if (postalCode?.value != null) {
      json['postalCode'] = postalCode!.toJson();
    }
    if (postalCodeElement != null) {
      json['_postalCode'] = postalCodeElement!.toJson();
    }
    if (country?.value != null) {
      json['country'] = country!.toJson();
    }
    if (countryElement != null) {
      json['_country'] = countryElement!.toJson();
    }
    if (period != null) {
      json['period'] = period!.toJson();
    }
    return json;
  }

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id'] != null ? FhirString.fromJson(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      use: json['use'] != null ? AddressUse.fromJson(json['use']) : null,
      useElement: json['_use'] != null
          ? Element.fromJson(json['_use'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null ? AddressType.fromJson(json['type']) : null,
      typeElement: json['_type'] != null
          ? Element.fromJson(json['_type'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null ? FhirString.fromJson(json['text']) : null,
      textElement: json['_text'] != null
          ? Element.fromJson(json['_text'] as Map<String, dynamic>)
          : null,
      line: json['line'] != null
          ? (json['line'] as List<dynamic>)
              .map<FhirString>((dynamic v) => FhirString.fromJson(v as dynamic))
              .toList()
          : null,
      lineElement: json['_line'] != null
          ? (json['_line'] as List<dynamic>)
              .map<Element>(
                  (dynamic v) => Element.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      city: json['city'] != null ? FhirString.fromJson(json['city']) : null,
      cityElement: json['_city'] != null
          ? Element.fromJson(json['_city'] as Map<String, dynamic>)
          : null,
      district: json['district'] != null
          ? FhirString.fromJson(json['district'])
          : null,
      districtElement: json['_district'] != null
          ? Element.fromJson(json['_district'] as Map<String, dynamic>)
          : null,
      state: json['state'] != null ? FhirString.fromJson(json['state']) : null,
      stateElement: json['_state'] != null
          ? Element.fromJson(json['_state'] as Map<String, dynamic>)
          : null,
      postalCode: json['postalCode'] != null
          ? FhirString.fromJson(json['postalCode'])
          : null,
      postalCodeElement: json['_postalCode'] != null
          ? Element.fromJson(json['_postalCode'] as Map<String, dynamic>)
          : null,
      country:
          json['country'] != null ? FhirString.fromJson(json['country']) : null,
      countryElement: json['_country'] != null
          ? Element.fromJson(json['_country'] as Map<String, dynamic>)
          : null,
      period: json['period'] != null
          ? Period.fromJson(json['period'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  Address clone() => throw UnimplementedError();
  @override
  Address copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    AddressUse? use,
    Element? useElement,
    AddressType? type,
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

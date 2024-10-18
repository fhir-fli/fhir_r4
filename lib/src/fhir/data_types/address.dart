import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Address]
/// An address expressed using postal conventions (as opposed to GPS or
/// other location definition formats). This data type may be used to
/// convey addresses for use in delivering mail as well as for visiting
/// locations which might not be valid for mail delivery. There are a
/// variety of postal address formats defined around the world.
class Address extends DataType {
  /// Primary constructor for [Address]

  Address({
    super.id,
    super.extension_,
    this.use,
    this.type,
    this.text,
    this.line,
    this.city,
    this.district,
    this.state,
    this.postalCode,
    this.country,
    this.period,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Address.fromJson(
    Map<String, dynamic> json,
  ) {
    return Address(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      use: json['use'] != null
          ? AddressUse.fromJson({
              'value': json['use'],
              '_value': json['_use'],
            })
          : null,
      type: json['type'] != null
          ? AddressType.fromJson({
              'value': json['type'],
              '_value': json['_type'],
            })
          : null,
      text: json['text'] != null
          ? FhirString.fromJson({
              'value': json['text'],
              '_value': json['_text'],
            })
          : null,
      line: parsePrimitiveList<FhirString>(
        json['line'] as List<dynamic>?,
        json['_line'] as List<dynamic>?,
        fromJson: FhirString.fromJson,
      ),
      city: json['city'] != null
          ? FhirString.fromJson({
              'value': json['city'],
              '_value': json['_city'],
            })
          : null,
      district: json['district'] != null
          ? FhirString.fromJson({
              'value': json['district'],
              '_value': json['_district'],
            })
          : null,
      state: json['state'] != null
          ? FhirString.fromJson({
              'value': json['state'],
              '_value': json['_state'],
            })
          : null,
      postalCode: json['postalCode'] != null
          ? FhirString.fromJson({
              'value': json['postalCode'],
              '_value': json['_postalCode'],
            })
          : null,
      country: json['country'] != null
          ? FhirString.fromJson({
              'value': json['country'],
              '_value': json['_country'],
            })
          : null,
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Address] from a [String]
  /// or [YamlMap] object
  factory Address.fromYaml(
    dynamic yaml,
  ) =>
      yaml is String
          ? Address.fromJson(
              jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
            )
          : yaml is YamlMap
              ? Address.fromJson(
                  jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
                )
              : throw ArgumentError(
                  'Address cannot be constructed from '
                  'input provided, it is neither a yaml string nor a yaml map.',
                );

  /// Factory constructor for [Address]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Address.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Address.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'Address';

  /// [use]
  /// The purpose of this address.
  final AddressUse? use;

  /// [type]
  /// Distinguishes between physical addresses (those you can visit) and
  /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  /// are both.
  final AddressType? type;

  /// [text]
  /// Specifies the entire address as it should be displayed e.g. on a postal
  /// label. This may be provided instead of or as well as the specific
  /// parts.
  final FhirString? text;

  /// [line]
  /// This component contains the house number, apartment number, street
  /// name, street direction, P.O. Box number, delivery hints, and similar
  /// address information.
  final List<FhirString>? line;

  /// [city]
  /// The name of the city, town, suburb, village or other community or
  /// delivery center.
  final FhirString? city;

  /// [district]
  /// The name of the administrative area (county).
  final FhirString? district;

  /// [state]
  /// Sub-unit of a country with limited sovereignty in a federally organized
  /// country. A code may be used if codes are in common use (e.g. US 2
  /// letter state codes).
  final FhirString? state;

  /// [postalCode]
  /// A postal code designating a region defined by the postal service.
  final FhirString? postalCode;

  /// [country]
  /// Country - a nation as commonly understood or generally accepted.
  final FhirString? country;

  /// [period]
  /// Time period when address was/is in use.
  final Period? period;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson()['value'];
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    if (use != null) {
      json['use'] = use!.toJson();
    }

    if (type != null) {
      json['type'] = type!.toJson();
    }

    if (text != null) {
      final fieldJson3 = text!.toJson();
      json['text'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_text'] = fieldJson3['_value'];
      }
    }

    if (line != null && line!.isNotEmpty) {
      final fieldJson4 = line!.map((e) => e.toJson()).toList();
      json['line'] = fieldJson4.map((e) => e['value']).toList();
      if (fieldJson4.any((e) => e['_value'] != null)) {
        json['_line'] = fieldJson4.map((e) => e['_value']).toList();
      }
    }

    if (city != null) {
      final fieldJson5 = city!.toJson();
      json['city'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_city'] = fieldJson5['_value'];
      }
    }

    if (district != null) {
      final fieldJson6 = district!.toJson();
      json['district'] = fieldJson6['value'];
      if (fieldJson6['_value'] != null) {
        json['_district'] = fieldJson6['_value'];
      }
    }

    if (state != null) {
      final fieldJson7 = state!.toJson();
      json['state'] = fieldJson7['value'];
      if (fieldJson7['_value'] != null) {
        json['_state'] = fieldJson7['_value'];
      }
    }

    if (postalCode != null) {
      final fieldJson8 = postalCode!.toJson();
      json['postalCode'] = fieldJson8['value'];
      if (fieldJson8['_value'] != null) {
        json['_postalCode'] = fieldJson8['_value'];
      }
    }

    if (country != null) {
      final fieldJson9 = country!.toJson();
      json['country'] = fieldJson9['value'];
      if (fieldJson9['_value'] != null) {
        json['_country'] = fieldJson9['_value'];
      }
    }

    if (period != null) {
      json['period'] = period!.toJson();
    }

    return json;
  }

  @override
  Address clone() => throw UnimplementedError();
  @override
  Address copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    AddressUse? use,
    AddressType? type,
    FhirString? text,
    List<FhirString>? line,
    FhirString? city,
    FhirString? district,
    FhirString? state,
    FhirString? postalCode,
    FhirString? country,
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
      type: type ?? this.type,
      text: text ?? this.text,
      line: line ?? this.line,
      city: city ?? this.city,
      district: district ?? this.district,
      state: state ?? this.state,
      postalCode: postalCode ?? this.postalCode,
      country: country ?? this.country,
      period: period ?? this.period,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

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
  /// Primary constructor for
  /// [Address]

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
    T? parseField<T extends FhirBase>(
      dynamic value,
      dynamic valueElement,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        (value != null || valueElement != null)
            ? fromJson({
                'value': value,
                '_value': valueElement,
              })
            : null;
    List<T>? parseList<T extends FhirBase>(
      List<dynamic>? values,
      List<dynamic>? valueElements,
      T Function(Map<String, dynamic>) fromJson,
    ) =>
        values?.asMap().entries.map((entry) {
          final index = entry.key;
          final value = entry.value;
          final valueElement =
              valueElements != null && valueElements.length > index
                  ? valueElements[index]
                  : null;
          return fromJson({
            'value': value,
            '_value': valueElement,
          });
        }).toList();
    return Address(
      id: parseField<FhirString>(
        json['id'],
        json['_id'],
        FhirString.fromJson,
      ),
      extension_: parseList<FhirExtension>(
        json['extension'] as List<dynamic>?,
        json['_extension'] as List<dynamic>?,
        FhirExtension.fromJson,
      ),
      use: parseField<AddressUse>(
        json['use'],
        json['_use'],
        AddressUse.fromJson,
      ),
      type: parseField<AddressType>(
        json['type'],
        json['_type'],
        AddressType.fromJson,
      ),
      text: parseField<FhirString>(
        json['text'],
        json['_text'],
        FhirString.fromJson,
      ),
      line: parseList<FhirString>(
        json['line'] as List<dynamic>?,
        json['_line'] as List<dynamic>?,
        FhirString.fromJson,
      ),
      city: parseField<FhirString>(
        json['city'],
        json['_city'],
        FhirString.fromJson,
      ),
      district: parseField<FhirString>(
        json['district'],
        json['_district'],
        FhirString.fromJson,
      ),
      state: parseField<FhirString>(
        json['state'],
        json['_state'],
        FhirString.fromJson,
      ),
      postalCode: parseField<FhirString>(
        json['postalCode'],
        json['_postalCode'],
        FhirString.fromJson,
      ),
      country: parseField<FhirString>(
        json['country'],
        json['_country'],
        FhirString.fromJson,
      ),
      period: json['period'] != null
          ? Period.fromJson(
              json['period'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [Address]
  /// from a [String] or [YamlMap] object
  factory Address.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return Address.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return Address.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'Address '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [Address]
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
    void addField(String key, FhirBase? field) {
      if (field != null) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      }
    }

    addField('id', id);
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] = extension_!.map((e) => e.toJson()).toList();
    }

    addField('use', use);
    addField('type', type);
    addField('text', text);
    if (line != null && line!.isNotEmpty) {
      final fieldJson0 = line!.map((e) => e.toJson()).toList();
      json['line'] = fieldJson0.map((e) => e['value']).toList();
      if (fieldJson0.any((e) => e['_value'] != null)) {
        json['_line'] = fieldJson0.map((e) => e['_value']).toList();
      }
    }

    addField('city', city);
    addField('district', district);
    addField('state', state);
    addField('postalCode', postalCode);
    addField('country', country);
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

import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Address]
/// An address expressed using postal conventions (as opposed to GPS or
/// other location definition formats). This data type may be used to
/// convey addresses for use in delivering mail as well as for visiting
/// locations which might not be valid for mail delivery. There are a
/// variety of postal address formats defined around the world.
class Address extends DataType
    implements
        LocationXClaimAccident,
        LocationXClaimItem,
        LocationXClaimResponseAddItem,
        LocationXExplanationOfBenefitAccident,
        LocationXExplanationOfBenefitItem,
        LocationXExplanationOfBenefitAddItem,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Primary constructor for
  /// [Address]

  const Address({
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
    super.disallowExtensions,
    super.objectPath = 'Address',
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory Address.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Address';
    return Address(
      id: JsonParser.parsePrimitive<FhirString>(
        json,
        'id',
        FhirString.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtension>(
            (v) => FhirExtension.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      use: JsonParser.parsePrimitive<AddressUse>(
        json,
        'use',
        AddressUse.fromJson,
        '$objectPath.use',
      ),
      type: JsonParser.parsePrimitive<AddressType>(
        json,
        'type',
        AddressType.fromJson,
        '$objectPath.type',
      ),
      text: JsonParser.parsePrimitive<FhirString>(
        json,
        'text',
        FhirString.fromJson,
        '$objectPath.text',
      ),
      line: JsonParser.parsePrimitiveList<FhirString>(
        json,
        'line',
        FhirString.fromJson,
        '$objectPath.line',
      ),
      city: JsonParser.parsePrimitive<FhirString>(
        json,
        'city',
        FhirString.fromJson,
        '$objectPath.city',
      ),
      district: JsonParser.parsePrimitive<FhirString>(
        json,
        'district',
        FhirString.fromJson,
        '$objectPath.district',
      ),
      state: JsonParser.parsePrimitive<FhirString>(
        json,
        'state',
        FhirString.fromJson,
        '$objectPath.state',
      ),
      postalCode: JsonParser.parsePrimitive<FhirString>(
        json,
        'postalCode',
        FhirString.fromJson,
        '$objectPath.postalCode',
      ),
      country: JsonParser.parsePrimitive<FhirString>(
        json,
        'country',
        FhirString.fromJson,
        '$objectPath.country',
      ),
      period: JsonParser.parseObject<Period>(
        json,
        'period',
        Period.fromJson,
        '$objectPath.period',
      ),
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
    if (json is Map<String, dynamic>) {
      return Address.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
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
    void addField(String key, dynamic field) {
      if (!(field is FhirBase? || field is List<FhirBase>?)) {
        throw ArgumentError('"field" must be a FhirBase type');
      }
      if (field == null) return;
      if (field is PrimitiveType) {
        json[key] = field.toJson()['value'];
        if (field.toJson()['_value'] != null) {
          json['_$key'] = field.toJson()['_value'];
        }
      } else if (field is List<FhirBase>) {
        if (field.isEmpty) return;
        if (field.first is PrimitiveType) {
          final fieldJson = field.map((e) => e.toJson()).toList();
          json[key] = fieldJson.map((e) => e['value']).toList();
          if (fieldJson.any((e) => e['_value'] != null)) {
            json['_$key'] = fieldJson.map((e) => e['_value']).toList();
          }
        } else {
          json[key] = field.map((e) => e.toJson()).toList();
        }
      } else if (field is FhirBase) {
        json[key] = field.toJson();
      }
    }

    addField('id', id);
    addField('extension', extension_);
    addField('use', use);
    addField('type', type);
    addField('text', text);
    addField('line', line);
    addField('city', city);
    addField('district', district);
    addField('state', state);
    addField('postalCode', postalCode);
    addField('country', country);
    addField('period', period);
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> children() {
    return [
      'id',
      'extension',
      'use',
      'type',
      'text',
      'line',
      'city',
      'district',
      'state',
      'postalCode',
      'country',
      'period',
    ];
  }

  /// Retrieves all matching child fields by name.
  ///Optionally validates the name.
  @override
  List<FhirBase> listChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBase>[];
    switch (fieldName) {
      case 'id':
        if (id != null) {
          fields.add(id!);
        }
      case 'extension':
        if (extension_ != null) {
          fields.addAll(extension_!);
        }
      case 'use':
        if (use != null) {
          fields.add(use!);
        }
      case 'type':
        if (type != null) {
          fields.add(type!);
        }
      case 'text':
        if (text != null) {
          fields.add(text!);
        }
      case 'line':
        if (line != null) {
          fields.addAll(line!);
        }
      case 'city':
        if (city != null) {
          fields.add(city!);
        }
      case 'district':
        if (district != null) {
          fields.add(district!);
        }
      case 'state':
        if (state != null) {
          fields.add(state!);
        }
      case 'postalCode':
        if (postalCode != null) {
          fields.add(postalCode!);
        }
      case 'country':
        if (country != null) {
          fields.add(country!);
        }
      case 'period':
        if (period != null) {
          fields.add(period!);
        }
      default:
        if (checkValid) {
          throw ArgumentError('Invalid name: $fieldName');
        }
    }
    return fields;
  }

  /// Retrieves a single field value by its name.
  @override
  FhirBase? getChildValueByName(String name) {
    final values = listChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    return Address(
      id: id?.copyWith(
            objectPath: '$newObjectPath.id',
          ) ??
          this.id,
      extension_: extension_
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.extension',
                ),
              )
              .toList() ??
          this.extension_,
      use: use?.copyWith(
            objectPath: '$newObjectPath.use',
          ) ??
          this.use,
      type: type?.copyWith(
            objectPath: '$newObjectPath.type',
          ) ??
          this.type,
      text: text?.copyWith(
            objectPath: '$newObjectPath.text',
          ) ??
          this.text,
      line: line
              ?.map(
                (e) => e.copyWith(
                  objectPath: '$newObjectPath.line',
                ),
              )
              .toList() ??
          this.line,
      city: city?.copyWith(
            objectPath: '$newObjectPath.city',
          ) ??
          this.city,
      district: district?.copyWith(
            objectPath: '$newObjectPath.district',
          ) ??
          this.district,
      state: state?.copyWith(
            objectPath: '$newObjectPath.state',
          ) ??
          this.state,
      postalCode: postalCode?.copyWith(
            objectPath: '$newObjectPath.postalCode',
          ) ??
          this.postalCode,
      country: country?.copyWith(
            objectPath: '$newObjectPath.country',
          ) ??
          this.country,
      period: period?.copyWith(
            objectPath: '$newObjectPath.period',
          ) ??
          this.period,
    );
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBase? o) {
    if (o is! Address) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (id != o.id) {
      return false;
    }
    if (!listEquals<FhirExtension>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (use != o.use) {
      return false;
    }
    if (type != o.type) {
      return false;
    }
    if (text != o.text) {
      return false;
    }
    if (!listEquals<FhirString>(
      line,
      o.line,
    )) {
      return false;
    }
    if (city != o.city) {
      return false;
    }
    if (district != o.district) {
      return false;
    }
    if (state != o.state) {
      return false;
    }
    if (postalCode != o.postalCode) {
      return false;
    }
    if (country != o.country) {
      return false;
    }
    if (period != o.period) {
      return false;
    }
    return true;
  }
}

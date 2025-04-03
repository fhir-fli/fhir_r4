import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart'
    show Address, StringExtensionForFHIR, yamlMapToJson, yamlToJson;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [AddressBuilder]
/// An address expressed using postal conventions (as opposed to GPS or
/// other location definition formats). This data type may be used to
/// convey addresses for use in delivering mail as well as for visiting
/// locations which might not be valid for mail delivery. There are a
/// variety of postal address formats defined around the world.
class AddressBuilder extends DataTypeBuilder
    implements
        LocationXClaimAccidentBuilder,
        LocationXClaimItemBuilder,
        LocationXClaimResponseAddItemBuilder,
        LocationXExplanationOfBenefitAccidentBuilder,
        LocationXExplanationOfBenefitItemBuilder,
        LocationXExplanationOfBenefitAddItemBuilder,
        ValueXParametersParameterBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Primary constructor for
  /// [AddressBuilder]

  AddressBuilder({
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
    super.objectPath = 'AddressBuilder',
  });

  /// An empty constructor for partial usage.
  /// For Builder classes, no fields are required
  factory AddressBuilder.empty() => AddressBuilder();

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory AddressBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final objectPath = json['resourceType'] as String? ?? 'Address';
    return AddressBuilder(
      id: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'id',
        FhirStringBuilder.fromJson,
        '$objectPath.id',
      ),
      extension_: (json['extension'] as List<dynamic>?)
          ?.map<FhirExtensionBuilder>(
            (v) => FhirExtensionBuilder.fromJson(
              {
                ...v as Map<String, dynamic>,
                'objectPath': '$objectPath.extension',
              },
            ),
          )
          .toList(),
      use: JsonParser.parsePrimitive<AddressUseBuilder>(
        json,
        'use',
        AddressUseBuilder.fromJson,
        '$objectPath.use',
      ),
      type: JsonParser.parsePrimitive<AddressTypeBuilder>(
        json,
        'type',
        AddressTypeBuilder.fromJson,
        '$objectPath.type',
      ),
      text: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'text',
        FhirStringBuilder.fromJson,
        '$objectPath.text',
      ),
      line: JsonParser.parsePrimitiveList<FhirStringBuilder>(
        json,
        'line',
        FhirStringBuilder.fromJson,
        '$objectPath.line',
      ),
      city: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'city',
        FhirStringBuilder.fromJson,
        '$objectPath.city',
      ),
      district: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'district',
        FhirStringBuilder.fromJson,
        '$objectPath.district',
      ),
      state: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'state',
        FhirStringBuilder.fromJson,
        '$objectPath.state',
      ),
      postalCode: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'postalCode',
        FhirStringBuilder.fromJson,
        '$objectPath.postalCode',
      ),
      country: JsonParser.parsePrimitive<FhirStringBuilder>(
        json,
        'country',
        FhirStringBuilder.fromJson,
        '$objectPath.country',
      ),
      period: JsonParser.parseObject<PeriodBuilder>(
        json,
        'period',
        PeriodBuilder.fromJson,
        '$objectPath.period',
      ),
    );
  }

  /// Deserialize [AddressBuilder]
  /// from a [String] or [YamlMap] object
  factory AddressBuilder.fromYaml(
    dynamic yaml,
  ) {
    if (yaml is String) {
      return AddressBuilder.fromJson(
        yamlToJson(yaml),
      );
    } else if (yaml is YamlMap) {
      return AddressBuilder.fromJson(
        yamlMapToJson(yaml),
      );
    } else {
      throw ArgumentError(
        'AddressBuilder '
        'cannot be constructed from the provided input. '
        'It must be a YAML string or YAML map.',
      );
    }
  }

  /// Factory constructor for
  /// [AddressBuilder]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory AddressBuilder.fromJsonString(
    String source,
  ) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return AddressBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, dynamic>.');
    }
  }

  @override
  String get fhirType => 'Address';

  /// [use]
  /// The purpose of this address.
  AddressUseBuilder? use;

  /// [type]
  /// Distinguishes between physical addresses (those you can visit) and
  /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  /// are both.
  AddressTypeBuilder? type;

  /// [text]
  /// Specifies the entire address as it should be displayed e.g. on a postal
  /// label. This may be provided instead of or as well as the specific
  /// parts.
  FhirStringBuilder? text;

  /// [line]
  /// This component contains the house number, apartment number, street
  /// name, street direction, P.O. Box number, delivery hints, and similar
  /// address information.
  List<FhirStringBuilder>? line;

  /// [city]
  /// The name of the city, town, suburb, village or other community or
  /// delivery center.
  FhirStringBuilder? city;

  /// [district]
  /// The name of the administrative area (county).
  FhirStringBuilder? district;

  /// [state]
  /// Sub-unit of a country with limited sovereignty in a federally organized
  /// country. A code may be used if codes are in common use (e.g. US 2
  /// letter state codes).
  FhirStringBuilder? state;

  /// [postalCode]
  /// A postal code designating a region defined by the postal service.
  FhirStringBuilder? postalCode;

  /// [country]
  /// Country - a nation as commonly understood or generally accepted.
  FhirStringBuilder? country;

  /// [period]
  /// Time period when address was/is in use.
  PeriodBuilder? period;

  /// Converts a [AddressBuilder]
  /// to [Address]
  @override
  Address build() => Address.fromJson(toJson());

  /// Converts a [AddressBuilder]
  /// to a [Map<String, dynamic>]
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    bool isNonEmpty(dynamic val) {
      if (val == null) return false;
      if (val is List && val.isEmpty) return false;
      if (val is Map && val.isEmpty) return false;
      return true;
    }

    void addField(String key, dynamic field) {
      if (field == null) return;
      if (!(field is FhirBaseBuilder? || field is List<FhirBaseBuilder>?)) {
        throw ArgumentError('"field" must be a FhirBaseBuilder type');
      }
      if (field is PrimitiveTypeBuilder) {
        final fieldMap = field.toJson();
        final val = fieldMap['value'];
        final ext = fieldMap['_value'];
        // Skip if it has no actual value and no extension
        final hasVal = isNonEmpty(val);
        final hasExt = isNonEmpty(ext);
        if (hasVal) json[key] = val;
        if (hasExt) json['_$key'] = ext;
      } else if (field is List<FhirBaseBuilder>) {
        if (field.isEmpty) return;
        // We'll collect non-empty child items in a temp list
        final tempList = <dynamic>[];
        final tempExtensions = <dynamic>[];
        final isPrimitive = field.first is PrimitiveTypeBuilder;
        for (final e in field) {
          final itemMap = e.toJson();
          if (!isNonEmpty(itemMap)) {
            continue; // skip empty child
          }
          if (isPrimitive) {
            final v = itemMap['value'];
            final x = itemMap['_value'];
            tempList.add(v);
            tempExtensions.add(x);
          } else {
            tempList.add(itemMap);
          }
        }
        if (tempList.isEmpty) return; // no non-empty items
        if (isPrimitive) {
          json[key] = tempList;
          final anyExt = tempExtensions.any(isNonEmpty);
          if (anyExt) {
            json['_$key'] = tempExtensions;
          }
        } else {
          json[key] = tempList;
        }
      } else if (field is FhirBaseBuilder) {
        final subMap = field.toJson();
        if (isNonEmpty(subMap)) {
          json[key] = subMap;
        }
      }
    }

    addField(
      'id',
      id,
    );
    addField(
      'extension',
      extension_,
    );
    addField(
      'use',
      use,
    );
    addField(
      'type',
      type,
    );
    addField(
      'text',
      text,
    );
    addField(
      'line',
      line,
    );
    addField(
      'city',
      city,
    );
    addField(
      'district',
      district,
    );
    addField(
      'state',
      state,
    );
    addField(
      'postalCode',
      postalCode,
    );
    addField(
      'country',
      country,
    );
    addField(
      'period',
      period,
    );
    return json;
  }

  /// Lists the JSON keys for the object.
  @override
  List<String> listChildrenNames() {
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
  List<FhirBaseBuilder> getChildrenByName(
    String fieldName, [
    bool checkValid = false,
  ]) {
    final fields = <FhirBaseBuilder>[];
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
  FhirBaseBuilder? getChildByName(String name) {
    final values = getChildrenByName(name);
    if (values.length > 1) {
      throw StateError('Too many values for $name found');
    }
    return values.isNotEmpty ? values.first : null;
  }

  @override
  void setChildByName(String childName, dynamic child) {
    // child must be null, or a (List of) FhirBaseBuilder(s).
    if (child == null) {
      return; // In builders, setting to null is allowed
    }
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }

    switch (childName) {
      case 'id':
        {
          if (child is FhirStringBuilder) {
            id = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                id = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'extension':
        {
          if (child is List<FhirExtensionBuilder>) {
            // Replace or create new list
            extension_ = child;
            return;
          } else if (child is FhirExtensionBuilder) {
            // Add single element to existing list or create new list
            extension_ = [
              ...(extension_ ?? []),
              child,
            ];
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'use':
        {
          if (child is AddressUseBuilder) {
            use = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AddressUseBuilder(stringValue);
                use = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'type':
        {
          if (child is AddressTypeBuilder) {
            type = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              // For enums, try to create directly from the string value
              try {
                final converted = AddressTypeBuilder(stringValue);
                type = converted;
                return;
              } catch (e) {
                // Continue if enum creation fails
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'text':
        {
          if (child is FhirStringBuilder) {
            text = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                text = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'line':
        {
          if (child is List<FhirStringBuilder>) {
            // Replace or create new list
            line = child;
            return;
          } else if (child is FhirStringBuilder) {
            // Add single element to existing list or create new list
            line = [
              ...(line ?? []),
              child,
            ];
            return;
          } else if (child is List<PrimitiveTypeBuilder>) {
            // Try to convert list of primitive types
            final convertedList = <FhirStringBuilder>[];
            for (final element in child) {
              try {
                final stringValue = element.toString();
                final converted = FhirStringBuilder.tryParse(stringValue);
                if (converted != null) {
                  convertedList.add(converted);
                }
              } catch (e) {
                // Continue if conversion fails
              }
            }
            if (convertedList.isNotEmpty) {
              line = convertedList;
              return;
            }
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert a single primitive
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                line = [
                  ...(line ?? []),
                  converted,
                ];
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'city':
        {
          if (child is FhirStringBuilder) {
            city = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                city = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'district':
        {
          if (child is FhirStringBuilder) {
            district = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                district = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'state':
        {
          if (child is FhirStringBuilder) {
            state = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                state = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'postalCode':
        {
          if (child is FhirStringBuilder) {
            postalCode = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                postalCode = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'country':
        {
          if (child is FhirStringBuilder) {
            country = child;
            return;
          } else if (child is PrimitiveTypeBuilder) {
            // Try to convert from one primitive type to another
            try {
              final stringValue = child.toString();
              final converted = FhirStringBuilder.tryParse(stringValue);
              if (converted != null) {
                country = converted;
                return;
              }
            } catch (e) {
              // Continue if conversion fails
            }
          }
          throw Exception('Invalid child type for $childName');
        }
      case 'period':
        {
          if (child is PeriodBuilder) {
            period = child;
            return;
          }
          throw Exception('Invalid child type for $childName');
        }
      default:
        throw Exception('Cannot set child value for $childName');
    }
  }

  /// Return the possible Dart types for the field named [fieldName].
  /// For polymorphic fields, multiple types are possible.
  @override
  List<String> typeByElementName(String fieldName) {
    switch (fieldName) {
      case 'id':
        return ['FhirStringBuilder'];
      case 'extension':
        return ['FhirExtensionBuilder'];
      case 'use':
        return ['FhirCodeEnumBuilder'];
      case 'type':
        return ['FhirCodeEnumBuilder'];
      case 'text':
        return ['FhirStringBuilder'];
      case 'line':
        return ['FhirStringBuilder'];
      case 'city':
        return ['FhirStringBuilder'];
      case 'district':
        return ['FhirStringBuilder'];
      case 'state':
        return ['FhirStringBuilder'];
      case 'postalCode':
        return ['FhirStringBuilder'];
      case 'country':
        return ['FhirStringBuilder'];
      case 'period':
        return ['PeriodBuilder'];
      default:
        return <String>[];
    }
  }

  /// Creates a new [AddressBuilder]
  ///  with a chosen field set to an empty object.
  @override
  void createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        {
          id = FhirStringBuilder.empty();
          return;
        }
      case 'extension':
        {
          extension_ = <FhirExtensionBuilder>[];
          return;
        }
      case 'use':
        {
          use = AddressUseBuilder.empty();
          return;
        }
      case 'type':
        {
          type = AddressTypeBuilder.empty();
          return;
        }
      case 'text':
        {
          text = FhirStringBuilder.empty();
          return;
        }
      case 'line':
        {
          line = <FhirStringBuilder>[];
          return;
        }
      case 'city':
        {
          city = FhirStringBuilder.empty();
          return;
        }
      case 'district':
        {
          district = FhirStringBuilder.empty();
          return;
        }
      case 'state':
        {
          state = FhirStringBuilder.empty();
          return;
        }
      case 'postalCode':
        {
          postalCode = FhirStringBuilder.empty();
          return;
        }
      case 'country':
        {
          country = FhirStringBuilder.empty();
          return;
        }
      case 'period':
        {
          period = PeriodBuilder.empty();
          return;
        }
      default:
        throw ArgumentError('No matching property: $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  void clear({
    bool id = false,
    bool extension_ = false,
    bool use = false,
    bool type = false,
    bool text = false,
    bool line = false,
    bool city = false,
    bool district = false,
    bool state = false,
    bool postalCode = false,
    bool country = false,
    bool period = false,
  }) {
    if (id) this.id = null;
    if (extension_) this.extension_ = null;
    if (use) this.use = null;
    if (type) this.type = null;
    if (text) this.text = null;
    if (line) this.line = null;
    if (city) this.city = null;
    if (district) this.district = null;
    if (state) this.state = null;
    if (postalCode) this.postalCode = null;
    if (country) this.country = null;
    if (period) this.period = null;
  }

  @override
  AddressBuilder clone() => throw UnimplementedError();
  @override
  AddressBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    AddressUseBuilder? use,
    AddressTypeBuilder? type,
    FhirStringBuilder? text,
    List<FhirStringBuilder>? line,
    FhirStringBuilder? city,
    FhirStringBuilder? district,
    FhirStringBuilder? state,
    FhirStringBuilder? postalCode,
    FhirStringBuilder? country,
    PeriodBuilder? period,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    final newObjectPath = objectPath ?? this.objectPath;
    final newResult = AddressBuilder(
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
    )..objectPath = newObjectPath;
    // Copy user data and annotations
    if (userData != null) {
      newResult.userData = userData;
    }
    if (formatCommentsPre != null) {
      newResult.formatCommentsPre = formatCommentsPre;
    }
    if (formatCommentsPost != null) {
      newResult.formatCommentsPost = formatCommentsPost;
    }
    if (annotations != null) {
      newResult.annotations = annotations;
    }

    return newResult;
  }

  /// Performs a deep comparison between two instances.
  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o is! AddressBuilder) {
      return false;
    }
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    if (!equalsDeepWithNull(
      id,
      o.id,
    )) {
      return false;
    }
    if (!listEquals<FhirExtensionBuilder>(
      extension_,
      o.extension_,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      use,
      o.use,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      type,
      o.type,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      text,
      o.text,
    )) {
      return false;
    }
    if (!listEquals<FhirStringBuilder>(
      line,
      o.line,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      city,
      o.city,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      district,
      o.district,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      state,
      o.state,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      postalCode,
      o.postalCode,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      country,
      o.country,
    )) {
      return false;
    }
    if (!equalsDeepWithNull(
      period,
      o.period,
    )) {
      return false;
    }
    return true;
  }
}

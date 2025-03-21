import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Base class for all reusable types defined as part of the FHIR specification.
abstract class DataType extends Element {
  /// Constructor for DataType
  const DataType({
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'DataType',
  });

  /// Creates an empty [DataType] object
  factory DataType.empty() => throw UnimplementedError();

  /// FromJson Factory Constructor for [DataType]
  factory DataType.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('DataType.fromJson $json');
  }

  @override
  String get fhirType => 'DataType';

  @override
  Map<String, dynamic> toJson() {
    final json = <String, Object?>{};
    if (id?.value != null) {
      json['id'] = id?.value;
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension e) => e.toJson()).toList();
    }
    return json;
  }

  /// Factory constructor for [DataType] that takes in a [YamlMap] and returns
  /// a [DataType]
  static DataType fromYaml(dynamic yaml) => yaml is String
      ? DataType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? DataType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'DataType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  @override
  DataType copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  });

  /// Retrieves the type of the object by element name.
  @override
  List<String> typeByElementName(String elementName) {
    return <String>[];
  }

  /// Creates an empty property in the object
  @override
  DataType createProperty(String propertyName);

  @override
  DataType clear({bool extension_ = false, bool id = false});
}

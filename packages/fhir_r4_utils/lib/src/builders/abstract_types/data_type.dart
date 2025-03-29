import 'dart:convert';

import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Base class for all reusable types defined as part of the FHIR specification.
abstract class DataTypeBuilder extends ElementBuilder {
  /// Constructor for DataType
  DataTypeBuilder({
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
  factory DataTypeBuilder.empty() => throw UnimplementedError();

  /// FromJson Factory Constructor for [DataTypeBuilder]
  factory DataTypeBuilder.fromJson(Map<String, dynamic> json) {
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
          extension_!.map((FhirExtensionBuilder e) => e.toJson()).toList();
    }
    return json;
  }

  /// Factory constructor for [DataTypeBuilder] that takes in a [YamlMap]
  /// and returns a [DataTypeBuilder]
  static DataTypeBuilder fromYaml(dynamic yaml) => yaml is String
      ? DataTypeBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? DataTypeBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'DataType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  @override
  DataTypeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
  void createProperty(String propertyName);

  @override
  void clear({bool extension_ = false, bool id = false});
}

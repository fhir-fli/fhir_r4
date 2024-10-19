import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

/// Base class for all reusable types defined as part of the FHIR specification.
@Entity()
class DataType extends Element {
  /// Constructor for DataType
  DataType({
    this.dbId = 0,
    super.id,
    super.extension_,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// FromJson Factory Constructor for [DataType]
  factory DataType.fromJson(Map<String, Object?> json) {
    throw UnimplementedError('DataType.fromJson $json');
  }

  /// Auto-incrementing ID for ObjectBox.
  @Id(assignable: true)
  @override
  // ignore: overridden_fields
  int dbId;

  @override
  @Transient()
  String get fhirType => 'DataType';

  @override
  Map<String, Object?> toJson() {
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
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? DataType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'DataType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  @override
  DataType copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return DataType(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}

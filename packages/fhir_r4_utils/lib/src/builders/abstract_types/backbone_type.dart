import 'dart:convert';

import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Base class for the few data types that are allowed to carry modifier
/// extensions.
abstract class BackboneTypeBuilder extends DataTypeBuilder {
  /// Constructor for BackboneType
  BackboneTypeBuilder({
    super.id,
    super.extension_,
    this.modifierExtension,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'BackboneType',
  });

  /// Creates an empty [BackboneTypeBuilder] object
  factory BackboneTypeBuilder.empty() => throw UnimplementedError();

  /// FromJson Factory Constructor for [BackboneTypeBuilder]
  factory BackboneTypeBuilder.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('BackboneType.fromJson $json');
  }

  @override
  String get fhirType => 'BackboneType';

  /// List of modifier extensions for additional, non-core information
  List<FhirExtensionBuilder>? modifierExtension;

  /// Method to check if there are any modifier extensions
  bool hasModifierExtension() => modifierExtension?.isNotEmpty ?? false;

  /// Gets the first repetition of modifier extensions
  FhirExtensionBuilder getModifierExtensionFirstRep() {
    return modifierExtension?.isEmpty ?? true
        ? FhirExtensionBuilder(url: FhirStringBuilder('fhirfli.dev'))
        : modifierExtension!.first;
  }

  /// Retrieves all modifier extensions by URL
  List<FhirExtensionBuilder> getModifierExtensionsByUrl(String url) {
    return modifierExtension
            ?.where((FhirExtensionBuilder ext) => ext.url?.equals(url) ?? false)
            .toList() ??
        <FhirExtensionBuilder>[];
  }

  /// Adds a modifier extension
  void addModifierExtension(FhirExtensionBuilder ext) {
    modifierExtension?.add(ext);
  }

  /// Removes modifier extensions by URL
  void removeModifierExtension(String url) {
    modifierExtension?.removeWhere(
        (FhirExtensionBuilder ext) => ext.url?.equals(url) ?? false);
  }

  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o == null || o is! BackboneTypeBuilder) {
      return false;
    }
    return super.equalsDeep(o) &&
        FhirBaseBuilder.compareDeepLists(
          modifierExtension,
          o.modifierExtension,
          true,
        );
  }

  @override
  bool isEmpty() {
    return super.isEmpty() && (modifierExtension?.isEmpty ?? true);
  }

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
    if (modifierExtension?.isNotEmpty ?? false) {
      json['modifierExtension'] = modifierExtension
          ?.map((FhirExtensionBuilder e) => e.toJson())
          .toList();
    }
    return json;
  }

  /// Factory constructor for [BackboneTypeBuilder] that takes in a [YamlMap]
  static BackboneTypeBuilder fromYaml(dynamic yaml) => yaml is String
      ? BackboneTypeBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? BackboneTypeBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'BackboneType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [BackboneTypeBuilder] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  static BackboneTypeBuilder fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BackboneTypeBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  BackboneTypeBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    List<FhirExtensionBuilder>? modifierExtension,
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

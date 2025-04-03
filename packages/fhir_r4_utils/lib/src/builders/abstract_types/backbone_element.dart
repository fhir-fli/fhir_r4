import 'dart:convert';

import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// Base class for elements inside a resource but not those in a data type.
abstract class BackboneElementBuilder extends DataTypeBuilder {
  /// Constructor for BackboneElement
  BackboneElementBuilder({
    super.id,
    super.extension_,
    this.modifierExtension,
    super.disallowExtensions,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'BackboneElement',
  });

  /// Creates an empty [BackboneElementBuilder] object
  factory BackboneElementBuilder.empty() => throw UnimplementedError();

  /// FromJson Factory Constructor for [BackboneElementBuilder]
  factory BackboneElementBuilder.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('BackboneElement.fromJson $json');
  }

  @override
  String get fhirType => 'BackboneElement';

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
      (FhirExtensionBuilder ext) => ext.url?.equals(url) ?? false,
    );
  }

  @override
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o == null || o is! BackboneElementBuilder) {
      return false;
    }
    return super.equalsDeep(o) &&
        FhirBaseBuilder.compareDeepLists<FhirExtensionBuilder>(
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
    if (id?.valueString != null) {
      json['id'] = id?.valueString;
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtensionBuilder e) => e.toJson()).toList();
    }
    if (modifierExtension?.isNotEmpty ?? false) {
      json['modifierExtension'] = modifierExtension!
          .map((FhirExtensionBuilder e) => e.toJson())
          .toList();
    }
    return json;
  }

  /// Factory constructor for [BackboneElementBuilder] that takes in a [dynamic]
  static BackboneElementBuilder fromYaml(dynamic yaml) => yaml is String
      ? BackboneElementBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? BackboneElementBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'BackboneElement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [BackboneElementBuilder] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  static BackboneElementBuilder fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BackboneElementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  BackboneElementBuilder copyWith({
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

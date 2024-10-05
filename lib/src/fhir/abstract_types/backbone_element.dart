import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

/// Base class for elements inside a resource but not those in a data type.
abstract class BackboneElement extends DataType {
  /// Constructor for BackboneElement
  BackboneElement({
    super.id,
    super.extension_ = const <FhirExtension>[],
    this.modifierExtension = const <FhirExtension>[],
    super.fhirType = 'BackboneElement',
  });

  /// List of modifier extensions for additional, non-core information
  final List<FhirExtension> modifierExtension;

  /// Method to check if there are any modifier extensions
  bool hasModifierExtension() => modifierExtension.isNotEmpty;

  /// Gets the first repetition of modifier extensions
  FhirExtension getModifierExtensionFirstRep() {
    return modifierExtension.isEmpty
        ? FhirExtension()
        : modifierExtension.first;
  }

  /// Retrieves all modifier extensions by URL
  List<FhirExtension> getModifierExtensionsByUrl(String url) {
    return modifierExtension
        .where((FhirExtension ext) => ext.url?.equals(url) ?? false)
        .toList();
  }

  /// Adds a modifier extension
  void addModifierExtension(FhirExtension ext) {
    modifierExtension.add(ext);
  }

  /// Removes modifier extensions by URL
  void removeModifierExtension(String url) {
    modifierExtension
        .removeWhere((FhirExtension ext) => ext.url?.equals(url) ?? false);
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other == null || other is! BackboneElement) {
      return false;
    }
    return super.equalsDeep(other) &&
        compareDeepLists<FhirExtension>(
            modifierExtension, other.modifierExtension);
  }

  @override
  bool isEmpty() {
    return super.isEmpty() && modifierExtension.isEmpty;
  }

  @override
  Map<String, Object?> toJson() {
    final Map<String, Object?> json = <String, Object?>{};
    if (id?.value != null) {
      json['id'] = id?.value;
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['_extension'] =
          extension_!.map((FhirExtension e) => e.toJson()).toList();
    }
    if (modifierExtension.isNotEmpty) {
      json['modifierExtension'] =
          modifierExtension.map((FhirExtension e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  String toYaml() => json2yaml(toJson());

  static BackboneElement fromYaml(dynamic yaml) => yaml is String
      ? BackboneElement.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? BackboneElement.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'BackboneElement cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory BackboneElement.fromJson(Map<String, Object?> json) {
    throw UnimplementedError('BackboneElement.fromJson $json');
  }

  static BackboneElement fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return BackboneElement.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());
}

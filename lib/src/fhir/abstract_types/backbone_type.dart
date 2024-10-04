import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

/// Base class for the few data types that are allowed to carry modifier extensions.
abstract class BackboneType extends DataType {
  /// Constructor for BackboneType
  BackboneType({
    super.id,
    super.extension_ = const <FhirExtension>[],
    this.modifierExtension = const <FhirExtension>[],
    super.fhirType = 'BackboneType',
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
        .where((FhirExtension ext) => ext.url == url)
        .toList();
  }

  /// Adds a modifier extension
  void addModifierExtension(FhirExtension ext) {
    modifierExtension.add(ext);
  }

  /// Removes modifier extensions by URL
  void removeModifierExtension(String url) {
    modifierExtension.removeWhere((FhirExtension ext) => ext.url == url);
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other == null || other is! BackboneType) {
      return false;
    }
    return super.equalsDeep(other) &&
        compareDeepLists(modifierExtension, other.modifierExtension);
  }

  @override
  bool isEmpty() {
    return super.isEmpty() && modifierExtension.isEmpty;
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        ...super.toJson(),
        'modifierExtension': modifierExtension,
      };

  @override
  String toYaml() => json2yaml(toJson());

  static BackboneType fromYaml(dynamic yaml) => yaml is String
      ? BackboneType.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? BackboneType.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'BackboneType cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  static BackboneType fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('BackboneType.fromJson');
  }

  static BackboneType fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return BackboneType.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());
}

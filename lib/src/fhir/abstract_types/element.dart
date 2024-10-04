import 'dart:convert';

import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

abstract class Element extends FhirBase {
  // Constructor for Element with optional id and extension_s
  Element({
    this.id,
    this.extension_ = const <FhirExtension>[],
    super.fhirType = 'Element',
  });

  // Unique id for the element within a resource
  final String? id;

  // List of extensions for additional information
  final List<FhirExtension> extension_;

  // Getter for checking if the element has an id
  bool get hasId => id != null && id!.isNotEmpty;

  // Extension handling methods
  bool hasExtension() => extension_.isNotEmpty;

  FhirExtension getExtensionFirstRep() {
    return extension_.isEmpty ? FhirExtension() : extension_.first;
  }

  List<FhirExtension> getExtensionsByUrl(String url) {
    return extension_.where((FhirExtension ext) => ext.url == url).toList();
  }

  bool hasExtensionByUrl(String url) {
    return extension_.any((FhirExtension ext) => ext.url == url);
  }

  void addExtension(FhirExtension ext) {
    extension_.add(ext);
  }

  void removeExtension(String url) {
    extension_.removeWhere((FhirExtension ext) => ext.url == url);
  }

  @override
  bool equalsDeep(FhirBase? other) {
    if (other == null || other is! Element) {
      return false;
    }

    return id == other.id && compareDeepLists(extension_, other.extension_);
  }

  // Method to compare shallow equality of two elements
  bool equalsShallow(Element other) {
    return id == other.id;
  }

  @override
  bool isEmpty() {
    return super.isEmpty() && extension_.isEmpty;
  }

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'extension_': extension_,
      };

  @override
  String toYaml() => json2yaml(toJson());

  static Element fromYaml(dynamic yaml) => yaml is String
      ? Element.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Element.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Element cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  static Element fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('Element.fromJson');
  }

  static Element fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Element.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());
}

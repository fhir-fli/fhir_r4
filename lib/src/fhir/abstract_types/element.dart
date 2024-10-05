import 'dart:convert';

import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

class Element extends FhirBase {
  // Constructor for Element with optional id and extension_s
  Element({
    String? id,
    this.extension_,
    super.fhirType = 'Element',
  }) : id = id == null ? null : FhirString(id);

  // Unique id for the element within a resource
  final FhirString? id;

  // List of extensions for additional information
  final List<FhirExtension>? extension_;

  // Method to copy the current Element with modifications
  Element copyWith({
    String? id,
    List<FhirExtension>? extension_,
  }) {
    return Element(
      id: id ?? this.id?.value,
      extension_: extension_ ?? this.extension_,
    );
  }

  // Getter for checking if the element has an id
  bool get hasId => id != null && (id!.value?.isNotEmpty ?? false);

  // Extension handling methods
  bool hasExtension() => extension_?.isNotEmpty ?? false;

  FhirExtension getExtensionFirstRep() {
    return (extension_?.isEmpty ?? false) ? FhirExtension() : extension_!.first;
  }

  List<FhirExtension> getExtensionsByUrl(String url) {
    return extension_
            ?.where((FhirExtension ext) => ext.url?.equals(url) ?? false)
            .toList() ??
        <FhirExtension>[];
  }

  bool hasExtensionByUrl(String url) {
    return extension_
            ?.any((FhirExtension ext) => ext.url?.equals(url) ?? false) ??
        false;
  }

  void addExtension(FhirExtension ext) {
    extension_?.add(ext);
  }

  void removeExtension(String url) {
    extension_
        ?.removeWhere((FhirExtension ext) => ext.url?.equals(url) ?? false);
  }

  // Implementing the getProperty method
  dynamic getProperty(String name) {
    switch (name) {
      case 'id':
        return id;
      case 'extension':
        return extension_;
      default:
        throw ArgumentError('Unknown property name: $name');
    }
  }

  // Optionally, if we want to use hashes like in Java:
  dynamic getPropertyByHash(int hash) {
    switch (hash) {
      case 3355: // hash for 'id'
        return id;
      case -612557761: // hash for 'extension'
        return extension_;
      default:
        throw ArgumentError('Unknown property hash: $hash');
    }
  }

  // Implementing the setProperty method
  Element setProperty(String name, dynamic value) {
    switch (name) {
      case 'id':
        if (value is String) {
          return Element(id: value, extension_: extension_);
        } else {
          throw ArgumentError('Invalid type for id. Expected String.');
        }
      case 'extension':
        if (value is List<FhirExtension>) {
          return Element(id: id?.value, extension_: value);
        } else {
          throw ArgumentError(
              'Invalid type for extension. Expected List<FhirExtension>.');
        }
      default:
        throw ArgumentError('Unknown property name: $name');
    }
  }

  // Optionally, if we want to use hashes like in Java:
  Element setPropertyByHash(int hash, dynamic value) {
    switch (hash) {
      case 3355: // hash for 'id'
        if (value is String) {
          return Element(id: value, extension_: extension_);
        } else {
          throw ArgumentError('Invalid type for id. Expected String.');
        }
      case -612557761: // hash for 'extension'
        if (value is List<FhirExtension>) {
          return Element(id: id?.value, extension_: value);
        } else {
          throw ArgumentError(
              'Invalid type for extension. Expected List<FhirExtension>.');
        }
      default:
        throw ArgumentError('Unknown property hash: $hash');
    }
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
    return super.isEmpty() && (extension_?.isEmpty ?? true);
  }

  // Method to copy the current element
  Element copy() {
    final Element copiedElement = Element(
      id: id?.value,
      extension_: extension_ == null
          ? null
          : List<FhirExtension>.from(
              extension_!.map((FhirExtension ext) => ext.copy())),
    );
    return copiedElement;
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
    return json;
  }

  @override
  String toYaml() => json2yaml(toJson());

  static Element fromYaml(dynamic yaml) => yaml is String
      ? Element.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Element.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Element cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Element.fromJson(Map<String, Object?> json) {
    return Element(
      id: json['id'] as String?,
      extension_: json['_extension'] == null
          ? <FhirExtension>[]
          : List<FhirExtension>.from((json['_extension']! as List<dynamic>).map(
              (dynamic e) =>
                  FhirExtension.fromJson(e as Map<String, Object?>))),
    );
  }

  static Element fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Element.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  FhirBase clone() => copy();
}

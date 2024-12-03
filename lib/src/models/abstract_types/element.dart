import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Element] Base definition for all FHIR elements.
class Element extends FhirBase {
  /// Constructor for Element with optional id and extensions
  Element({
    this.id,
    this.extension_,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
  });

  /// Factory constructor for [Element] that takes in a [YamlMap] and returns
  /// a [Element]
  factory Element.fromYaml(dynamic yaml) => yaml is String
      ? Element.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? Element.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError(
              'Element cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// FromJson Factory Constructor for [Element]
  factory Element.fromJson(Map<String, Object?> json) {
    return Element(
      id: (json['id'] as String?)?.toFhirString,
      extension_: json['extension'] == null
          ? <FhirExtension>[]
          : List<FhirExtension>.from(
              (json['extension']! as List<dynamic>).map(
                (dynamic e) =>
                    FhirExtension.fromJson(e as Map<String, Object?>),
              ),
            ),
    );
  }

  /// Factory constructor for [Element] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory Element.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Element.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String get fhirType => 'Element';

  /// Unique id for the element within a resource
  final FhirString? id;

  /// List of extensions for additional information
  final List<FhirExtension>? extension_;

  /// Method to copy the current Element with modifications
  @override
  Element copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return Element(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
    );
  }

  /// Getter for checking if the element has an id
  bool get hasId => id?.value != null && (id!.value!.isNotEmpty);

  /// Extension handling methods
  bool hasExtension() => extension_?.isNotEmpty ?? false;

  /// Getter for the first extension
  FhirExtension getExtensionFirstRep() {
    return (extension_?.isEmpty ?? false)
        ? FhirExtension(url: FhirString('fhirfli.dev'))
        : extension_!.first;
  }

  /// Getter for the first extension by url
  List<FhirExtension> getExtensionsByUrl(String url) {
    return extension_
            ?.where((FhirExtension ext) => ext.url.equals(url))
            .toList() ??
        <FhirExtension>[];
  }

  /// Method to check if an extension exists by url
  bool hasExtensionByUrl(String url) {
    return extension_?.any((FhirExtension ext) => ext.url.equals(url)) ?? false;
  }

  /// Method to add an extension
  void addExtension(FhirExtension ext) {
    extension_?.add(ext);
  }

  /// Method to remove an extension by url
  void removeExtension(String url) {
    extension_?.removeWhere((FhirExtension ext) => ext.url.equals(url));
  }

  /// Implementing the getProperty method
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

  /// Optionally, if we want to use hashes like in Java:
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

  /// Implementing the setProperty method
  Element setProperty(String name, dynamic value) {
    switch (name) {
      case 'id':
        if (value is String) {
          return Element(id: value.toFhirString, extension_: extension_);
        } else {
          throw ArgumentError('Invalid type for id. Expected String.');
        }
      case 'extension':
        if (value is List<FhirExtension>) {
          return Element(id: id, extension_: value);
        } else {
          throw ArgumentError(
            'Invalid type for extension. Expected List<FhirExtension>.',
          );
        }
      default:
        throw ArgumentError('Unknown property name: $name');
    }
  }

  /// Optionally, if we want to use hashes like in Java:
  Element setPropertyByHash(int hash, dynamic value) {
    switch (hash) {
      case 3355: // hash for 'id'
        if (value is String) {
          return Element(id: value.toFhirString, extension_: extension_);
        } else {
          throw ArgumentError('Invalid type for id. Expected String.');
        }
      case -612557761: // hash for 'extension'
        if (value is List<FhirExtension>) {
          return Element(id: id, extension_: value);
        } else {
          throw ArgumentError(
            'Invalid type for extension. Expected List<FhirExtension>.',
          );
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

    return id == other.id &&
        FhirBase.compareDeepLists(extension_, other.extension_);
  }

  /// Method to compare shallow equality of two elements
  bool equalsShallow(Element other) {
    return id == other.id;
  }

  @override
  bool isEmpty() {
    return super.isEmpty() && (extension_?.isEmpty ?? true);
  }

  /// Method to copy the current element
  Element copy() {
    final copiedElement = Element(
      id: id,
      extension_: extension_ == null
          ? null
          : List<FhirExtension>.from(
              extension_!.map((FhirExtension ext) => ext.copy()),
            ),
    );
    return copiedElement;
  }

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

  @override
  FhirBase clone() => copy();
}

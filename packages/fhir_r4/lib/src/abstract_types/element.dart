// ignore_for_file: one_member_abstracts

import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [Element] Base definition for all FHIR elements.
class Element extends FhirBase {
  /// Constructor for Element with optional id and extensions.
  const Element({
    this.id,
    this.extension_,
    this.disallowExtensions = false,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'Element',
  });

  /// Factory constructor for [Element] that takes in a [YamlMap]
  /// and returns a [Element].
  factory Element.fromYaml(dynamic yaml) => yaml is String
      ? Element.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? Element.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'Element cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// FromJson Factory Constructor for [Element].
  factory Element.fromJson(Map<String, dynamic> json) {
    return Element(
      id: (json['id'] as String?)?.toFhirString,
      extension_: json['extension'] == null
          ? <FhirExtension>[]
          : List<FhirExtension>.from(
              (json['extension'] as List<dynamic>).map(
                (dynamic e) =>
                    FhirExtension.fromJson(e as Map<String, dynamic>),
              ),
            ),
    );
  }

  /// Factory constructor for [Element] that takes in a [String].
  /// Convenience method to avoid the json encoding/decoding normally required
  /// to get data from a [String].
  factory Element.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return Element.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String get fhirType => 'Element';

  /// Unique id for the element within a resource.
  final FhirString? id;

  /// List of extensions for additional information.
  final List<FhirExtension>? extension_;

  /// This is used in the FHIRPath engine to record that no extensions are
  /// allowed for this item in the context in which it is used.
  /// to do: enforce this....
  final bool? disallowExtensions;

  // The following fields come from FhirBase:
  // userData, formatCommentsPre, formatCommentsPost, annotations, objectPath

  Element _copyWith({
    required Element Function(Element) then,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
    Object? userData = fhirSentinel,
    Object? formatCommentsPre = fhirSentinel,
    Object? formatCommentsPost = fhirSentinel,
    Object? annotations = fhirSentinel,
    Object? objectPath = fhirSentinel,
  }) {
    return then(
      Element(
        id: identical(id, fhirSentinel) ? this.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? this.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? this.disallowExtensions
            : disallowExtensions as bool?,
        userData: identical(userData, fhirSentinel)
            ? this.userData
            : userData as Map<String, dynamic>?,
        formatCommentsPre: identical(formatCommentsPre, fhirSentinel)
            ? this.formatCommentsPre
            : formatCommentsPre as List<String>?,
        formatCommentsPost: identical(formatCommentsPost, fhirSentinel)
            ? this.formatCommentsPost
            : formatCommentsPost as List<String>?,
        annotations: identical(annotations, fhirSentinel)
            ? this.annotations
            : annotations as List<dynamic>?,
        objectPath: identical(objectPath, fhirSentinel)
            ? this.objectPath
            : objectPath as String?,
      ),
    );
  }

  /// CopyWith method for [Element].
  @override
  Element copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) {
    return _copyWith(
      then: (value) => value,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      userData: userData,
      formatCommentsPre: formatCommentsPre,
      formatCommentsPost: formatCommentsPost,
      annotations: annotations,
      objectPath: objectPath,
    );
  }

  /// Getter for checking if the element has an id.
  bool get hasId => id?.valueString != null && (id!.valueString!.isNotEmpty);

  /// All [Element]s are metadata based.
  @override
  bool get isMetadataBased => true;

  /// Extension handling methods.
  bool hasExtension() => extension_?.isNotEmpty ?? false;

  /// Getter for the first extension.
  FhirExtension getExtensionFirstRep() {
    return (extension_?.isEmpty ?? false)
        ? FhirExtension(url: FhirString('fhirfli.dev'))
        : extension_!.first;
  }

  /// Getter for the first extension by url.
  List<FhirExtension> getExtensionsByUrl(String url) {
    return extension_
            ?.where((FhirExtension ext) => ext.url.equals(url))
            .toList() ??
        <FhirExtension>[];
  }

  /// Method to check if an extension exists by url.
  bool hasExtensionByUrl(String url) {
    return extension_?.any((FhirExtension ext) => ext.url.equals(url)) ?? false;
  }

  /// Method to add an extension.
  void addExtension(FhirExtension ext) {
    extension_?.add(ext);
  }

  /// Method to remove an extension by url.
  void removeExtension(String url) {
    extension_?.removeWhere((FhirExtension ext) => ext.url.equals(url));
  }

  /// Implementing the getProperty method.
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

  /// Implementing the setProperty method.
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

  @override
  bool equalsDeep(FhirBase? o) {
    if (o == null || o is! Element) {
      return false;
    }
    return id == o.id &&
        FhirBase.compareDeepLists(extension_, o.extension_, true);
  }

  /// Method to compare shallow equality of two elements.
  bool equalsShallow(Element other) {
    return id == other.id;
  }

  @override
  bool isEmpty() {
    return super.isEmpty() && (extension_?.isEmpty ?? true);
  }

  @override
  Map<String, dynamic> toJson() {
    final json = <String, Object?>{};
    if (id?.valueString != null) {
      json['id'] = id?.valueString;
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  FhirBase clone() => copyWith();

  @override
  FhirBase? getChildByName(String name) {
    if (name == 'id') {
      return id;
    } else if (name == 'extension') {
      if (extension_ == null || extension_!.isEmpty) {
        return null;
      } else if (extension_!.length == 1) {
        return extension_!.first;
      } else {
        throw FHIRException(message: 'Too many values for $name found');
      }
    }
    return null;
  }

  @override
  List<FhirBase> getChildrenByName(String name, [bool checkValid = false]) {
    if (name == 'id') {
      return [id!];
    } else if (name == 'extension') {
      return extension_ ?? <FhirExtension>[];
    }
    return <FhirBase>[];
  }

  @override

  /// Sets a property by name.
  FhirBase setChildByName(String childName, dynamic child) {
    if (child is! FhirBase && child is! List<FhirBase>) {
      throw Exception('Cannot set child value for $childName');
    }
    switch (childName) {
      case 'id':
        if (child is FhirString) {
          return copyWith(id: child);
        }
        throw Exception('Cannot set child value for $childName');
      case 'extension':
        if (child is List<FhirExtension>) {
          return copyWith(extension_: child);
        }
        throw Exception('Cannot set child value for $childName');
    }
    throw Exception('Cannot set child value for $childName');
  }

  /// Retrieves the type of the object by element name.
  @override
  List<String> typeByElementName(String elementName) {
    switch (elementName) {
      case 'id':
        return <String>['FhirString'];
      case 'extension':
        return <String>['FhirExtension'];
      default:
        return <String>[];
    }
  }
}

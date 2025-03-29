import 'dart:convert';

import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:yaml/yaml.dart';

/// [ElementBuilder] Base definition for all FHIR elements.
class ElementBuilder extends FhirBaseBuilder {
  /// Constructor for Element with optional id and extensions
  ElementBuilder({
    this.id,
    this.extension_,
    this.disallowExtensions = false,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.objectPath = 'Element',
  });

  /// Creates an empty [ElementBuilder] object
  factory ElementBuilder.empty() => ElementBuilder();

  /// Factory constructor for [ElementBuilder] that takes in a [YamlMap] and returns
  /// a [ElementBuilder]
  factory ElementBuilder.fromYaml(dynamic yaml) => yaml is String
      ? ElementBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? ElementBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'Element cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// FromJson Factory Constructor for [Element]
  factory ElementBuilder.fromJson(Map<String, dynamic> json) {
    return ElementBuilder(
      id: (json['id'] as String?)?.toFhirStringBuilder,
      extension_: json['extension'] == null
          ? <FhirExtensionBuilder>[]
          : List<FhirExtensionBuilder>.from(
              (json['extension']! as List<dynamic>).map(
                (dynamic e) =>
                    FhirExtensionBuilder.fromJson(e as Map<String, dynamic>),
              ),
            ),
    );
  }

  /// Factory constructor for [ElementBuilder] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ElementBuilder.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return ElementBuilder.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String get fhirType => 'Element';

  /// Unique id for the element within a resource
  FhirStringBuilder? id;

  /// List of extensions for additional information
  List<FhirExtensionBuilder>? extension_;

  /// This is used in the FHIRPath engine to record that no extensions are
  /// allowed for this item in the context in which it is used.
  /// to do: enforce this....
  bool? disallowExtensions;

  /// Method to copy the current Element with modifications
  @override
  ElementBuilder copyWith({
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    return ElementBuilder(
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

  /// All [Element]s are metadata based
  @override
  bool get isMetadataBased => true;

  /// Extension handling methods
  bool hasExtension() => extension_?.isNotEmpty ?? false;

  /// Getter for the first extension
  FhirExtensionBuilder getExtensionFirstRep() {
    return (extension_?.isEmpty ?? false)
        ? FhirExtensionBuilder(url: FhirStringBuilder('fhirfli.dev'))
        : extension_!.first;
  }

  /// Getter for the first extension by url
  List<FhirExtensionBuilder> getExtensionsByUrl(String url) {
    return extension_
            ?.where((FhirExtensionBuilder ext) => ext.url.equals(url))
            .toList() ??
        <FhirExtensionBuilder>[];
  }

  /// Method to check if an extension exists by url
  bool hasExtensionByUrl(String url) {
    return extension_?.any((FhirExtensionBuilder ext) => ext.url.equals(url)) ??
        false;
  }

  /// Method to add an extension
  void addExtension(FhirExtensionBuilder ext) {
    extension_?.add(ext);
  }

  /// Method to remove an extension by url
  void removeExtension(String url) {
    extension_?.removeWhere((FhirExtensionBuilder ext) => ext.url.equals(url));
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

  /// Implementing the setProperty method
  ElementBuilder setProperty(String name, dynamic value) {
    switch (name) {
      case 'id':
        if (value is String) {
          return ElementBuilder(
              id: value.toFhirStringBuilder, extension_: extension_);
        } else {
          throw ArgumentError('Invalid type for id. Expected String.');
        }
      case 'extension':
        if (value is List<FhirExtensionBuilder>) {
          return ElementBuilder(id: id, extension_: value);
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
  bool equalsDeep(FhirBaseBuilder? o) {
    if (o == null || o is! ElementBuilder) {
      return false;
    }

    return id == o.id &&
        FhirBaseBuilder.compareDeepLists(extension_, o.extension_, true);
  }

  /// Method to compare shallow equality of two elements
  bool equalsShallow(ElementBuilder other) {
    return id == other.id;
  }

  @override
  bool isEmpty() {
    return super.isEmpty() && (extension_?.isEmpty ?? true);
  }

  /// Method to copy the current element
  ElementBuilder copy() {
    final copiedElement = ElementBuilder(
      id: id,
      extension_: extension_ == null
          ? null
          : List<FhirExtensionBuilder>.from(
              extension_!.map((FhirExtensionBuilder ext) => ext.copy()),
            ),
    );
    return copiedElement;
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
    return json;
  }

  @override
  FhirBaseBuilder clone() => copy();

  @override
  FhirBaseBuilder? getChildByName(String name) {
    if (name == 'id') {
      return id;
    } else if (name == 'extension') {
      if (extension_ == null && extension_!.isEmpty) {
        return null;
      } else if (extension_!.length == 1) {
        return extension_!.first;
      } else {
        throw FHIRException(message: 'Too manye values for $name found');
      }
    }
    return null;
  }

  @override
  List<FhirBaseBuilder> getChildrenByName(String name,
      [bool checkValid = false]) {
    if (name == 'id') {
      return [id!];
    } else if (name == 'extension') {
      return extension_ ?? <FhirExtensionBuilder>[];
    }
    return <FhirBaseBuilder>[];
  }

  @override

  /// Sets a property by name.
  FhirBaseBuilder setChildByName(String childName, dynamic child) {
    if (child is! FhirBaseBuilder && child is! List<FhirBaseBuilder>) {
      throw Exception('Cannot set child value for $childName');
    }
    switch (childName) {
      case 'id':
        if (child is FhirStringBuilder) {
          return copyWith(id: child);
        }
        throw Exception('Cannot set child value for $childName');
      case 'extension':
        if (child is List<FhirExtensionBuilder>) {
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

  /// Creates an empty property in the object
  @override
  ElementBuilder createProperty(String propertyName) {
    switch (propertyName) {
      case 'id':
        return copyWith(id: FhirStringBuilder.empty());
      case 'extension':
        return copyWith(extension_: <FhirExtensionBuilder>[]);
      default:
        throw Exception('Cannot make property for $propertyName');
    }
  }

  /// Clears specific fields in this object
  @override
  ElementBuilder clear({bool id = false, bool extension_ = false}) {
    return ElementBuilder(
      id: id == true ? FhirStringBuilder.empty() : this.id,
      extension_:
          extension_ == true ? <FhirExtensionBuilder>[] : this.extension_,
    );
  }
}

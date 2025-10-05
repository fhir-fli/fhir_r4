// ignore_for_file: one_member_abstracts

import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

part 'element.g.dart';

/// [Element] Base definition for all FHIR elements.
class Element extends FhirBase {
  /// Constructor for Element with optional id and extensions.
  const Element({
    this.id,
    this.extension_,
    this.disallowExtensions = false,
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

  @override
  bool equalsDeep(FhirBase? o) {
    if (o == null || o is! Element) {
      return false;
    }
    return id == o.id && compareDeepLists(extension_, o.extension_, true);
  }

  /// Method to compare shallow equality of two elements.
  bool equalsShallow(Element other) {
    return id == other.id;
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
  $ElementCopyWith<Element> get copyWith =>
      $ElementCopyWithImpl<Element>(this, (value) => value);
}

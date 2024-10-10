import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

/// Base class for elements inside a resource but not those in a data type.
@Entity()
abstract class BackboneElement extends DataType {
  /// Constructor for BackboneElement
  BackboneElement({
    super.id,
    super.extension_,
    this.modifierExtension,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  @override
  String get fhirType => 'BackboneElement';

  /// List of modifier extensions for additional, non-core information
  final List<FhirExtension>? modifierExtension;

  /// Method to check if there are any modifier extensions
  bool hasModifierExtension() => modifierExtension?.isNotEmpty ?? false;

  /// Gets the first repetition of modifier extensions
  FhirExtension getModifierExtensionFirstRep() {
    return modifierExtension?.isEmpty ?? true
        ? FhirExtension(url: FhirString('fhirfli.dev'))
        : modifierExtension!.first;
  }

  /// Retrieves all modifier extensions by URL
  List<FhirExtension> getModifierExtensionsByUrl(String url) {
    return modifierExtension
            ?.where((FhirExtension ext) => ext.url.equals(url))
            .toList() ??
        <FhirExtension>[];
  }

  /// Adds a modifier extension
  void addModifierExtension(FhirExtension ext) {
    modifierExtension?.add(ext);
  }

  /// Removes modifier extensions by URL
  void removeModifierExtension(String url) {
    modifierExtension?.removeWhere((FhirExtension ext) => ext.url.equals(url));
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
    return super.isEmpty() && (modifierExtension?.isEmpty ?? true);
  }

  @override
  Map<String, Object?> toJson() {
    final Map<String, Object?> json = <String, Object?>{};
    if (id?.value != null) {
      json['id'] = id?.value;
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map((FhirExtension e) => e.toJson()).toList();
    }
    if (modifierExtension?.isNotEmpty ?? false) {
      json['modifierExtension'] =
          modifierExtension!.map((FhirExtension e) => e.toJson()).toList();
    }
    return json;
  }

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
  BackboneElement copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  });
}

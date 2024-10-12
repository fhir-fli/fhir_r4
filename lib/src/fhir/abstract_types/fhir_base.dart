import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:fhir_r4/fhir_r4.dart';

/// Base class for all FHIR elements.
abstract class FhirBase {
  /// Main constructor for [FhirBase]
  FhirBase({
    this.userData,
    this.formatCommentsPre,
    this.formatCommentsPost,
    this.annotations,
    this.children,
    this.namedChildren,
  });

  /// Factory constructor for [FhirBase] that takes in a [dynamic]
  factory FhirBase.fromJson(dynamic json) =>
      throw UnimplementedError('FhirBase.fromJson $json');

  /// Returns a [String] representation of the type of the object
  String get fhirType => 'FhirBase';

  /// User data map for storing additional information
  final Map<String, Object?>? userData;

  /// List of comments to be added before the element
  final List<String>? formatCommentsPre;

  /// List of comments to be added after the element
  final List<String>? formatCommentsPost;

  /// List of annotations for additional, non-core information
  final List<dynamic>? annotations;

  /// List of children for the element
  final List<FhirBase>? children;

  /// Map of named children for the element
  final Map<String, FhirBase>? namedChildren;

  /// Returns a [Map] representation of the object, usually. As
  /// [PrimitiveType]s also override this method, it says returning a dynamic,
  /// but it's usually a [Map] representation.
  dynamic toJson() {
    final json = <String, Object?>{};
    namedChildren?.forEach((String key, FhirBase child) {
      json[key] = child.toJson();
    });
    return json;
  }

  /// Returns a [Map] representation of the object with the type
  dynamic toJsonWithType() {
    final dynamic json = toJson();
    if (json is Map<String, Object?>) {
      json['fhirType'] = fhirType;
    }
    return json;
  }

  /// Produces a Yaml formatted String version of the object
  dynamic toYaml() {
    final dynamic json = toJson();
    if (json is Map<String, Object?>) {
      return json2yaml(json);
    } else {
      return json;
    }
  }

  /// Produces a Json formatted String version of the object
  String toJsonString() => jsonEncode(toJson());

  /// User Data Methods
  dynamic getUserData(String name) => userData?[name];

  /// User Data Methods
  FhirBase setUserData(String name, dynamic value) {
    final updatedUserData =
        userData == null ? null : Map<String, Object?>.from(userData!);
    updatedUserData?[name] = value;
    return copyWith(userData: updatedUserData);
  }

  /// User Data Methods
  FhirBase clearUserData(String name) {
    final updatedUserData =
        userData == null ? null : Map<String, Object?>.from(userData!);
    if (updatedUserData != null) {
      updatedUserData.remove(name);
    }
    return copyWith(userData: updatedUserData);
  }

  /// Annotations Methods
  FhirBase addAnnotation(dynamic annotation) {
    final updatedAnnotations =
        annotations == null ? null : List<dynamic>.from(annotations!);
    if (annotations != null) {
      updatedAnnotations!.add(annotation);
    }

    return copyWith(annotations: updatedAnnotations);
  }

  /// Annotations Methods
  FhirBase removeAnnotations(Type type) {
    final updatedAnnotations =
        annotations == null ? null : List<dynamic>.from(annotations!);
    if (updatedAnnotations != null) {
      updatedAnnotations
          .removeWhere((dynamic element) => element.runtimeType == type);
    }
    return copyWith(annotations: updatedAnnotations);
  }

  /// Child Management Methods
  FhirBase addChild(FhirBase child) {
    final updatedChildren =
        children == null ? null : List<FhirBase>.from(children!);
    if (children != null) {
      children!.add(child);
    }
    return copyWith(children: updatedChildren);
  }

  /// Child Management Methods
  FhirBase addNamedChild(String name, FhirBase child) {
    final updatedNamedChildren = namedChildren == null
        ? <String, FhirBase>{}
        : Map<String, FhirBase>.from(namedChildren!);
    updatedNamedChildren[name] = child;
    return copyWith(namedChildren: updatedNamedChildren);
  }

  /// Child Management Methods
  bool isEmpty() =>
      (userData?.isEmpty ?? true) &&
      (annotations?.isEmpty ?? true) &&
      (children?.isEmpty ?? true);

  /// User Data Methods
  bool hasUserData(String name) => userData?.containsKey(name) ?? false;

  /// User Data Methods
  String? getUserString(String name) {
    final dynamic data = getUserData(name);
    return data?.toString();
  }

  /// User Data Methods
  int getUserInt(String name) {
    final dynamic data = getUserData(name);
    return data is int ? data : 0;
  }

  /// User Data Methods
  bool hasFormatComment() =>
      (formatCommentsPre?.isNotEmpty ?? false) ||
      (formatCommentsPost?.isNotEmpty ?? false);

  /// User Data Methods
  static bool compareDeep(
    FhirBase? e1,
    FhirBase? e2, {
    bool allowNull = false,
  }) {
    if (allowNull) {
      final noLeft = e1 == null || e1.isEmpty();
      final noRight = e2 == null || e2.isEmpty();
      if (noLeft && noRight) {
        return true;
      }
    }

    if (e1 == null || e2 == null) {
      return false;
    }

    return e1.equalsDeep(e2);
  }

  /// User Data Methods
  bool compareDeepLists<T extends FhirBase>(List<T>? list1, List<T>? list2) {
    if (list1 == null && list2 == null) {
      return true;
    }
    if (list1 == null || list2 == null || list1.length != list2.length) {
      return false;
    }

    for (var i = 0; i < list1.length; i++) {
      if (!list1[i].equalsDeep(list2[i])) {
        return false;
      }
    }

    return true;
  }

  /// User Data Methods
  bool equalsDeep(FhirBase? other) {
    return const DeepCollectionEquality().equals(toJson(), other?.toJson());
  }

  /// User Data Methods
  bool isExactly(FhirBase other) => other.runtimeType == runtimeType;

  /// User Data Methods
  bool matches(FhirBase other) => other.runtimeType == runtimeType;

  /// User Data Methods
  FhirBase? getChildByName(String name) => namedChildren?[name];

  /// User Data Methods
  bool tryGetValue(String key, dynamic value) => false;

  /// User Data Methods
  List<String> validate() => <String>[];

  /// User Data Methods
  bool get isPrimitive => false;

  /// User Data Methods
  String? primitiveValue() => null;

  /// User Data Methods
  FhirBase copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  });

  /// Subclasses must implement clone
  FhirBase clone();
}

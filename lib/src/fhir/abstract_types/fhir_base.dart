import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@Entity()
abstract class FhirBase {
  FhirBase({
    this.userData,
    this.formatCommentsPre,
    this.formatCommentsPost,
    this.annotations,
    this.children,
    this.namedChildren,
  });

  @Id()
  int dbId = 0;

  String get fhirType => 'FhirBase';
  final Map<String, Object?>? userData;
  final List<String>? formatCommentsPre;
  final List<String>? formatCommentsPost;
  final List<dynamic>? annotations;
  final List<FhirBase>? children;
  final Map<String, FhirBase>? namedChildren;

  dynamic toJson() {
    final Map<String, Object?> json = <String, Object?>{};
    namedChildren?.forEach((String key, FhirBase child) {
      json[key] = child.toJson();
    });
    return json;
  }

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

  factory FhirBase.fromJson(dynamic json) =>
      throw UnimplementedError('FhirBase.fromJson $json');

  String toJsonString() => jsonEncode(toJson());

  // User Data Methods
  dynamic getUserData(String name) => userData?[name];

  FhirBase setUserData(String name, dynamic value) {
    final Map<String, Object?>? updatedUserData =
        userData == null ? null : Map<String, Object?>.from(userData!);
    updatedUserData?[name] = value;
    return copyWith(userData: updatedUserData);
  }

  FhirBase clearUserData(String name) {
    final Map<String, Object?>? updatedUserData =
        userData == null ? null : Map<String, Object?>.from(userData!);
    if (updatedUserData != null) {
      updatedUserData.remove(name);
    }
    return copyWith(userData: updatedUserData);
  }

  // Annotations Methods
  FhirBase addAnnotation(dynamic annotation) {
    final List<dynamic>? updatedAnnotations =
        annotations == null ? null : List<dynamic>.from(annotations!);
    if (annotations != null) {
      updatedAnnotations!.add(annotation);
    }

    return copyWith(annotations: updatedAnnotations);
  }

  FhirBase removeAnnotations(Type type) {
    final List<dynamic>? updatedAnnotations =
        annotations == null ? null : List<dynamic>.from(annotations!);
    if (updatedAnnotations != null) {
      updatedAnnotations
          .removeWhere((dynamic element) => element.runtimeType == type);
    }
    return copyWith(annotations: updatedAnnotations);
  }

  // Child Management Methods
  FhirBase addChild(FhirBase child) {
    final List<FhirBase>? updatedChildren =
        children == null ? null : List<FhirBase>.from(children!);
    if (children != null) {
      children!.add(child);
    }
    return copyWith(children: updatedChildren);
  }

  FhirBase addNamedChild(String name, FhirBase child) {
    final Map<String, FhirBase> updatedNamedChildren = namedChildren == null
        ? <String, FhirBase>{}
        : Map<String, FhirBase>.from(namedChildren!);
    updatedNamedChildren[name] = child;
    return copyWith(namedChildren: updatedNamedChildren);
  }

  bool isEmpty() =>
      (userData?.isEmpty ?? true) &&
      (annotations?.isEmpty ?? true) &&
      (children?.isEmpty ?? true);

  bool hasUserData(String name) => userData?.containsKey(name) ?? false;

  String? getUserString(String name) {
    final dynamic data = getUserData(name);
    return data?.toString();
  }

  int getUserInt(String name) {
    final dynamic data = getUserData(name);
    return data is int ? data : 0;
  }

  bool hasFormatComment() =>
      (formatCommentsPre?.isNotEmpty ?? false) ||
      (formatCommentsPost?.isNotEmpty ?? false);

  static bool compareDeep(FhirBase? e1, FhirBase? e2,
      {bool allowNull = false}) {
    if (allowNull) {
      final bool noLeft = e1 == null || e1.isEmpty();
      final bool noRight = e2 == null || e2.isEmpty();
      if (noLeft && noRight) {
        return true;
      }
    }

    if (e1 == null || e2 == null) {
      return false;
    }

    return e1.equalsDeep(e2);
  }

  bool compareDeepLists<T extends FhirBase>(List<T>? list1, List<T>? list2) {
    if (list1 == null && list2 == null) {
      return true;
    }
    if (list1 == null || list2 == null || list1.length != list2.length) {
      return false;
    }

    for (int i = 0; i < list1.length; i++) {
      if (!list1[i].equalsDeep(list2[i])) {
        return false;
      }
    }

    return true;
  }

  bool equalsDeep(FhirBase? other) {
    return const DeepCollectionEquality().equals(toJson(), other?.toJson());
  }

  bool isExactly(FhirBase other) => other.runtimeType == runtimeType;

  bool matches(FhirBase other) => other.runtimeType == runtimeType;

  FhirBase? getChildByName(String name) => namedChildren?[name];

  bool tryGetValue(String key, dynamic value) => false;

  List<String> validate() => <String>[];

  bool get isPrimitive => false;

  String? primitiveValue() => null;

  FhirBase copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  });

  // Subclasses must implement clone
  FhirBase clone();
}

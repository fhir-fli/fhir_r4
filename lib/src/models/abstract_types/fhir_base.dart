import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// Base class for all FHIR elements.
abstract class FhirBase {
  /// Main constructor for [FhirBase].
  const FhirBase({
    this.userData,
    this.formatCommentsPre,
    this.formatCommentsPost,
    this.annotations,
  });

  /// User data map for storing additional information.
  final Map<String, Object?>? userData;

  /// List of comments to be added before the element.
  final List<String>? formatCommentsPre;

  /// List of comments to be added after the element.
  final List<String>? formatCommentsPost;

  /// List of annotations for additional, non-core information
  final List<dynamic>? annotations;

  /// Returns the FHIR type of the object.
  String get fhirType => 'FhirBase';

  /// Checks if the object is primitive.
  bool get isPrimitive => false;

  /// Checks if the object has a primitive value.
  bool get hasPrimitiveValue => isPrimitive;

  /// Retrieves the primitive value of the object.
  String? primitiveValue() => null;

  /// Checks if the object is empty.
  bool isEmpty() =>
      (userData?.isEmpty ?? true) &&
      (formatCommentsPre?.isEmpty ?? true) &&
      (formatCommentsPost?.isEmpty ?? true);

  /// Checks if the object has user data for a given key.
  bool hasUserData(String name) => userData?.containsKey(name) ?? false;

  /// Gets user data for a given key.
  dynamic getUserData(String name) => userData?[name];

  /// Sets user data for a given key.
  FhirBase setUserData(String name, dynamic value) {
    final updatedUserData = userData == null
        ? <String, Object?>{}
        : Map<String, Object?>.from(userData!);
    updatedUserData[name] = value;
    return copyWith(userData: updatedUserData);
  }

  /// Clears user data for a given key.
  FhirBase clearUserData(String name) {
    if (userData != null && userData!.containsKey(name)) {
      final updatedUserData = Map<String, Object?>.from(userData!);
      // ignore: cascade_invocations
      updatedUserData.remove(name);
      return copyWith(userData: updatedUserData);
    }
    return this;
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

  /// Gets a user data value as a string.
  String? getUserString(String name) => getUserData(name)?.toString();

  /// Gets a user data value as an integer.
  int getUserInt(String name) {
    final dynamic value = getUserData(name);
    return value is int ? value : 0;
  }

  /// Checks if there are format comments.
  bool hasFormatComment() =>
      (formatCommentsPre?.isNotEmpty ?? false) ||
      (formatCommentsPost?.isNotEmpty ?? false);

  /// Lists all children as properties.
  List<Property> listChildren([List<Property>? children]) {
    // Subclasses should override this to return their specific children.
    return <Property>[];
  }

  /// Retrieves a property by name.
  Property? getChildByName(String name) {
    return listChildren().firstWhereOrNull((property) => property.name == name);
  }

  /// Retrieves a property by name.
  List<FhirBase> listChildrenByName(String name) {
    final result = <FhirBase>[];
    for (final b in listChildrenByNameValid(name, true)) {
      if (b != null) {
        result.add(b);
      }
    }
    return result;
  }

  /// Retrieves a property by name.
  // ignore: avoid_positional_boolean_parameters
  List<FhirBase?> listChildrenByNameValid(String name, bool checkValid) {
    if (name == '*') {
      // Collect all child values for wildcard name
      final children = <Property>[];
      listChildren(children); // Populate the list of children
      final result = <FhirBase?>[];
      for (final c in children) {
        result.addAll(c.getValues()); // Add all values from each property
      }
      return result;
    } else {
      throw ArgumentError('Invalid name: $name');
    }
  }

  /// Deep equality check.
  bool equalsDeep(FhirBase? other) {
    return other != null;
  }

  /// Compares two [FhirBase] objects deeply.
  static bool compareDeep(
    FhirBase? e1,
    FhirBase? e2, [
    // ignore: avoid_positional_boolean_parameters
    bool allowNull = false,
  ]) {
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
    return const DeepCollectionEquality().equals(e1.toJson(), e2.toJson());
  }

  /// Compares two lists of [FhirBase] objects deeply.
  static bool compareDeepLists<T extends FhirBase>(
    List<T>? list1,
    List<T>? list2, [
    // ignore: avoid_positional_boolean_parameters
    bool allowNull = false,
  ]) {
    if (allowNull) {
      final noLeft = list1 == null || list1.isEmpty;
      final noRight = list2 == null || list2.isEmpty;
      if (noLeft && noRight) {
        return true;
      }
    }
    if (list1 == null || list2 == null || list1.length != list2.length) {
      return false;
    }
    for (var i = 0; i < list1.length; i++) {
      if (!compareDeep(list1[i], list2[i], allowNull)) {
        return false;
      }
    }
    return true;
  }

  /// Converts the object to a JSON representation.
  Map<String, dynamic> toJson() {
    final json = <String, Object?>{};
    for (final property in listChildren()) {
      json[property.name] = property.values;
    }
    return json;
  }

  /// Converts the object to a YAML string.
  String toYaml() => json2yaml(toJson());

  /// Converts the object to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Copies the object with new values.
  FhirBase copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  });

  /// Subclasses must implement the clone method.
  FhirBase clone();
}

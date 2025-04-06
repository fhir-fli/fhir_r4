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
    this.objectPath,
  });

  /// Creates an empty [FhirBase] object.
  factory FhirBase.empty() => throw UnimplementedError();

  /// User data map for storing additional information.
  final Map<String, dynamic>? userData;

  /// List of comments to be added before the element.
  final List<String>? formatCommentsPre;

  /// List of comments to be added after the element.
  final List<String>? formatCommentsPost;

  /// List of annotations for additional, non-core information
  final List<dynamic>? annotations;

  /// Returns the FHIR type of the object.
  String get fhirType => 'FhirBase';

  /// Path to the object in the FHIR tree.
  final String? objectPath;

  /// Checks if the object is primitive.
  bool get isPrimitive => this is PrimitiveType;

  /// Checks if the object has a primitive value.
  bool get hasPrimitiveValue => isPrimitive;

  /// Retrieves the primitive value of the object.
  String? get primitiveValue => null;

  /// All [FhirBase]s and [Resource]s are NOT metadata based
  bool get isMetadataBased => false;

  /// Checks if the object has a given type.
  bool hasType(List<String> names) {
    final t = fhirType;
    for (final n in names) {
      if (n.equalsIgnoreCase(t)) return true;
    }
    return false;
  }

  /// Checks if the object is empty.
  bool isEmpty() =>
      this is PrimitiveType && (this as PrimitiveType).valueString == null;

  /// Checks if the object has user data for a given key.
  bool hasUserData(String name) => userData?.containsKey(name) ?? false;

  /// Gets user data for a given key.
  dynamic getUserData(String name) => userData?[name];

  /// Sets user data for a given key.
  FhirBase setUserData(String name, dynamic value) {
    final updatedUserData = userData == null
        ? <String, Object?>{}
        : Map<String, dynamic>.from(userData!);
    updatedUserData[name] = value;
    return copyWith(userData: updatedUserData);
  }

  /// Clears user data for a given key.
  FhirBase clearUserData(String name) {
    if (userData != null && userData!.containsKey(name)) {
      final updatedUserData = Map<String, dynamic>.from(userData!)
        ..remove(name);
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

  /// Lists the JSON keys for the object.
  List<String> listChildrenNames() {
    // Subclasses should override this to return their specific children.
    return <String>[];
  }

  /// Retrieves a property by name, or if its a list that contains only one
  /// element, returns that element.
  FhirBase? getChildByName(String name) {
    final children = getChildrenByName(name);
    if (children.isEmpty) {
      return null;
    }
    if (children.length == 1) {
      return children.first;
    }
    throw Exception('Cannot get child value for $name');
  }

  /// Retrieves the properties of the object.
  // ignore: avoid_positional_boolean_parameters
  List<FhirBase> getChildrenByName(String name, [bool checkValid = false]);

  /// Sets a property by name.
  FhirBase setChildByName(String childName, FhirBase? child) {
    throw Exception('Cannot set child value for $childName');
  }

  /// Retrieves the type of the object by element name.
  List<String> typeByElementName(String elementName) {
    return <String>[];
  }

  /// Sets the properties of the object.
  FhirBase setChildrenByName(Map<String, FhirBase> children) {
    var updated = this;
    for (final entry in children.entries) {
      updated = updated.setChildByName(entry.key, entry.value);
    }
    return updated;
  }

  /// Creates an empty property in the object
  FhirBase createProperty(String propertyName);

  /// Clears specific fields in this object
  FhirBase clear();

  /// Deep equality check.
  bool equalsDeep(FhirBase? o) {
    return o != null;
  }

  /// Checks if the object is equal to another object.
  // ignore: avoid_positional_boolean_parameters
  bool compareDeepStrings(String? s1, String? s2, bool allowNull) {
    if (allowNull) {
      final noLeft = s1 == null || s1.isEmpty;
      final noRight = s2 == null || s2.isEmpty;
      if (noLeft && noRight) {
        return true;
      }
    }
    if (s1 == null || s2 == null) {
      return false;
    }
    return s1 == s2;
  }

  /// Checks if the object is equal to another object.
  static bool compareDeepLists<T extends FhirBase>(
    List<T>? e1,
    List<T>? e2,
    // ignore: avoid_positional_boolean_parameters
    bool allowNull,
  ) {
    if (noList(e1) && noList(e2) && allowNull) {
      return true;
    }
    if (noList(e1) || noList(e2)) {
      return false;
    }
    if (e1!.length != e2!.length) {
      return false;
    }
    for (var i = 0; i < e1.length; i++) {
      if (!compareDeepBases(e1[i], e2[i], allowNull)) {
        return false;
      }
    }
    return true;
  }

  /// Checks if the object has values.
  bool hasValues() {
    for (final child in listChildrenNames()) {
      if (getChildByName(child) != null) {
        return true;
      }
    }
    return false;
  }

  /// Checks if the list is empty.
  static bool noList<T extends FhirBase>(List<T>? list) {
    return list == null ||
        list.isEmpty ||
        (list.length == 1 && list.first.isEmpty());
  }

  /// Checks if the object is equal to another object.
  static bool compareDeepBases(
    FhirBase? e1,
    FhirBase? e2,
    // ignore: avoid_positional_boolean_parameters
    bool allowNull,
  ) {
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

    if (e2.isMetadataBased && !e1.isMetadataBased) {
      return e2.equalsDeep(e1);
    } else {
      return e1.equalsDeep(e2);
    }
  }

  /// Compares two [FhirBase] objects deeply.
  static bool compareDeep(
    FhirBase? e1,
    FhirBase? e2, [
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

  /// Converts the object to a JSON representation.
  Map<String, dynamic> toJson();

  /// Converts the object to a YAML string.
  String toYaml() => json2yaml(toJson());

  /// Converts the object to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Converts the object to a pretty JSON string.
  String prettyPrint() => prettyPrintJson(toJson());

  /// Copies the object with new values.
  FhirBase copyWith({
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  });

  /// Subclasses must implement the clone method.
  FhirBase clone();

  /// Returns an Object cast as a Type if it is that type.
  T? isAs<T extends FhirBase>() => this is T ? this as T : null;
}

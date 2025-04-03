import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// Base class for all FHIR elements.
abstract class FhirBaseBuilder {
  /// Main constructor for [FhirBaseBuilder].
  FhirBaseBuilder({
    this.userData,
    this.formatCommentsPre,
    this.formatCommentsPost,
    this.annotations,
    this.objectPath,
  });

  /// Creates an empty [FhirBaseBuilder] object.
  factory FhirBaseBuilder.empty() => throw UnimplementedError();

  /// User data map for storing additional information.
  Map<String, dynamic>? userData;

  /// List of comments to be added before the element.
  List<String>? formatCommentsPre;

  /// List of comments to be added after the element.
  List<String>? formatCommentsPost;

  /// List of annotations for additional, non-core information
  List<dynamic>? annotations;

  /// Only for use in builders and only for mapping
  String? mappingId;

  /// Returns the FHIR type of the object.
  String get fhirType => 'FhirBase';

  /// Path to the object in the FHIR tree.
  String? objectPath;

  /// Checks if the object is primitive.
  bool get isPrimitive => this is PrimitiveTypeBuilder;

  /// Checks if the object has a primitive value.
  bool get hasPrimitiveValue => isPrimitive;

  /// Retrieves the primitive value of the object.
  String? get primitiveValue => null;

  /// All [FhirBaseBuilder]s and [ResourceBuilder]s are NOT metadata based
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
      this is PrimitiveTypeBuilder &&
      (this as PrimitiveTypeBuilder).valueString == null;

  /// Checks if the object has user data for a given key.
  bool hasUserData(String name) => userData?.containsKey(name) ?? false;

  /// Gets user data for a given key.
  dynamic getUserData(String name) => userData?[name];

  /// Sets user data for a given key.
  FhirBaseBuilder setUserData(String name, dynamic value) {
    final updatedUserData = userData == null
        ? <String, Object?>{}
        : Map<String, dynamic>.from(userData!);
    updatedUserData[name] = value;
    return copyWith(userData: updatedUserData);
  }

  /// Clears user data for a given key.
  FhirBaseBuilder clearUserData(String name) {
    if (userData != null && userData!.containsKey(name)) {
      final updatedUserData = Map<String, dynamic>.from(userData!)
        ..remove(name);
      return copyWith(userData: updatedUserData);
    }
    return this;
  }

  /// Annotations Methods
  FhirBaseBuilder addAnnotation(dynamic annotation) {
    final updatedAnnotations =
        annotations == null ? null : List<dynamic>.from(annotations!);
    if (annotations != null) {
      updatedAnnotations!.add(annotation);
    }

    return copyWith(annotations: updatedAnnotations);
  }

  /// Annotations Methods
  FhirBaseBuilder removeAnnotations(Type type) {
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
  FhirBaseBuilder? getChildByName(String name) {
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
  List<FhirBaseBuilder> getChildrenByName(
    String name, [
    bool checkValid = false,
  ]);

  /// Sets a property by name.
  void setChildByName(String childName, FhirBaseBuilder? child) {
    throw Exception('Cannot set child value for $childName');
  }

  /// Retrieves the type of the object by element name.
  List<String> typeByElementName(String elementName) {
    return <String>[];
  }

  /// Sets the properties of the object.
  void setChildrenByName(Map<String, FhirBaseBuilder> children) {
    for (final entry in children.entries) {
      setChildByName(entry.key, entry.value);
    }
  }

  /// Creates an empty property in the object
  void createProperty(String propertyName);

  /// Clears specific fields in this object
  void clear();

  /// Deep equality check.
  bool equalsDeep(FhirBaseBuilder? o) {
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
  static bool compareDeepLists<T extends FhirBaseBuilder>(
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
  static bool noList<T extends FhirBaseBuilder>(List<T>? list) {
    return list == null ||
        list.isEmpty ||
        (list.length == 1 && list.first.isEmpty());
  }

  /// Checks if the object is equal to another object.
  static bool compareDeepBases(
    FhirBaseBuilder? e1,
    FhirBaseBuilder? e2,
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

  /// Compares two [FhirBaseBuilder] objects deeply.
  static bool compareDeep(
    FhirBaseBuilder? e1,
    FhirBaseBuilder? e2, [
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

  /// Ccreates a [fhir.FhirBase] object from the builder.
  fhir.FhirBase build();

  /// Converts the object to a JSON representation.
  Map<String, dynamic> toJson();

  /// Converts the object to a YAML string.
  String toYaml() => fhir.json2yaml(toJson());

  /// Converts the object to a JSON string.
  String toJsonString() => jsonEncode(toJson());

  /// Converts the object to a pretty JSON string.
  String prettyPrint() => fhir.prettyPrintJson(toJson());

  /// Copies the object with new values.
  FhirBaseBuilder copyWith({
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  });

  /// Subclasses must implement the clone method.
  FhirBaseBuilder clone();

  /// Returns an Object cast as a Type if it is that type.
  T? isAs<T extends FhirBaseBuilder>() => this is T ? this as T : null;
}

// ignore_for_file: one_member_abstracts

import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

/// A unique sentinel value which is not null.
const fhirSentinel = Object();

/// Base class for all FHIR elements.
abstract class FhirBase {
  /// Main constructor for [FhirBase].
  const FhirBase();

  /// Returns the FHIR type of the object.
  String get fhirType => 'FhirBase';

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

  /// Deep equality check.
  bool equalsDeep(FhirBase? o) {
    return o != null;
  }

  @override
  bool operator ==(Object other) {
    return other is FhirBase && equalsDeep(other);
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

  /// Retrieves the properties of the object.
  // ignore: avoid_positional_boolean_parameters
  List<FhirBase> getChildrenByName(String name, [bool checkValid = false]);

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
  $FhirBaseCopyWith<FhirBase> get copyWith;

  /// Subclasses must implement the clone method.
  FhirBase clone() => copyWith();

  /// Returns an Object cast as a Type if it is that type.
  T? isAs<T extends FhirBase>() => this is T ? this as T : null;
}

/// The public interface for copyWith for Element.
/// Notice that each parameter is declared with its proper type.
abstract class $FhirBaseCopyWith<T> {
  /// The call method uses parameters of type Object? with a default
  /// value of [fhirSentinel] so that omitted parameters retain the sentinel
  /// value while explicit nulls do not.
  T call();
}

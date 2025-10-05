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
  // ignore: hash_and_equals, avoid_equals_and_hash_code_on_mutable_classes
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

  // ===========================================================================
  // STATIC COMPARISON METHODS
  // ===========================================================================

  /// Checks if the list is empty.
  static bool noList<T extends FhirBase>(List<T>? list) {
    return list == null ||
        list.isEmpty ||
        (list.length == 1 && list.first.isEmpty());
  }

  /// Deeply compares two FhirBase objects, either of which can be null.
  /// This is a convenience method that handles null checking before
  /// calling equalsDeep.
  bool equalsDeepWithNull(FhirBase? obj1, FhirBase? obj2) {
    if (obj1 == null && obj2 == null) {
      return true;
    } else if (obj1 == null || obj2 == null) {
      return false;
    } else {
      return obj1.equalsDeep(obj2);
    }
  }

  /// Compares two lists of FhirBase objects for equality.
  /// Returns true if both lists are null, or if they have the same length
  /// and all corresponding elements are deeply equal.
  bool listEquals<T extends FhirBase>(List<T>? list1, List<T>? list2) {
    if (list1 == null && list2 == null) return true;
    if (list1 == null || list2 == null) return false;
    if (list1.length != list2.length) return false;
    for (var i = 0; i < list1.length; i++) {
      if (!list1[i].equalsDeep(list2[i])) return false;
    }
    return true;
  }

  /// Checks if the object is equal to another object with optional null
  /// handling.
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

  /// Compares two lists with optional null/empty handling.
  bool compareDeepLists<T extends FhirBase>(
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

  /// Compares two [FhirBase] objects deeply using JSON comparison.
  /// This method converts both objects to JSON and compares the resulting
  /// structures, which catches all differences including those in nested
  /// objects.
  bool compareDeep(
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
}

/// The public interface for copyWith for Element.
/// Notice that each parameter is declared with its proper type.
abstract class $FhirBaseCopyWith<T> {
  /// The call method uses parameters of type Object? with a default
  /// value of [fhirSentinel] so that omitted parameters retain the sentinel
  /// value while explicit nulls do not.
  T call();
}

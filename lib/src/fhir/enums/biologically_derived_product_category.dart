import 'package:json_annotation/json_annotation.dart';

/// Biologically Derived Product Category.
enum BiologicallyDerivedProductCategory {
  /// Display: Organ
  /// Definition: A collection of tissues joined in a structural unit to serve a common function.
  @JsonValue('organ')
  organ,

  /// Display: Tissue
  /// Definition: An ensemble of similar cells and their extracellular matrix from the same origin that together carry out a specific function.
  @JsonValue('tissue')
  tissue,

  /// Display: Fluid
  /// Definition: Body fluid.
  @JsonValue('fluid')
  fluid,

  /// Display: Cells
  /// Definition: Collection of cells.
  @JsonValue('cells')
  cells,

  /// Display: BiologicalAgent
  /// Definition: Biological agent of unspecified type.
  @JsonValue('biologicalAgent')
  biologicalAgent,
  ;

  @override
  String toString() {
    switch (this) {
      case organ:
        return 'organ';
      case tissue:
        return 'tissue';
      case fluid:
        return 'fluid';
      case cells:
        return 'cells';
      case biologicalAgent:
        return 'biologicalAgent';
    }
  }

  String toJson() => toString();
  BiologicallyDerivedProductCategory fromString(String str) {
    switch (str) {
      case 'organ':
        return BiologicallyDerivedProductCategory.organ;
      case 'tissue':
        return BiologicallyDerivedProductCategory.tissue;
      case 'fluid':
        return BiologicallyDerivedProductCategory.fluid;
      case 'cells':
        return BiologicallyDerivedProductCategory.cells;
      case 'biologicalAgent':
        return BiologicallyDerivedProductCategory.biologicalAgent;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  BiologicallyDerivedProductCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}

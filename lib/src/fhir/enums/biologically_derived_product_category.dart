/// Biologically Derived Product Category.
enum BiologicallyDerivedProductCategory {
  /// Display: Organ
  /// Definition: A collection of tissues joined in a structural unit to serve a common function.
  organ,

  /// Display: Tissue
  /// Definition: An ensemble of similar cells and their extracellular matrix from the same origin that together carry out a specific function.
  tissue,

  /// Display: Fluid
  /// Definition: Body fluid.
  fluid,

  /// Display: Cells
  /// Definition: Collection of cells.
  cells,

  /// Display: BiologicalAgent
  /// Definition: Biological agent of unspecified type.
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

  /// Returns a [String] from a [BiologicallyDerivedProductCategory] enum.
  String toJson() => toString();

  /// Returns a [BiologicallyDerivedProductCategory] from a [String] enum.
  static BiologicallyDerivedProductCategory fromString(String str) {
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

  /// Returns a [BiologicallyDerivedProductCategory] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static BiologicallyDerivedProductCategory fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}

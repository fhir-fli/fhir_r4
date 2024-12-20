part of 'concept_map.dart';

/// Identifier for the source value set that contains the concepts that are
/// being mapped and provides context for the mappings.
sealed class SourceXConceptMapConceptMap extends DataType {}

/// Identifier for the source value set that contains the concepts that are
/// being mapped and provides context for the mappings.
class UriSourceConceptMapConceptMap extends FhirUri
    implements SourceXConceptMapConceptMap {
  /// Constructor for [UriSourceConceptMapConceptMap]
  UriSourceConceptMapConceptMap(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriSourceConceptMapConceptMap.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriSourceConceptMapConceptMap;
}

/// Identifier for the source value set that contains the concepts that are
/// being mapped and provides context for the mappings.
class CanonicalSourceConceptMapConceptMap extends FhirCanonical
    implements SourceXConceptMapConceptMap {
  /// Constructor for [CanonicalSourceConceptMapConceptMap]
  CanonicalSourceConceptMapConceptMap(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalSourceConceptMapConceptMap.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json) as CanonicalSourceConceptMapConceptMap;
}

/// The target value set provides context for the mappings. Note that the
/// mapping is made between concepts, not between value sets, but the value
/// set provides important context about how the concept mapping choices
/// are made.
sealed class TargetXConceptMapConceptMap extends DataType {}

/// The target value set provides context for the mappings. Note that the
/// mapping is made between concepts, not between value sets, but the value
/// set provides important context about how the concept mapping choices
/// are made.
class UriTargetConceptMapConceptMap extends FhirUri
    implements TargetXConceptMapConceptMap {
  /// Constructor for [UriTargetConceptMapConceptMap]
  UriTargetConceptMapConceptMap(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory UriTargetConceptMapConceptMap.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirUri.fromJson(json) as UriTargetConceptMapConceptMap;
}

/// The target value set provides context for the mappings. Note that the
/// mapping is made between concepts, not between value sets, but the value
/// set provides important context about how the concept mapping choices
/// are made.
class CanonicalTargetConceptMapConceptMap extends FhirCanonical
    implements TargetXConceptMapConceptMap {
  /// Constructor for [CanonicalTargetConceptMapConceptMap]
  CanonicalTargetConceptMapConceptMap(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalTargetConceptMapConceptMap.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json) as CanonicalTargetConceptMapConceptMap;
}

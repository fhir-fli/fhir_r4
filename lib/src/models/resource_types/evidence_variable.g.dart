part of 'evidence_variable.dart';

/// Define members of the evidence element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
sealed class DefinitionXEvidenceVariableCharacteristic {}

/// Define members of the evidence element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
class ReferenceDefinitionEvidenceVariableCharacteristic extends Reference
    implements DefinitionXEvidenceVariableCharacteristic {
  /// Factory constructor for super class
  factory ReferenceDefinitionEvidenceVariableCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json)
          as ReferenceDefinitionEvidenceVariableCharacteristic;
}

/// Define members of the evidence element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
class CanonicalDefinitionEvidenceVariableCharacteristic extends FhirCanonical
    implements DefinitionXEvidenceVariableCharacteristic {
  /// Constructor for [CanonicalDefinitionEvidenceVariableCharacteristic]
  CanonicalDefinitionEvidenceVariableCharacteristic(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory CanonicalDefinitionEvidenceVariableCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirCanonical.fromJson(json)
          as CanonicalDefinitionEvidenceVariableCharacteristic;
}

/// Define members of the evidence element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
class CodeableConceptDefinitionEvidenceVariableCharacteristic
    extends CodeableConcept
    implements DefinitionXEvidenceVariableCharacteristic {
  /// Factory constructor for super class
  factory CodeableConceptDefinitionEvidenceVariableCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptDefinitionEvidenceVariableCharacteristic;
}

/// Define members of the evidence element using Codes (such as condition,
/// medication, or observation), Expressions ( using an expression language
/// such as FHIRPath or CQL) or DataRequirements (such as Diabetes
/// diagnosis onset in the last year).
class ExpressionDefinitionEvidenceVariableCharacteristic extends FhirExpression
    implements DefinitionXEvidenceVariableCharacteristic {
  /// Factory constructor for super class
  factory ExpressionDefinitionEvidenceVariableCharacteristic.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirExpression.fromJson(json)
          as ExpressionDefinitionEvidenceVariableCharacteristic;
}

/// Value or set of values that define the grouping.
sealed class ValueXEvidenceVariableCategory {}

/// Value or set of values that define the grouping.
class CodeableConceptValueEvidenceVariableCategory extends CodeableConcept
    implements ValueXEvidenceVariableCategory {
  /// Factory constructor for super class
  factory CodeableConceptValueEvidenceVariableCategory.fromJson(
    Map<String, dynamic> json,
  ) =>
      CodeableConcept.fromJson(json)
          as CodeableConceptValueEvidenceVariableCategory;
}

/// Value or set of values that define the grouping.
class QuantityValueEvidenceVariableCategory extends Quantity
    implements ValueXEvidenceVariableCategory {
  /// Factory constructor for super class
  factory QuantityValueEvidenceVariableCategory.fromJson(
    Map<String, dynamic> json,
  ) =>
      Quantity.fromJson(json) as QuantityValueEvidenceVariableCategory;
}

/// Value or set of values that define the grouping.
class RangeValueEvidenceVariableCategory extends Range
    implements ValueXEvidenceVariableCategory {
  /// Factory constructor for super class
  factory RangeValueEvidenceVariableCategory.fromJson(
    Map<String, dynamic> json,
  ) =>
      Range.fromJson(json) as RangeValueEvidenceVariableCategory;
}

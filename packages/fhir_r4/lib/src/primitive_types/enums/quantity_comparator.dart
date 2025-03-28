// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How the Quantity should be understood and represented.
class QuantityComparator extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  QuantityComparator._({
    required super.validatedValue,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory QuantityComparator(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return QuantityComparator._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [QuantityComparator] with element only
  factory QuantityComparator.empty() =>
      QuantityComparator._(validatedValue: '');

  /// Factory constructor to create [QuantityComparator] from JSON.
  factory QuantityComparator.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparator.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuantityComparator cannot be constructed from JSON.',
      );
    }
    return QuantityComparator._(
      validatedValue: value,
      element: element,
    );
  }

  /// lt
  static final QuantityComparator lt = QuantityComparator._(
    validatedValue: '<',
    system: 'http://hl7.org/fhir/ValueSet/quantity-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less than'.toFhirString,
  );

  /// le
  static final QuantityComparator le = QuantityComparator._(
    validatedValue: '<=',
    system: 'http://hl7.org/fhir/ValueSet/quantity-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less or Equal to'.toFhirString,
  );

  /// ge
  static final QuantityComparator ge = QuantityComparator._(
    validatedValue: '>=',
    system: 'http://hl7.org/fhir/ValueSet/quantity-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater or Equal to'.toFhirString,
  );

  /// gt
  static final QuantityComparator gt = QuantityComparator._(
    validatedValue: '>',
    system: 'http://hl7.org/fhir/ValueSet/quantity-comparator'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater than'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final QuantityComparator elementOnly =
      QuantityComparator._(validatedValue: '');

  /// List of all enum-like values
  static final List<QuantityComparator> values = [
    lt,
    le,
    ge,
    gt,
  ];

  /// Clones the current instance
  @override
  QuantityComparator clone() => QuantityComparator._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  QuantityComparator withElement(Element? newElement) {
    return QuantityComparator._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  QuantityComparator copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return QuantityComparator._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}

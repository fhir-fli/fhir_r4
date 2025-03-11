// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How slices are interpreted when evaluating an instance.
class SlicingRules extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SlicingRules._({
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
  factory SlicingRules(
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
    return SlicingRules._(
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

  /// Create empty [SlicingRules] with element only
  factory SlicingRules.empty() => SlicingRules._(validatedValue: '');

  /// Factory constructor to create [SlicingRules] from JSON.
  factory SlicingRules.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlicingRules.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('SlicingRules cannot be constructed from JSON.');
    }
    return SlicingRules._(validatedValue: value, element: element);
  }

  /// closed
  static final SlicingRules closed = SlicingRules._(
    validatedValue: 'closed',
    system: 'http://hl7.org/fhir/ValueSet/resource-slicing-rules'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Closed'.toFhirString,
  );

  /// open
  static final SlicingRules open = SlicingRules._(
    validatedValue: 'open',
    system: 'http://hl7.org/fhir/ValueSet/resource-slicing-rules'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open'.toFhirString,
  );

  /// openAtEnd
  static final SlicingRules openAtEnd = SlicingRules._(
    validatedValue: 'openAtEnd',
    system: 'http://hl7.org/fhir/ValueSet/resource-slicing-rules'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Open at End'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SlicingRules elementOnly = SlicingRules._(validatedValue: '');

  /// List of all enum-like values
  static final List<SlicingRules> values = [
    closed,
    open,
    openAtEnd,
  ];

  /// Clones the current instance
  @override
  SlicingRules clone() => SlicingRules._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SlicingRules withElement(Element? newElement) {
    return SlicingRules._(validatedValue: value, element: newElement);
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
  SlicingRules copyWith({
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
    return SlicingRules._(
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

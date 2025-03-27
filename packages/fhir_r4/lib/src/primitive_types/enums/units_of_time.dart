// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A unit of time (units from UCUM).
class UnitsOfTime extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  UnitsOfTime._({
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
  factory UnitsOfTime(
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
    return UnitsOfTime._(
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

  /// Create empty [UnitsOfTime] with element only
  factory UnitsOfTime.empty() => UnitsOfTime._(validatedValue: '');

  /// Factory constructor to create [UnitsOfTime] from JSON.
  factory UnitsOfTime.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitsOfTime.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UnitsOfTime cannot be constructed from JSON.',
      );
    }
    return UnitsOfTime._(
      validatedValue: value,
      element: element,
    );
  }

  /// s
  static final UnitsOfTime s = UnitsOfTime._(
    validatedValue: 's',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'second'.toFhirString,
  );

  /// min
  static final UnitsOfTime min = UnitsOfTime._(
    validatedValue: 'min',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'minute'.toFhirString,
  );

  /// h
  static final UnitsOfTime h = UnitsOfTime._(
    validatedValue: 'h',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'hour'.toFhirString,
  );

  /// d
  static final UnitsOfTime d = UnitsOfTime._(
    validatedValue: 'd',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'day'.toFhirString,
  );

  /// wk
  static final UnitsOfTime wk = UnitsOfTime._(
    validatedValue: 'wk',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'week'.toFhirString,
  );

  /// mo
  static final UnitsOfTime mo = UnitsOfTime._(
    validatedValue: 'mo',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'month'.toFhirString,
  );

  /// a
  static final UnitsOfTime a = UnitsOfTime._(
    validatedValue: 'a',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'year'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final UnitsOfTime elementOnly = UnitsOfTime._(validatedValue: '');

  /// List of all enum-like values
  static final List<UnitsOfTime> values = [
    s,
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Clones the current instance
  @override
  UnitsOfTime clone() => UnitsOfTime._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  UnitsOfTime withElement(Element? newElement) {
    return UnitsOfTime._(validatedValue: value, element: newElement);
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
  UnitsOfTime copyWith({
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
    return UnitsOfTime._(
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

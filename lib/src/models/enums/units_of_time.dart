// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// A unit of time (units from UCUM).
class UnitsOfTime extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  UnitsOfTime._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [UnitsOfTime] with element only
  factory UnitsOfTime.empty() => UnitsOfTime._('');

  /// Factory constructor to create [UnitsOfTime] from JSON.
  factory UnitsOfTime.fromJson(
    Map<String, dynamic> json,
  ) {
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
      value,
      element: element,
    );
  }

  /// s
  static final UnitsOfTime s = UnitsOfTime._(
    's',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'second'.toFhirString,
  );

  /// min
  static final UnitsOfTime min = UnitsOfTime._(
    'min',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'minute'.toFhirString,
  );

  /// h
  static final UnitsOfTime h = UnitsOfTime._(
    'h',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'hour'.toFhirString,
  );

  /// d
  static final UnitsOfTime d = UnitsOfTime._(
    'd',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'day'.toFhirString,
  );

  /// wk
  static final UnitsOfTime wk = UnitsOfTime._(
    'wk',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'week'.toFhirString,
  );

  /// mo
  static final UnitsOfTime mo = UnitsOfTime._(
    'mo',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'month'.toFhirString,
  );

  /// a
  static final UnitsOfTime a = UnitsOfTime._(
    'a',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'year'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final UnitsOfTime elementOnly = UnitsOfTime._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  UnitsOfTime withElement(Element? newElement) {
    return UnitsOfTime._(
      value,
      element: newElement,
    );
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
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}

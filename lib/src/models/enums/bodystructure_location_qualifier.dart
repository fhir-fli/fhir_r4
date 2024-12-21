// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// SNOMED-CT concepts modifying the anatomic location
class BodystructureLocationQualifier extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  BodystructureLocationQualifier._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [BodystructureLocationQualifier] from JSON.
  factory BodystructureLocationQualifier.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BodystructureLocationQualifier.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BodystructureLocationQualifier cannot be constructed from JSON.',
      );
    }
    return BodystructureLocationQualifier._(value, element: element);
  }

  /// value419161000
  static final BodystructureLocationQualifier value419161000 =
      BodystructureLocationQualifier._(
    '419161000',
  );

  /// value419465000
  static final BodystructureLocationQualifier value419465000 =
      BodystructureLocationQualifier._(
    '419465000',
  );

  /// value51440002
  static final BodystructureLocationQualifier value51440002 =
      BodystructureLocationQualifier._(
    '51440002',
  );

  /// value261183002
  static final BodystructureLocationQualifier value261183002 =
      BodystructureLocationQualifier._(
    '261183002',
  );

  /// value261122009
  static final BodystructureLocationQualifier value261122009 =
      BodystructureLocationQualifier._(
    '261122009',
  );

  /// value255561001
  static final BodystructureLocationQualifier value255561001 =
      BodystructureLocationQualifier._(
    '255561001',
  );

  /// value49370004
  static final BodystructureLocationQualifier value49370004 =
      BodystructureLocationQualifier._(
    '49370004',
  );

  /// value264217000
  static final BodystructureLocationQualifier value264217000 =
      BodystructureLocationQualifier._(
    '264217000',
  );

  /// value261089000
  static final BodystructureLocationQualifier value261089000 =
      BodystructureLocationQualifier._(
    '261089000',
  );

  /// value255551008
  static final BodystructureLocationQualifier value255551008 =
      BodystructureLocationQualifier._(
    '255551008',
  );

  /// value351726001
  static final BodystructureLocationQualifier value351726001 =
      BodystructureLocationQualifier._(
    '351726001',
  );

  /// value352730000
  static final BodystructureLocationQualifier value352730000 =
      BodystructureLocationQualifier._(
    '352730000',
  );

  /// For instances where an Element is present but not value

  static final BodystructureLocationQualifier elementOnly =
      BodystructureLocationQualifier._('');

  /// List of all enum-like values
  static final List<BodystructureLocationQualifier> values = [
    value419161000,
    value419465000,
    value51440002,
    value261183002,
    value261122009,
    value255561001,
    value49370004,
    value264217000,
    value261089000,
    value255551008,
    value351726001,
    value352730000,
  ];

  /// Clones the current instance
  @override
  BodystructureLocationQualifier clone() => BodystructureLocationQualifier._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BodystructureLocationQualifier withElement(Element? newElement) {
    return BodystructureLocationQualifier._(
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
  BodystructureLocationQualifier copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return BodystructureLocationQualifier._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}

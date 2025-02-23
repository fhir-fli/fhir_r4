// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The status of a subscription.
class SubscriptionStatusCodes extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  SubscriptionStatusCodes._(
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

  /// Create empty [SubscriptionStatusCodes] with element only
  factory SubscriptionStatusCodes.empty() => SubscriptionStatusCodes._('');

  /// Factory constructor to create [SubscriptionStatusCodes] from JSON.
  factory SubscriptionStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionStatusCodes cannot be constructed from JSON.',
      );
    }
    return SubscriptionStatusCodes._(
      value,
      element: element,
    );
  }

  /// requested
  static final SubscriptionStatusCodes requested = SubscriptionStatusCodes._(
    'requested',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Requested'.toFhirString,
  );

  /// active
  static final SubscriptionStatusCodes active = SubscriptionStatusCodes._(
    'active',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// error
  static final SubscriptionStatusCodes error = SubscriptionStatusCodes._(
    'error',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error'.toFhirString,
  );

  /// off
  static final SubscriptionStatusCodes off = SubscriptionStatusCodes._(
    'off',
    system: 'http://hl7.org/fhir/ValueSet/subscription-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Off'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final SubscriptionStatusCodes elementOnly =
      SubscriptionStatusCodes._('');

  /// List of all enum-like values
  static final List<SubscriptionStatusCodes> values = [
    requested,
    active,
    error,
    off,
  ];

  /// Clones the current instance
  @override
  SubscriptionStatusCodes clone() => SubscriptionStatusCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubscriptionStatusCodes withElement(Element? newElement) {
    return SubscriptionStatusCodes._(
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
  SubscriptionStatusCodes copyWith({
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
    return SubscriptionStatusCodes._(
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

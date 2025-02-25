// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// FHIR search modifiers allowed for use in Subscriptions and
/// SubscriptionTopics.
class SubscriptionSearchModifier extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  SubscriptionSearchModifier._(
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

  /// Create empty [SubscriptionSearchModifier] with element only
  factory SubscriptionSearchModifier.empty() =>
      SubscriptionSearchModifier._('');

  /// Factory constructor to create [SubscriptionSearchModifier] from JSON.
  factory SubscriptionSearchModifier.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifier.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionSearchModifier cannot be constructed from JSON.',
      );
    }
    return SubscriptionSearchModifier._(
      value,
      element: element,
    );
  }

  /// eq
  static final SubscriptionSearchModifier eq = SubscriptionSearchModifier._(
    '=',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: '='.toFhirString,
  );

  /// ne
  static final SubscriptionSearchModifier ne = SubscriptionSearchModifier._(
    'ne',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Equal'.toFhirString,
  );

  /// gt
  static final SubscriptionSearchModifier gt = SubscriptionSearchModifier._(
    'gt',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater Than'.toFhirString,
  );

  /// lt
  static final SubscriptionSearchModifier lt = SubscriptionSearchModifier._(
    'lt',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less Than'.toFhirString,
  );

  /// ge
  static final SubscriptionSearchModifier ge = SubscriptionSearchModifier._(
    'ge',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Greater Than or Equal'.toFhirString,
  );

  /// le
  static final SubscriptionSearchModifier le = SubscriptionSearchModifier._(
    'le',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Less Than or Equal'.toFhirString,
  );

  /// sa
  static final SubscriptionSearchModifier sa = SubscriptionSearchModifier._(
    'sa',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Starts After'.toFhirString,
  );

  /// eb
  static final SubscriptionSearchModifier eb = SubscriptionSearchModifier._(
    'eb',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Ends Before'.toFhirString,
  );

  /// ap
  static final SubscriptionSearchModifier ap = SubscriptionSearchModifier._(
    'ap',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Approximately'.toFhirString,
  );

  /// above
  static final SubscriptionSearchModifier above = SubscriptionSearchModifier._(
    'above',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Above'.toFhirString,
  );

  /// below
  static final SubscriptionSearchModifier below = SubscriptionSearchModifier._(
    'below',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Below'.toFhirString,
  );

  /// in_
  static final SubscriptionSearchModifier in_ = SubscriptionSearchModifier._(
    'in',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In'.toFhirString,
  );

  /// not_in
  static final SubscriptionSearchModifier not_in = SubscriptionSearchModifier._(
    'not-in',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not In'.toFhirString,
  );

  /// of_type
  static final SubscriptionSearchModifier of_type =
      SubscriptionSearchModifier._(
    'of-type',
    system:
        'http://hl7.org/fhir/ValueSet/subscription-search-modifier'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Of Type'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final SubscriptionSearchModifier elementOnly =
      SubscriptionSearchModifier._('');

  /// List of all enum-like values
  static final List<SubscriptionSearchModifier> values = [
    eq,
    ne,
    gt,
    lt,
    ge,
    le,
    sa,
    eb,
    ap,
    above,
    below,
    in_,
    not_in,
    of_type,
  ];

  /// Clones the current instance
  @override
  SubscriptionSearchModifier clone() => SubscriptionSearchModifier._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubscriptionSearchModifier withElement(Element? newElement) {
    return SubscriptionSearchModifier._(
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
  SubscriptionSearchModifier copyWith({
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
    return SubscriptionSearchModifier._(
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

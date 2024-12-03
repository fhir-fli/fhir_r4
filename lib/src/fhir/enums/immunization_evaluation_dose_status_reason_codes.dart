// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why an administered dose has been assigned a particular status. Often, this reason describes why a dose is considered invalid. This value set is provided as a suggestive example.
class ImmunizationEvaluationDoseStatusReasonCodes
    extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationEvaluationDoseStatusReasonCodes._(super.value, [super.element]);

  /// Factory constructor to create [ImmunizationEvaluationDoseStatusReasonCodes] from JSON.
  factory ImmunizationEvaluationDoseStatusReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusReasonCodes.elementOnly
          .withElement(element);
    }
    return ImmunizationEvaluationDoseStatusReasonCodes._(value, element);
  }

  /// advstorage
  static final ImmunizationEvaluationDoseStatusReasonCodes advstorage =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'advstorage',
  );

  /// coldchbrk
  static final ImmunizationEvaluationDoseStatusReasonCodes coldchbrk =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'coldchbrk',
  );

  /// explot
  static final ImmunizationEvaluationDoseStatusReasonCodes explot =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'explot',
  );

  /// outsidesched
  static final ImmunizationEvaluationDoseStatusReasonCodes outsidesched =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'outsidesched',
  );

  /// prodrecall
  static final ImmunizationEvaluationDoseStatusReasonCodes prodrecall =
      ImmunizationEvaluationDoseStatusReasonCodes._(
    'prodrecall',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationDoseStatusReasonCodes elementOnly =
      ImmunizationEvaluationDoseStatusReasonCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationEvaluationDoseStatusReasonCodes> values = [
    advstorage,
    coldchbrk,
    explot,
    outsidesched,
    prodrecall,
  ];

  /// Clones the current instance
  @override
  ImmunizationEvaluationDoseStatusReasonCodes clone() =>
      ImmunizationEvaluationDoseStatusReasonCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImmunizationEvaluationDoseStatusReasonCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImmunizationEvaluationDoseStatusReasonCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImmunizationEvaluationDoseStatusReasonCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusReasonCodes._(value, newElement);
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
  ImmunizationEvaluationDoseStatusReasonCodes copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ImmunizationEvaluationDoseStatusReasonCodes._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}

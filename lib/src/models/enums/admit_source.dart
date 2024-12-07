// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate from where the patient came in.
class AdmitSource extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdmitSource._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AdmitSource] from JSON.
  factory AdmitSource.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdmitSource.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdmitSource cannot be constructed from JSON.',
      );
    }
    return AdmitSource._(value: value, element: element);
  }

  /// hosp_trans
  static final AdmitSource hosp_trans = AdmitSource._(
    value: 'hosp-trans',
  );

  /// emd
  static final AdmitSource emd = AdmitSource._(
    value: 'emd',
  );

  /// outp
  static final AdmitSource outp = AdmitSource._(
    value: 'outp',
  );

  /// born
  static final AdmitSource born = AdmitSource._(
    value: 'born',
  );

  /// gp
  static final AdmitSource gp = AdmitSource._(
    value: 'gp',
  );

  /// mp
  static final AdmitSource mp = AdmitSource._(
    value: 'mp',
  );

  /// nursing
  static final AdmitSource nursing = AdmitSource._(
    value: 'nursing',
  );

  /// psych
  static final AdmitSource psych = AdmitSource._(
    value: 'psych',
  );

  /// rehab
  static final AdmitSource rehab = AdmitSource._(
    value: 'rehab',
  );

  /// other
  static final AdmitSource other = AdmitSource._(
    value: 'other',
  );

  /// For instances where an Element is present but not value

  static final AdmitSource elementOnly = AdmitSource._(value: '');

  /// List of all enum-like values
  static final List<AdmitSource> values = [
    hosp_trans,
    emd,
    outp,
    born,
    gp,
    mp,
    nursing,
    psych,
    rehab,
    other,
  ];

  /// Clones the current instance
  @override
  AdmitSource clone() => AdmitSource._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdmitSource withElement(Element? newElement) {
    return AdmitSource._(value: value, element: newElement);
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
  AdmitSource copyWith({
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
    return AdmitSource._(
      value: newValue ?? value,
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

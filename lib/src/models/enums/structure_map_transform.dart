// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How data is copied/created.
class StructureMapTransform extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  StructureMapTransform._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [StructureMapTransform] from JSON.
  factory StructureMapTransform.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTransform.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTransform cannot be constructed from JSON.',
      );
    }
    return StructureMapTransform._(value, element: element);
  }

  /// create
  static final StructureMapTransform create = StructureMapTransform._(
    'create',
  );

  /// copy
  static final StructureMapTransform copy_ = StructureMapTransform._(
    'copy',
  );

  /// truncate
  static final StructureMapTransform truncate = StructureMapTransform._(
    'truncate',
  );

  /// escape
  static final StructureMapTransform escape = StructureMapTransform._(
    'escape',
  );

  /// cast
  static final StructureMapTransform cast = StructureMapTransform._(
    'cast',
  );

  /// append
  static final StructureMapTransform append = StructureMapTransform._(
    'append',
  );

  /// translate
  static final StructureMapTransform translate = StructureMapTransform._(
    'translate',
  );

  /// reference
  static final StructureMapTransform reference = StructureMapTransform._(
    'reference',
  );

  /// dateOp
  static final StructureMapTransform dateOp = StructureMapTransform._(
    'dateOp',
  );

  /// uuid
  static final StructureMapTransform uuid = StructureMapTransform._(
    'uuid',
  );

  /// pointer
  static final StructureMapTransform pointer = StructureMapTransform._(
    'pointer',
  );

  /// evaluate
  static final StructureMapTransform evaluate = StructureMapTransform._(
    'evaluate',
  );

  /// cc
  static final StructureMapTransform cc = StructureMapTransform._(
    'cc',
  );

  /// c
  static final StructureMapTransform c = StructureMapTransform._(
    'c',
  );

  /// qty
  static final StructureMapTransform qty = StructureMapTransform._(
    'qty',
  );

  /// id
  static final StructureMapTransform id_ = StructureMapTransform._(
    'id',
  );

  /// cp
  static final StructureMapTransform cp = StructureMapTransform._(
    'cp',
  );

  /// For instances where an Element is present but not value

  static final StructureMapTransform elementOnly = StructureMapTransform._('');

  /// List of all enum-like values
  static final List<StructureMapTransform> values = [
    create,
    copy_,
    truncate,
    escape,
    cast,
    append,
    translate,
    reference,
    dateOp,
    uuid,
    pointer,
    evaluate,
    cc,
    c,
    qty,
    id_,
    cp,
  ];

  /// Clones the current instance
  @override
  StructureMapTransform clone() => StructureMapTransform._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapTransform withElement(Element? newElement) {
    return StructureMapTransform._(
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
  StructureMapTransform copyWith({
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
    return StructureMapTransform._(
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

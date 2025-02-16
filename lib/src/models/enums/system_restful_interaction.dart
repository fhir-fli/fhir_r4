// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Operations supported by REST at the system level.
class SystemRestfulInteraction extends FhirCode {
  // Private constructor for internal use (like enum)
  SystemRestfulInteraction._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [SystemRestfulInteraction] with element only
  factory SystemRestfulInteraction.empty() => SystemRestfulInteraction._('');

  /// Factory constructor to create [SystemRestfulInteraction] from JSON.
  factory SystemRestfulInteraction.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SystemRestfulInteraction.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SystemRestfulInteraction cannot be constructed from JSON.',
      );
    }
    return SystemRestfulInteraction._(
      value,
      element: element,
    );
  }

  /// read
  static final SystemRestfulInteraction read = SystemRestfulInteraction._(
    'read',
  );

  /// vread
  static final SystemRestfulInteraction vread = SystemRestfulInteraction._(
    'vread',
  );

  /// update
  static final SystemRestfulInteraction update = SystemRestfulInteraction._(
    'update',
  );

  /// patch
  static final SystemRestfulInteraction patch = SystemRestfulInteraction._(
    'patch',
  );

  /// delete
  static final SystemRestfulInteraction delete = SystemRestfulInteraction._(
    'delete',
  );

  /// history
  static final SystemRestfulInteraction history = SystemRestfulInteraction._(
    'history',
  );

  /// history_instance
  static final SystemRestfulInteraction history_instance =
      SystemRestfulInteraction._(
    'history-instance',
  );

  /// history_type
  static final SystemRestfulInteraction history_type =
      SystemRestfulInteraction._(
    'history-type',
  );

  /// history_system
  static final SystemRestfulInteraction history_system =
      SystemRestfulInteraction._(
    'history-system',
  );

  /// create
  static final SystemRestfulInteraction create = SystemRestfulInteraction._(
    'create',
  );

  /// search
  static final SystemRestfulInteraction search = SystemRestfulInteraction._(
    'search',
  );

  /// search_type
  static final SystemRestfulInteraction search_type =
      SystemRestfulInteraction._(
    'search-type',
  );

  /// search_system
  static final SystemRestfulInteraction search_system =
      SystemRestfulInteraction._(
    'search-system',
  );

  /// capabilities
  static final SystemRestfulInteraction capabilities =
      SystemRestfulInteraction._(
    'capabilities',
  );

  /// transaction
  static final SystemRestfulInteraction transaction =
      SystemRestfulInteraction._(
    'transaction',
  );

  /// batch
  static final SystemRestfulInteraction batch = SystemRestfulInteraction._(
    'batch',
  );

  /// operation
  static final SystemRestfulInteraction operation = SystemRestfulInteraction._(
    'operation',
  );

  /// For instances where an Element is present but not value

  static final SystemRestfulInteraction elementOnly =
      SystemRestfulInteraction._('');

  /// List of all enum-like values
  static final List<SystemRestfulInteraction> values = [
    read,
    vread,
    update,
    patch,
    delete,
    history,
    history_instance,
    history_type,
    history_system,
    create,
    search,
    search_type,
    search_system,
    capabilities,
    transaction,
    batch,
    operation,
  ];

  /// Clones the current instance
  @override
  SystemRestfulInteraction clone() => SystemRestfulInteraction._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SystemRestfulInteraction withElement(Element? newElement) {
    return SystemRestfulInteraction._(
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
  SystemRestfulInteraction copyWith({
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
    return SystemRestfulInteraction._(
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

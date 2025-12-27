part of '../primitive_types.dart';

/// Actual enum for StructureMapTransform
enum StructureMapTransformEnum {
  /// create
  create,

  /// copy
  copy_,

  /// truncate
  truncate,

  /// escape
  escape,

  /// cast
  cast,

  /// append
  append,

  /// translate
  translate,

  /// reference
  reference,

  /// dateOp
  dateOp,

  /// uuid
  uuid,

  /// pointer
  pointer,

  /// evaluate
  evaluate,

  /// cc
  cc,

  /// c
  c,

  /// qty
  qty,

  /// id
  id_,

  /// cp
  cp,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapTransformEnum.create:
        return 'create';
      case StructureMapTransformEnum.copy_:
        return 'copy';
      case StructureMapTransformEnum.truncate:
        return 'truncate';
      case StructureMapTransformEnum.escape:
        return 'escape';
      case StructureMapTransformEnum.cast:
        return 'cast';
      case StructureMapTransformEnum.append:
        return 'append';
      case StructureMapTransformEnum.translate:
        return 'translate';
      case StructureMapTransformEnum.reference:
        return 'reference';
      case StructureMapTransformEnum.dateOp:
        return 'dateOp';
      case StructureMapTransformEnum.uuid:
        return 'uuid';
      case StructureMapTransformEnum.pointer:
        return 'pointer';
      case StructureMapTransformEnum.evaluate:
        return 'evaluate';
      case StructureMapTransformEnum.cc:
        return 'cc';
      case StructureMapTransformEnum.c:
        return 'c';
      case StructureMapTransformEnum.qty:
        return 'qty';
      case StructureMapTransformEnum.id_:
        return 'id';
      case StructureMapTransformEnum.cp:
        return 'cp';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapTransformEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapTransformEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapTransformEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'create':
        return StructureMapTransformEnum.create;
      case 'copy':
        return StructureMapTransformEnum.copy_;
      case 'truncate':
        return StructureMapTransformEnum.truncate;
      case 'escape':
        return StructureMapTransformEnum.escape;
      case 'cast':
        return StructureMapTransformEnum.cast;
      case 'append':
        return StructureMapTransformEnum.append;
      case 'translate':
        return StructureMapTransformEnum.translate;
      case 'reference':
        return StructureMapTransformEnum.reference;
      case 'dateOp':
        return StructureMapTransformEnum.dateOp;
      case 'uuid':
        return StructureMapTransformEnum.uuid;
      case 'pointer':
        return StructureMapTransformEnum.pointer;
      case 'evaluate':
        return StructureMapTransformEnum.evaluate;
      case 'cc':
        return StructureMapTransformEnum.cc;
      case 'c':
        return StructureMapTransformEnum.c;
      case 'qty':
        return StructureMapTransformEnum.qty;
      case 'id':
        return StructureMapTransformEnum.id_;
      case 'cp':
        return StructureMapTransformEnum.cp;
    }
    return null;
  }
}

/// How data is copied/created.
class StructureMapTransform extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const StructureMapTransform._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory StructureMapTransform(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = StructureMapTransformEnum.fromString(valueString);
    return StructureMapTransform._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [StructureMapTransform]
  /// from JSON.
  factory StructureMapTransform.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = StructureMapTransformEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTransform._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTransform cannot be constructed from JSON.',
      );
    }
    return StructureMapTransform._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for StructureMapTransform
  final StructureMapTransformEnum? valueEnum;

  /// create
  static const StructureMapTransform create = StructureMapTransform._(
    valueString: 'create',
    valueEnum: StructureMapTransformEnum.create,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'create',
    ),
  );

  /// copy
  static const StructureMapTransform copy_ = StructureMapTransform._(
    valueString: 'copy',
    valueEnum: StructureMapTransformEnum.copy_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'copy',
    ),
  );

  /// truncate
  static const StructureMapTransform truncate = StructureMapTransform._(
    valueString: 'truncate',
    valueEnum: StructureMapTransformEnum.truncate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'truncate',
    ),
  );

  /// escape
  static const StructureMapTransform escape = StructureMapTransform._(
    valueString: 'escape',
    valueEnum: StructureMapTransformEnum.escape,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'escape',
    ),
  );

  /// cast
  static const StructureMapTransform cast = StructureMapTransform._(
    valueString: 'cast',
    valueEnum: StructureMapTransformEnum.cast,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'cast',
    ),
  );

  /// append
  static const StructureMapTransform append = StructureMapTransform._(
    valueString: 'append',
    valueEnum: StructureMapTransformEnum.append,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'append',
    ),
  );

  /// translate
  static const StructureMapTransform translate = StructureMapTransform._(
    valueString: 'translate',
    valueEnum: StructureMapTransformEnum.translate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'translate',
    ),
  );

  /// reference
  static const StructureMapTransform reference = StructureMapTransform._(
    valueString: 'reference',
    valueEnum: StructureMapTransformEnum.reference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'reference',
    ),
  );

  /// dateOp
  static const StructureMapTransform dateOp = StructureMapTransform._(
    valueString: 'dateOp',
    valueEnum: StructureMapTransformEnum.dateOp,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'dateOp',
    ),
  );

  /// uuid
  static const StructureMapTransform uuid = StructureMapTransform._(
    valueString: 'uuid',
    valueEnum: StructureMapTransformEnum.uuid,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'uuid',
    ),
  );

  /// pointer
  static const StructureMapTransform pointer = StructureMapTransform._(
    valueString: 'pointer',
    valueEnum: StructureMapTransformEnum.pointer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'pointer',
    ),
  );

  /// evaluate
  static const StructureMapTransform evaluate = StructureMapTransform._(
    valueString: 'evaluate',
    valueEnum: StructureMapTransformEnum.evaluate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'evaluate',
    ),
  );

  /// cc
  static const StructureMapTransform cc = StructureMapTransform._(
    valueString: 'cc',
    valueEnum: StructureMapTransformEnum.cc,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'cc',
    ),
  );

  /// c
  static const StructureMapTransform c = StructureMapTransform._(
    valueString: 'c',
    valueEnum: StructureMapTransformEnum.c,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'c',
    ),
  );

  /// qty
  static const StructureMapTransform qty = StructureMapTransform._(
    valueString: 'qty',
    valueEnum: StructureMapTransformEnum.qty,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'qty',
    ),
  );

  /// id
  static const StructureMapTransform id_ = StructureMapTransform._(
    valueString: 'id',
    valueEnum: StructureMapTransformEnum.id_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'id',
    ),
  );

  /// cp
  static const StructureMapTransform cp = StructureMapTransform._(
    valueString: 'cp',
    valueEnum: StructureMapTransformEnum.cp,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-transform',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'cp',
    ),
  );

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

  /// Returns the enum value with an element attached
  StructureMapTransform withElement(Element? newElement) {
    return StructureMapTransform._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  StructureMapTransform clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  StructureMapTransformCopyWithImpl<StructureMapTransform> get copyWith =>
      StructureMapTransformCopyWithImpl<StructureMapTransform>(
        this,
        (v) => v as StructureMapTransform,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class StructureMapTransformCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  StructureMapTransformCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      StructureMapTransform(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

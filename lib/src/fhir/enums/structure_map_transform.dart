/// How data is copied/created.
enum StructureMapTransform {
  /// Display: create
  /// Definition: create(type : string) - type is passed through to the application on the standard API, and must be known by it.
  create,

  /// Display: copy
  /// Definition: copy(source).
  copy,

  /// Display: truncate
  /// Definition: truncate(source, length) - source must be stringy type.
  truncate,

  /// Display: escape
  /// Definition: escape(source, fmt1, fmt2) - change source from one kind of escaping to another (plain, java, xml, json). note that this is for when the string itself is escaped.
  escape,

  /// Display: cast
  /// Definition: cast(source, type?) - case source from one type to another. target type can be left as implicit if there is one and only one target type known.
  cast,

  /// Display: append
  /// Definition: append(source...) - source is element or string.
  append,

  /// Display: translate
  /// Definition: translate(source, uri_of_map) - use the translate operation.
  translate,

  /// Display: reference
  /// Definition: reference(source : object) - return a string that references the provided tree properly.
  reference,

  /// Display: dateOp
  /// Definition: Perform a date operation. *Parameters to be documented*.
  dateOp,

  /// Display: uuid
  /// Definition: Generate a random UUID (in lowercase). No Parameters.
  uuid,

  /// Display: pointer
  /// Definition: Return the appropriate string to put in a reference that refers to the resource provided as a parameter.
  pointer,

  /// Display: evaluate
  /// Definition: Execute the supplied FHIRPath expression and use the value returned by that.
  evaluate,

  /// Display: cc
  /// Definition: Create a CodeableConcept. Parameters = (text) or (system. Code[, display]).
  cc,

  /// Display: c
  /// Definition: Create a Coding. Parameters = (system. Code[, display]).
  c,

  /// Display: qty
  /// Definition: Create a quantity. Parameters = (text) or (value, unit, [system, code]) where text is the natural representation e.g. [comparator]value[space]unit.
  qty,

  /// Display: id
  /// Definition: Create an identifier. Parameters = (system, value[, type]) where type is a code from the identifier type value set.
  id,

  /// Display: cp
  /// Definition: Create a contact details. Parameters = (value) or (system, value). If no system is provided, the system should be inferred from the content of the value.
  cp,
  ;

  @override
  String toString() {
    switch (this) {
      case create:
        return 'create';
      case copy:
        return 'copy';
      case truncate:
        return 'truncate';
      case escape:
        return 'escape';
      case cast:
        return 'cast';
      case append:
        return 'append';
      case translate:
        return 'translate';
      case reference:
        return 'reference';
      case dateOp:
        return 'dateOp';
      case uuid:
        return 'uuid';
      case pointer:
        return 'pointer';
      case evaluate:
        return 'evaluate';
      case cc:
        return 'cc';
      case c:
        return 'c';
      case qty:
        return 'qty';
      case id:
        return 'id';
      case cp:
        return 'cp';
    }
  }

  String toJson() => toString();
  static StructureMapTransform fromString(String str) {
    switch (str) {
      case 'create':
        return StructureMapTransform.create;
      case 'copy':
        return StructureMapTransform.copy;
      case 'truncate':
        return StructureMapTransform.truncate;
      case 'escape':
        return StructureMapTransform.escape;
      case 'cast':
        return StructureMapTransform.cast;
      case 'append':
        return StructureMapTransform.append;
      case 'translate':
        return StructureMapTransform.translate;
      case 'reference':
        return StructureMapTransform.reference;
      case 'dateOp':
        return StructureMapTransform.dateOp;
      case 'uuid':
        return StructureMapTransform.uuid;
      case 'pointer':
        return StructureMapTransform.pointer;
      case 'evaluate':
        return StructureMapTransform.evaluate;
      case 'cc':
        return StructureMapTransform.cc;
      case 'c':
        return StructureMapTransform.c;
      case 'qty':
        return StructureMapTransform.qty;
      case 'id':
        return StructureMapTransform.id;
      case 'cp':
        return StructureMapTransform.cp;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static StructureMapTransform fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}

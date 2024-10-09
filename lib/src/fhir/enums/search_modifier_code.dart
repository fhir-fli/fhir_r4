/// A supported modifier for a search parameter.
enum SearchModifierCode {
  /// Display: Missing
  /// Definition: The search parameter returns resources that have a value or not.
  missing,

  /// Display: Exact
  /// Definition: The search parameter returns resources that have a value that exactly matches the supplied parameter (the whole string, including casing and accents).
  exact,

  /// Display: Contains
  /// Definition: The search parameter returns resources that include the supplied parameter value anywhere within the field being searched.
  contains,

  /// Display: Not
  /// Definition: The search parameter returns resources that do not contain a match.
  not,

  /// Display: Text
  /// Definition: The search parameter is processed as a string that searches text associated with the code/value - either CodeableConcept.text, Coding.display, or Identifier.type.text.
  text,

  /// Display: In
  /// Definition: The search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests whether the coding is in the specified value set.
  in_,

  /// Display: Not In
  /// Definition: The search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests whether the coding is not in the specified value set.
  not_in,

  /// Display: Below
  /// Definition: The search parameter tests whether the value in a resource is subsumed by the specified value (is-a, or hierarchical relationships).
  below,

  /// Display: Above
  /// Definition: The search parameter tests whether the value in a resource subsumes the specified value (is-a, or hierarchical relationships).
  above,

  /// Display: Type
  /// Definition: The search parameter only applies to the Resource Type specified as a modifier (e.g. the modifier is not actually :type, but :Patient etc.).
  type,

  /// Display: Identifier
  /// Definition: The search parameter applies to the identifier on the resource, not the reference.
  identifier,

  /// Display: Of Type
  /// Definition: The search parameter has the format system|code|value, where the system and code refer to an Identifier.type.coding.system and .code, and match if any of the type codes match. All 3 parts must be present.
  ofType,
  ;

  @override
  String toString() {
    switch (this) {
      case missing:
        return 'missing';
      case exact:
        return 'exact';
      case contains:
        return 'contains';
      case not:
        return 'not';
      case text:
        return 'text';
      case in_:
        return 'in';
      case not_in:
        return 'not-in';
      case below:
        return 'below';
      case above:
        return 'above';
      case type:
        return 'type';
      case identifier:
        return 'identifier';
      case ofType:
        return 'ofType';
    }
  }

  String toJson() => toString();
  static SearchModifierCode fromString(String str) {
    switch (str) {
      case 'missing':
        return SearchModifierCode.missing;
      case 'exact':
        return SearchModifierCode.exact;
      case 'contains':
        return SearchModifierCode.contains;
      case 'not':
        return SearchModifierCode.not;
      case 'text':
        return SearchModifierCode.text;
      case 'in':
        return SearchModifierCode.in_;
      case 'not-in':
        return SearchModifierCode.not_in;
      case 'below':
        return SearchModifierCode.below;
      case 'above':
        return SearchModifierCode.above;
      case 'type':
        return SearchModifierCode.type;
      case 'identifier':
        return SearchModifierCode.identifier;
      case 'ofType':
        return SearchModifierCode.ofType;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static SearchModifierCode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}

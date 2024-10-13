/// FHIR search modifiers allowed for use in Subscriptions and SubscriptionTopics.
enum SubscriptionSearchModifier {
  /// Display: =
  /// Definition: Used to match a value according to FHIR Search rules (e.g., Patient/123, Encounter/2002).
  equals,

  /// Display: Equal
  /// Definition: The value for the parameter in the resource is equal to the provided value.
  eq,

  /// Display: Not Equal
  /// Definition: The value for the parameter in the resource is not equal to the provided value.
  ne,

  /// Display: Greater Than
  /// Definition: The value for the parameter in the resource is greater than the provided value.
  gt,

  /// Display: Less Than
  /// Definition: The value for the parameter in the resource is less than the provided value.
  lt,

  /// Display: Greater Than or Equal
  /// Definition: The value for the parameter in the resource is greater or equal to the provided value.
  ge,

  /// Display: Less Than or Equal
  /// Definition: The value for the parameter in the resource is less or equal to the provided value.
  le,

  /// Display: Starts After
  /// Definition: The value for the parameter in the resource starts after the provided value.
  sa,

  /// Display: Ends Before
  /// Definition: The value for the parameter in the resource ends before the provided value.
  eb,

  /// Display: Approximately
  /// Definition: The value for the parameter in the resource is approximately the same to the provided value. Note that the recommended value for the approximation is 10% of the stated value (or for a date, 10% of the gap between now and the date), but systems may choose other values where appropriate.
  ap,

  /// Display: Above
  /// Definition: The search parameter is a concept with the form [system]|[code], and the search parameter tests whether the coding in a resource subsumes the specified search code.
  above,

  /// Display: Below
  /// Definition: The search parameter is a concept with the form [system]|[code], and the search parameter tests whether the coding in a resource is subsumed by the specified search code.
  below,

  /// Display: In
  /// Definition: The search parameter is a member of a Group or List, or the search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests whether the value is present in the specified Group, List, or Value Set.
  in_,

  /// Display: Not In
  /// Definition: The search parameter is a member of a Group or List, or the search parameter is a URI (relative or absolute) that identifies a value set, and the search parameter tests whether the value is NOT present in the specified Group, List, or Value Set.
  not_in,

  /// Display: Of Type
  /// Definition: The search parameter has the format system|code|value, where the system and code refer to a Identifier.type.coding.system and .code, and match if any of the type codes match. All 3 parts must be present.
  of_type,
  ;

  @override
  String toString() {
    switch (this) {
      case equals:
        return '=';
      case eq:
        return 'eq';
      case ne:
        return 'ne';
      case gt:
        return 'gt';
      case lt:
        return 'lt';
      case ge:
        return 'ge';
      case le:
        return 'le';
      case sa:
        return 'sa';
      case eb:
        return 'eb';
      case ap:
        return 'ap';
      case above:
        return 'above';
      case below:
        return 'below';
      case in_:
        return 'in';
      case not_in:
        return 'not-in';
      case of_type:
        return 'of-type';
    }
  }

  /// Returns a [String] from a [SubscriptionSearchModifier] enum.
  String toJson() => toString();

  /// Returns a [SubscriptionSearchModifier] from a [String] enum.
  static SubscriptionSearchModifier fromString(String str) {
    switch (str) {
      case '=':
        return SubscriptionSearchModifier.equals;
      case 'eq':
        return SubscriptionSearchModifier.eq;
      case 'ne':
        return SubscriptionSearchModifier.ne;
      case 'gt':
        return SubscriptionSearchModifier.gt;
      case 'lt':
        return SubscriptionSearchModifier.lt;
      case 'ge':
        return SubscriptionSearchModifier.ge;
      case 'le':
        return SubscriptionSearchModifier.le;
      case 'sa':
        return SubscriptionSearchModifier.sa;
      case 'eb':
        return SubscriptionSearchModifier.eb;
      case 'ap':
        return SubscriptionSearchModifier.ap;
      case 'above':
        return SubscriptionSearchModifier.above;
      case 'below':
        return SubscriptionSearchModifier.below;
      case 'in':
        return SubscriptionSearchModifier.in_;
      case 'not-in':
        return SubscriptionSearchModifier.not_in;
      case 'of-type':
        return SubscriptionSearchModifier.of_type;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [SubscriptionSearchModifier] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static SubscriptionSearchModifier fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}

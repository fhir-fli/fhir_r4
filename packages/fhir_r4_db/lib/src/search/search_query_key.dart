import 'package:fhir_r4_db/src/search/search_parameter_types.dart';

/// A search parameter key, split the way HAPI splits it.
///
/// The key is cut at the FIRST `.` or `:`, whichever comes first. What is
/// before is the parameter name. What is from that character onwards, the
/// separator included, is carried whole as the qualifier and is not
/// interpreted here.
///
/// That ordering is the whole trick. `subject:Patient.name` and
/// `family:exact` both have a colon, and you cannot tell from the colon alone
/// whether it introduces a modifier or a chain's target type. You do not have
/// to: cut once, carry the rest, and let the parameter's own declared type
/// resolve it once you know what the parameter is.
class SearchQueryKey {
  /// Splits [key] into a name and a qualifier.
  factory SearchQueryKey.parse(String key) {
    for (var i = 0; i < key.length; i++) {
      final char = key[i];
      if (char == '.' || char == ':') {
        return SearchQueryKey._(key.substring(0, i), key.substring(i));
      }
    }
    return SearchQueryKey._(key, null);
  }

  const SearchQueryKey._(this.name, this.qualifier);

  /// The parameter name, with nothing after the first separator.
  final String name;

  /// Everything from the first separator on, including it, or null.
  final String? qualifier;

  /// The modifier, when the qualifier is one rather than a chain.
  ///
  /// `:exact` gives `exact`. `:Patient.name` gives `Patient`, which is a
  /// reference's target type. `.name` gives null, because a chain with no
  /// type constraint carries no modifier.
  String? get modifier {
    final q = qualifier;
    if (q == null || !q.startsWith(':')) {
      return null;
    }
    final dot = q.indexOf('.');
    final value = dot < 0 ? q.substring(1) : q.substring(1, dot);
    return value.isEmpty ? null : value;
  }

  /// The chain, when there is one: the part after the first `.`.
  String? get chain {
    final q = qualifier;
    if (q == null) {
      return null;
    }
    final dot = q.indexOf('.');
    if (dot < 0) {
      return null;
    }
    final value = q.substring(dot + 1);
    return value.isEmpty ? null : value;
  }

  @override
  String toString() => '$name${qualifier ?? ''}';
}

/// Thrown when a search names a modifier its parameter's type does not allow.
///
/// R4 3.1.1.4.4 is a SHALL, not a preference: "Server SHALL reject any search
/// request that contains is suffixed by a modifier that the server does not
/// support for that parameter ... using an HTTP 400 error with an
/// OperationOutcome with a clear error message."
///
/// Note the asymmetry with an unknown PARAMETER, which the same page says a
/// server SHOULD ignore. Ignoring a parameter can only widen the result set,
/// and the client can see what was used from the self link. Ignoring a
/// MODIFIER silently changes what the query means and hands back records the
/// client did not ask for, with nothing to reveal it.
class UnsupportedSearchModifier implements Exception {
  /// Creates the failure for [modifier] on [parameter].
  const UnsupportedSearchModifier({
    required this.parameter,
    required this.modifier,
    required this.type,
    required this.allowed,
  });

  /// The search parameter as the client wrote it, without the modifier.
  final String parameter;

  /// The modifier that is not allowed.
  final String modifier;

  /// The parameter's declared search type.
  final String type;

  /// What that type does allow, for the error message.
  final Set<String> allowed;

  /// A message naming what was asked for and what the type permits.
  String get message =>
      'The modifier ":$modifier" is not allowed on "$parameter", which is a '
      '$type search parameter. '
      '${allowed.isEmpty ? "That type takes no modifiers." : "Allowed: "
          "${(allowed.toList()..sort()).map((m) => ":$m").join(", ")}."}';

  @override
  String toString() => 'UnsupportedSearchModifier: $message';
}

/// The modifiers R4 allows, per search parameter type.
///
/// This is NOT generated, and it cannot be: R4 core populates
/// `SearchParameter.modifier` on none of its 1,414 definitions, so the allowed
/// set is not carried in the data. It comes from the tables in search.html.
const modifiersByType = <String, Set<String>>{
  // ":missing ... applies to all parameter types except composite".
  'string': {'missing', 'exact', 'contains', 'text'},
  'token': {
    'missing',
    'text',
    'not',
    'above',
    'below',
    'in',
    'not-in',
    'of-type',
  },
  // A reference also takes ":[ResourceType]", which is not a fixed word and is
  // checked separately.
  'reference': {'missing', 'identifier', 'above', 'below', 'type'},
  'uri': {'missing', 'above', 'below'},
  'date': {'missing'},
  'number': {'missing'},
  'quantity': {'missing'},
  // R4 3.1.1.4.21: for a `special` parameter "the general modifiers and
  // comparators do not apply, except as stated in the description", so nothing
  // is allowed here by default. Not even :missing.
  'special': <String>{},
  // R4 3.1.1.4.17: "Modifiers are not used on composite parameters."
  'composite': <String>{},
};

/// The definition of [code] on [resourceType], or null when there is none.
SearchParameterDefinition? searchParameterFor(
  String resourceType,
  String code,
) =>
    searchParameterTypes[resourceType]?[code];

/// Whether [modifier] is allowed on a parameter of [type].
///
/// A reference accepts any resource type as a modifier — `subject:Patient` —
/// so anything starting with an upper case letter is allowed through for
/// references and validated against the parameter's declared targets later,
/// where the target list is known.
bool isModifierAllowed(String type, String modifier) {
  if (type == 'reference' &&
      modifier.isNotEmpty &&
      modifier[0].toUpperCase() == modifier[0] &&
      RegExp(r'^[A-Z][A-Za-z]+$').hasMatch(modifier)) {
    return true;
  }
  return modifiersByType[type]?.contains(modifier) ?? false;
}

/// The comparator on the front of [value], or null.
///
/// Only looks when the parameter accepts one. R4 core declares comparators on
/// every date, quantity and number parameter and on nothing else, so a string
/// parameter never has its value inspected and `Apgar`, `Nelson` and `Ledger`
/// keep their first two letters.
(String?, String) splitComparator(
  SearchParameterDefinition definition,
  String value,
) {
  for (final comparator in definition.comparators) {
    if (value.startsWith(comparator) && value.length > comparator.length) {
      return (comparator, value.substring(comparator.length));
    }
  }
  return (null, value);
}

/// Defines selection behavior of a group.
enum ActionSelectionBehavior {
  /// Display: Any
  /// Definition: Any number of the actions in the group may be chosen, from zero to all.
  any,

  /// Display: All
  /// Definition: All the actions in the group must be selected as a single unit.
  all,

  /// Display: All Or None
  /// Definition: All the actions in the group are meant to be chosen as a single unit: either all must be selected by the end user, or none may be selected.
  all_or_none,

  /// Display: Exactly One
  /// Definition: The end user must choose one and only one of the selectable actions in the group. The user SHALL NOT choose none of the actions in the group.
  exactly_one,

  /// Display: At Most One
  /// Definition: The end user may choose zero or at most one of the actions in the group.
  at_most_one,

  /// Display: One Or More
  /// Definition: The end user must choose a minimum of one, and as many additional as desired.
  one_or_more,
  ;

  @override
  String toString() {
    switch (this) {
      case any:
        return 'any';
      case all:
        return 'all';
      case all_or_none:
        return 'all-or-none';
      case exactly_one:
        return 'exactly-one';
      case at_most_one:
        return 'at-most-one';
      case one_or_more:
        return 'one-or-more';
    }
  }

  String toJson() => toString();
  static ActionSelectionBehavior fromString(String str) {
    switch (str) {
      case 'any':
        return ActionSelectionBehavior.any;
      case 'all':
        return ActionSelectionBehavior.all;
      case 'all-or-none':
        return ActionSelectionBehavior.all_or_none;
      case 'exactly-one':
        return ActionSelectionBehavior.exactly_one;
      case 'at-most-one':
        return ActionSelectionBehavior.at_most_one;
      case 'one-or-more':
        return ActionSelectionBehavior.one_or_more;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ActionSelectionBehavior fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}

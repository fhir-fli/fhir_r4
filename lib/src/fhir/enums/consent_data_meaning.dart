/// How a resource reference is interpreted when testing consent restrictions.
enum ConsentDataMeaning {
  /// Display: Instance
  /// Definition: The consent applies directly to the instance of the resource.
  instance,

  /// Display: Related
  /// Definition: The consent applies directly to the instance of the resource and instances it refers to.
  related,

  /// Display: Dependents
  /// Definition: The consent applies directly to the instance of the resource and instances that refer to it.
  dependents,

  /// Display: AuthoredBy
  /// Definition: The consent applies to instances of resources that are authored by.
  authoredby,
  ;

  @override
  String toString() {
    switch (this) {
      case instance:
        return 'instance';
      case related:
        return 'related';
      case dependents:
        return 'dependents';
      case authoredby:
        return 'authoredby';
    }
  }

  /// Returns a [String] from a [ConsentDataMeaning] enum.
  String toJson() => toString();

  /// Returns a [ConsentDataMeaning] from a [String] enum.
  static ConsentDataMeaning fromString(String str) {
    switch (str) {
      case 'instance':
        return ConsentDataMeaning.instance;
      case 'related':
        return ConsentDataMeaning.related;
      case 'dependents':
        return ConsentDataMeaning.dependents;
      case 'authoredby':
        return ConsentDataMeaning.authoredby;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ConsentDataMeaning] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ConsentDataMeaning fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}

/// How a capability statement is intended to be used.
enum CapabilityStatementKind {
  /// Display: Instance
  /// Definition: The CapabilityStatement instance represents the present capabilities of a specific system instance.  This is the kind returned by /metadata for a FHIR server end-point.
  instance,

  /// Display: Capability
  /// Definition: The CapabilityStatement instance represents the capabilities of a system or piece of software, independent of a particular installation.
  capability,

  /// Display: Requirements
  /// Definition: The CapabilityStatement instance represents a set of requirements for other systems to meet; e.g. as part of an implementation guide or 'request for proposal'.
  requirements,
  ;

  @override
  String toString() {
    switch (this) {
      case instance:
        return 'instance';
      case capability:
        return 'capability';
      case requirements:
        return 'requirements';
    }
  }

  /// Returns a [String] from a [CapabilityStatementKind] enum.
  String toJson() => toString();

  /// Returns a [CapabilityStatementKind] from a [String] enum.
  static CapabilityStatementKind fromString(String str) {
    switch (str) {
      case 'instance':
        return CapabilityStatementKind.instance;
      case 'capability':
        return CapabilityStatementKind.capability;
      case 'requirements':
        return CapabilityStatementKind.requirements;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [CapabilityStatementKind] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static CapabilityStatementKind fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}

/// MODE Enum
/// Defines the capabilities of the server
/// https://www.hl7.org/fhir/http.html#capabilities
enum Mode {
  full,
  normative,
  terminology;

  @override
  String toString() {
    switch (this) {
      case Mode.full:
        return 'full';
      case Mode.normative:
        return 'normative';
      case Mode.terminology:
        return 'terminology';
    }
  }
}

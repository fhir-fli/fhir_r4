/// COMPARTMENT Enum
/// The client can request the server to return only a portion of the resources
/// by using this parameter
/// Defined here: https://www.hl7.org/fhir/search.html#summary
enum Summary {
  true_,
  false_,
  text,
  count,
  data,
  none;

  @override
  String toString() {
    switch (this) {
      case Summary.true_:
        return 'true';
      case Summary.false_:
        return 'false';
      case Summary.text:
        return 'text';
      case Summary.count:
        return 'count';
      case Summary.data:
        return 'data';
      case Summary.none:
        return 'none';
    }
  }
}

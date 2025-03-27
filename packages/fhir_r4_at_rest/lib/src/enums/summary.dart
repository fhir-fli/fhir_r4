/// COMPARTMENT Enum
/// The client can request the server to return only a portion of the resources
/// by using this parameter
/// Defined here: https://www.hl7.org/fhir/search.html#summary
enum Summary {
  /// Return only those elements marked as "summary" in the base definition of
  /// the resource(s)
  true_,

  /// Return only the "text" element, the "id" element, and any resource
  /// referenced from a "local" reference
  false_,

  /// Return only the "text" element, the "id" element, and any resource
  /// referenced from a "local" reference
  text,

  /// Return only a count of the matching resources, without returning the
  /// actual matches
  count,

  /// Return only the "id" element, meta, and security labels
  data,

  /// Return only the "id" element, meta, security labels, and the "text"
  /// element
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

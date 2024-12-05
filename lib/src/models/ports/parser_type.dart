/// Used in factory methods for parsers, for requesting a parser of a particular
/// type (see IWorkerContext)
enum ParserType {
  /// XML as specified in specification
  xml,

  /// JSON as specified in the specification
  json,

  /// XHTML - write narrative (generate if necessary). No read
  xhtml,

  /// RDF is not supported yet
  rdfTurtle,
}

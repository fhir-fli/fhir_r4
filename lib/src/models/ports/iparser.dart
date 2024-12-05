// ignore_for_file: avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';

/// General interface - either an XML or JSON parser: read or write instances
///
/// Defined to allow a factory to create a parser of the right type
abstract class IParser {
  /// check what kind of parser this is
  ///
  /// @return what kind of parser this is
  ParserType getType();

  // -- Parser Configuration ----------------------------------
  /// Whether to parse or ignore comments - either reading or writing
  bool getHandleComments();

  /// Set comments
  IParser setHandleComments(bool value);

  /// @param allowUnknownContent Whether to throw an exception if unknown
  /// content is found (or just skip it) when parsing
  bool isAllowUnknownContent();

  /// Allow unknown content (or not)
  IParser setAllowUnknownContent(bool value);

  /// Writing:
  OutputStyle getOutputStyle();

  /// Set Output Style
  IParser setOutputStyle(OutputStyle value);

  /// This method is used by the ation tooling to stop the xhrtml narrative
  /// being generated. It is not valid to use in production use. The tooling
  /// uses it to generate json/xml representations in html that are not
  /// cluttered by escaped html representations of the html representation
  IParser setSuppressXhtml(String message);

  // -- Reading methods ----------------------------------------

  /// parse content that is known to be a resource
  ///
  /// @throws XmlPullParserException
  /// @throws FHIRFormatError
  /// @throws IOException
  Resource parseStream(InputStream input);

  /// parse content that is known to be a resource
  ///
  /// @throws UnsupportedEncodingException
  /// @throws IOException
  /// @throws FHIRFormatError
  Resource parseString(String input);

  /// parse content that is known to be a resource
  ///
  /// @throws IOException
  /// @throws FHIRFormatError
  Resource parseBytes(byte bytes);

  /// parse content that is known to be a resource and close the stream
  Resource parseAndClose(InputStream input);

  /// This is used to parse a type - a fragment of a resource. There's no
  /// reason to use this in production - it's used in the build tools
  ///
  /// Not supported by all implementations
  ///
  /// @param input
  /// @param knownType. if this is blank, the parser may try to infer the
  /// type (xml only)
  /// @return
  /// @throws XmlPullParserException
  /// @throws FHIRFormatError
  /// @throws IOException
  DataType parseTypeStream(InputStream input, String knownType);

  /// This is used to parse a type - a fragment of a resource. There's no
  /// reason to use this in production - it's used in the build tools
  ///
  /// Not supported by all implementations
  ///
  /// @param input
  /// @param knownType. if this is blank, the parser may try to infer the type
  /// (xml only)
  /// @return
  /// @throws UnsupportedEncodingException
  /// @throws IOException
  /// @throws FHIRFormatError
  DataType parseTypeString(String input, String knownType);

  /// This is used to parse a type - a fragment of a resource. There's no
  /// reason to use this in production - it's used in the build tools
  ///
  /// Not supported by all implementations
  ///
  /// @param input
  /// @param knownType. if this is blank, the parser may try to infer the
  /// type (xml only)
  /// @return
  /// @throws IOException
  /// @throws FHIRFormatError
  DataType parseTypeBytes(byte bytes, String knownType);

  /// I don't knwo the difference between this and the above
  DataType parseAnyType(InputStream input, String knownType);

  // -- Writing methods ----------------------------------------

  /// Compose a resource to a stream, possibly using pretty presentation for a
  /// human reader (used in the spec, for example, but not normally in
  /// production)
  ///
  /// @throws IOException
  void compose(OutputStream stream, Resource resource);

  /// Compose a type to a stream, possibly using pretty presentation for a human
  /// reader (used in the spec, for example, but not normally in production)
  ///
  /// Not supported by all implementations. rootName is ignored in the JSON
  /// format
  ///
  /// @throws XmlPullParserException
  /// @throws FHIRFormatError
  /// @throws IOException
  void composeRoot(OutputStream stream, DataType type, String rootName);

  /// Compose a resource to a stream, possibly using pretty presentation for a
  /// human reader (used in the spec, for example, but not normally in
  /// production)
  ///
  /// @throws IOException
  String composeStringResource(Resource resource);

  /// Compose a type to a stream, possibly using pretty presentation for a human
  /// reader (used in the spec, for example, but not normally in production)
  ///
  /// Not supported by all implementations. rootName is ignored in the JSON
  /// format
  ///
  /// @throws IOException
  String composeStringType(DataType type, String rootName);

  /// Compose a resource to a stream, possibly using pretty presentation for a
  /// human reader (used in the spec, for example, but not normally in
  /// production)
  ///
  /// @throws IOException
  byte composeBytesResource(Resource resource);

  /// Compose a type to a stream, possibly using pretty presentation for a human
  /// reader (used in the spec, for example, but not normally in production)
  ///
  /// Not supported by all implementations. rootName is ignored in the JSON
  /// format
  ///
  /// @throws IOException
  byte composeBytesType(DataType type, String rootName);
}

/// Specification for which style to output
enum OutputStyle {
  /// Produce normal output - no whitespace, except in HTML where whitespace
  /// is untouched
  normal,

  /// Produce pretty output - human readable whitespace, HTML whitespace
  /// untouched
  pretty,

  /// Produce canonical output - no comments, no whitspace, HTML whitespace
  /// normlised, JSON attributes sorted alphabetically (slightly slower)
  canonical,
}

///
class OutputStream {}

///
class InputStream {}

///
class byte {}

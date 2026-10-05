import 'package:fhir_mapping/fhir_mapping.dart' as fm;
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';

/// The shared `fhir_mapping` parser over R4B: map text to a [StructureMap]
/// and back.
class StructureMapParser {
  StructureMapParser._(this.parser);

  /// Makes a parser producing R4B StructureMaps.
  static Future<StructureMapParser> create() async => StructureMapParser._(
        await fm.StructureMapParser.create(const R4MappingModel()),
      );

  /// The version-independent parser this one drives.
  final fm.StructureMapParser<Resource> parser;

  /// Parses [text] (named [srcName] in errors) to a StructureMap.
  StructureMap parse(String text, String srcName) =>
      parser.parse(text, srcName) as StructureMap;

  /// Renders [map] as map text.
  static String render(StructureMap map) => fm.StructureMapParser.render(map);
}

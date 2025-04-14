import '../cql.dart';

class SourceLocator {
  final String? librarySystemId;
  final String libraryName;
  final String? libraryVersion;
  final String? nodeId;
  final String nodeType;
  final Location? sourceLocation;

  SourceLocator({
    this.librarySystemId,
    required this.libraryName,
    this.libraryVersion,
    this.nodeId,
    required this.nodeType,
    this.sourceLocation,
  });

  factory SourceLocator.fromNode(Element node, CqlLibrary? currentLibrary) {
    return SourceLocator(
      librarySystemId: currentLibrary?.identifier?.system ??
          "http://cql.hl7.org/Library/unknown",
      libraryName: currentLibrary?.identifier?.id ?? "?",
      libraryVersion: currentLibrary?.identifier?.version,
      nodeId: node.localId,
      nodeType: stripEvaluator(node.runtimeType.toString()),
      sourceLocation:
          node.locator != null ? Location.fromLocator(node.locator!) : null,
    );
  }

  static String stripEvaluator(String nodeType) {
    return nodeType.endsWith("Evaluator")
        ? nodeType.substring(0, nodeType.lastIndexOf("Evaluator"))
        : nodeType;
  }

  String getLocation() {
    final location = sourceLocation != null ? sourceLocation!.toLocator() : "?";
    final idOrType = nodeId ?? nodeType;
    return "$location($idOrType)";
  }

  @override
  String toString() {
    final location = getLocation();
    return "${libraryName.isNotEmpty ? libraryName : "?"}$location";
  }
}

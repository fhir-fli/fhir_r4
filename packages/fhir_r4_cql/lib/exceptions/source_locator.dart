import 'package:fhir_r4_cql/fhir_r4_cql.dart';

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

  Map<String, dynamic> toJson() {
    return {
      if (librarySystemId != null) 'librarySystemId': librarySystemId,
      'libraryName': libraryName,
      if (libraryVersion != null) 'libraryVersion': libraryVersion,
      if (nodeId != null) 'nodeId': nodeId,
      'nodeType': nodeType,
      if (sourceLocation != null) 'sourceLocation': sourceLocation!.toJson(),
    };
  }

  @override
  String toString() {
    final location = getLocation();
    return "${libraryName.isNotEmpty ? libraryName : "?"}$location";
  }

  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SourceLocator) return false;

    return librarySystemId == other.librarySystemId &&
        libraryName == other.libraryName &&
        libraryVersion == other.libraryVersion &&
        nodeId == other.nodeId &&
        nodeType == other.nodeType &&
        sourceLocation == other.sourceLocation;
  }
}

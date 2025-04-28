import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class NamespaceManager {
  final Map<String, String> namespaces;
  final Map<String, String> reverseNamespaces;

  NamespaceManager({
    Map<String, String>? namespaces,
    Map<String, String>? reverseNamespaces,
  })  : namespaces = namespaces ?? <String, String>{},
        reverseNamespaces = reverseNamespaces ?? <String, String>{};

  bool get hasNamespaces => namespaces.isNotEmpty;

  void ensureNamespaceRegistered(NamespaceInfo namespaceInfo) {
    if (!namespaces.containsKey(namespaceInfo.name)) {
      addNamespaceWithUri(namespaceInfo.name, namespaceInfo.uri);
    }
  }

  void addNamespace(NamespaceInfo namespaceInfo) {
    addNamespaceWithUri(namespaceInfo.name, namespaceInfo.uri);
  }

  void addNamespaceWithUri(String namespaceName, String namespaceUri) {
    if (namespaceName.isEmpty) {
      throw ArgumentError('namespaceName cannot be empty');
    }
    if (namespaceUri.isEmpty) {
      throw ArgumentError('namespaceUri cannot be empty');
    }
    if (namespaces.containsKey(namespaceName)) {
      throw ArgumentError('Namespace named "$namespaceName" already defined');
    }
    if (reverseNamespaces.containsKey(namespaceUri)) {
      throw ArgumentError(
          'Namespace name for URI "$namespaceUri" already defined');
    }
    namespaces[namespaceName] = namespaceUri;
    reverseNamespaces[namespaceUri] = namespaceName;
  }

  String? resolveNamespaceUri(String namespaceName) =>
      namespaces[namespaceName];

  NamespaceInfo? getNamespaceInfoFromUri(String namespaceUri) {
    final name = reverseNamespaces[namespaceUri];
    if (name != null) {
      return NamespaceInfo(name: name, uri: namespaceUri);
    }
    return null;
  }

  static String getPath(String? namespaceUri, String name) =>
      namespaceUri != null ? '$namespaceUri/$name' : name;

  static String? getUriPart(String? namespaceQualifiedName) {
    if (namespaceQualifiedName == null) return null;
    final i = namespaceQualifiedName.lastIndexOf('/');
    return i > 0 ? namespaceQualifiedName.substring(0, i) : null;
  }

  static String? getNamePart(String? namespaceQualifiedName) {
    if (namespaceQualifiedName == null) {
      return null;
    }
    final i = namespaceQualifiedName.lastIndexOf('/');
    return i > 0
        ? namespaceQualifiedName.substring(i + 1)
        : namespaceQualifiedName;
  }
}

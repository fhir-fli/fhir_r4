// ignore_for_file: public_member_api_docs, avoid_print

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

abstract class ElementNode with Annotatable {
  ElementNode(
    this.name,
    this.globalPath,
    String? localPath,
    this.value,
  ) : localPath = localPath ?? globalPath;
  final String? name;
  final String? globalPath;
  final String? localPath;
  final dynamic value;
  ElementNode? parent;

// Simplified copyWith logic, allowing nulls with a flag
  ElementNode copyWith({
    String? newName,
    String? newGlobalPath,
    String? newLocalPath,
    dynamic value,
    String? newType,
    bool allowNullLocations = false,
  }) {
    return _copyInternal(
      newName: newName ?? name,
      newGlobalPath: newGlobalPath ?? (allowNullLocations ? null : globalPath),
      newLocalPath: newLocalPath ?? (allowNullLocations ? null : localPath),
      value: value ?? this.value,
      newType: newType ?? (this is LeafNode ? (this as LeafNode).type : null),
    );
  }

  ElementNode makeListElement() {
    return _copyInternal(
      newGlobalPath: globalPath == null
          ? name
          : name == null
              ? globalPath
              : '$globalPath.$name',
      newLocalPath: localPath == null
          ? name
          : name == null
              ? localPath
              : '$localPath.$name',
      value: value,
      newType: this is LeafNode ? (this as LeafNode).type : null,
    );
  }

  // Internal method for copying
  ElementNode _copyInternal({
    String? newName,
    String? newGlobalPath,
    String? newLocalPath,
    dynamic value,
    String? newType,
  }) {
    if (this is LeafNode) {
      return LeafNode(newName, newGlobalPath, newLocalPath, value, newType);
    } else if (this is MapNode) {
      if (value is! List<ElementNode>?) {
        throw Exception('MapNode value must be a list of ElementNodes');
      }

      if (this is DataTypeNode) {
        return DataTypeNode(
          newName,
          newGlobalPath,
          localPath!,
          value,
        );
      } else if (this is ResourceNode) {
        return ResourceNode(
          newName,
          newGlobalPath,
          localPath!,
          value,
        );
      }

      return MapNode(newName, newGlobalPath, newLocalPath, value);
    } else if (this is ListNode) {
      if (value is! List<ElementNode>?) {
        throw Exception('ListNode value must be a list of ElementNodes');
      }
      return ListNode(newName, newGlobalPath, newLocalPath, value);
    } else {
      throw Exception('Unknown ElementNode type.');
    }
  }

  static T newNode<T extends ElementNode>(
    String elementName,
    ElementNode? parent, [
    dynamic value,
  ]) {
    final newGlobalPath = parent?.globalPath != null
        ? parent?.name == null
            ? parent!.globalPath
            : '${parent!.globalPath}.${parent.name}'
        : parent?.name;
    final newLocalPath = parent?.localPath != null
        ? parent?.name == null
            ? parent!.localPath
            : '${parent!.localPath}.${parent.name}'
        : parent?.name;

    switch (T) {
      case LeafNode:
        return LeafNode(
          elementName,
          newGlobalPath,
          newLocalPath,
          value,
          null,
        ) as T;
      case MapNode:
        return MapNode(elementName, newGlobalPath, newLocalPath, null) as T;
      case ListNode:
        return ListNode(elementName, newGlobalPath, newLocalPath, null) as T;
      default:
        throw Exception('Unknown ElementNode type.');
    }
  }

  String? get childGlobalPath => globalPath == null
      ? name
      : name == null
          ? globalPath
          : '$globalPath.$name';
  String? get childLocalPath => localPath == null || localPath == name
      ? name
      : name == null
          ? localPath
          : '$localPath.$name';
  bool get isLeaf => this is LeafNode;
  bool get isComposite => this is CompositeNode;
  bool get isMap => this is MapNode;
  bool get isList => this is ListNode;
  bool get isDataType => this is DataTypeNode;
  bool get isResource => this is ResourceNode;
  String? pathForResolver([String? key]) {
    final resolverPath = localPath == null
        ? name
        : localPath == name || name == null
            ? localPath
            : '$localPath.$name';
    if (resolverPath == null) {
      return key;
    }
    if (key == null) {
      return resolverPath;
    }
    final fullPath = '$resolverPath.$key';

    return fullPath;
  }

  Future<String?> getInstanceType(DefinitionResolver resolver) async {
    ElementDefinition? elementDefinition;
    if (globalPath != null) {
      final path = pathForResolver();
      elementDefinition = await resolver.resolveElementDefinition(path);
    } else if (name != null && parent != null) {
      final path = parent!.pathForResolver(name);
      elementDefinition = await resolver.resolveElementDefinition(path);
    }

    if (elementDefinition != null &&
        (elementDefinition.type?.isNotEmpty ?? false)) {
      return elementDefinition.singleTypeString;
    }

    return null;
  }

  Future<ElementNode> setProperty(
    String key,
    ElementNode newValue,
    DefinitionResolver resolver,
  ) async {
    var valueNode = newValue.copyWith();

    final compositeNode = this as CompositeNode;
    final elementDefinition =
        await _resolveElementDefinition(key, resolver, valueNode);

    if (elementDefinition == null) {
      throw Exception('Element definition not found for $key (setProperty)');
    }

    final name = _getPolymorphicName(key, elementDefinition, valueNode);

    if (valueNode is LeafNode) {
      // Cast the value using elementDefinition type
      final expectedType = elementDefinition.singleTypeString;

      if (expectedType != null) {
        valueNode = valueNode.copyWith(
          value: castValue(valueNode.value, expectedType),
          newName: name,
          newGlobalPath: childGlobalPath,
          newLocalPath: _determineObjectLocation(elementDefinition, valueNode),
          newType: expectedType,
        );
      }
    }

    final isCollection = elementDefinition.isCollection;
    if (isCollection) {
      _handleCollectionProperty(key, valueNode, compositeNode);
    } else if (isMap) {
      _handleMapProperty(valueNode);
    } else if (isList) {
      _handleListProperty(key, valueNode);
    } else {
      throw Exception('Unknown CompositeNode type.');
    }

    return valueNode;
  }

  // Helper for resolving element definition
  Future<ElementDefinition?> _resolveElementDefinition(
    String key,
    DefinitionResolver resolver,
    ElementNode valueNode,
  ) async {
    ElementDefinition? elementDefinition;

    // final path1 = '$localPath.$key';
    // print('path1: $path1');

    // elementDefinition = await resolver.resolveElementDefinition(path1);
    // print('elementDefinition1: ${elementDefinition?.path}');
    // if (elementDefinition != null) {
    //   return elementDefinition;
    // }

    final path2 = pathForResolver(key);

    elementDefinition = await resolver.resolveElementDefinition(path2);

    if (elementDefinition != null) {
      return elementDefinition;
    }

    final path3 = '$childLocalPath.$key';

    elementDefinition = await resolver.resolveElementDefinition(path3);

    if (elementDefinition != null) {
      return elementDefinition;
    }

    final path4 = '${valueNode.localPath}.$key';

    elementDefinition = await resolver.resolveElementDefinition(path4);

    if (elementDefinition != null) {
      return elementDefinition;
    }

    return elementDefinition;
  }

  // Helper for polymorphic name assignment
  String _getPolymorphicName(
    String key,
    ElementDefinition elementDefinition,
    ElementNode valueNode,
  ) {
    return elementDefinition.isPolymorphic
        ? (valueNode is LeafNode && valueNode.type != null
            ? '$key${valueNode.type!.capitalize}'
            : '$key${valueNode.localPath?.capitalize ?? ''}')
        : key;
  }

// Helper to determine object globalPath
  String? _determineObjectLocation(
    ElementDefinition elementDefinition,
    ElementNode valueNode,
  ) {
    return elementDefinition.singleTypeString == 'Resource' &&
            (valueNode.localPath?.isFhirResourceType ?? false)
        ? valueNode.localPath
        : valueNode is LeafNode
            ? childLocalPath
            : valueNode.localPath;
  }

// Helper method for handling collections (ListNodes)
  void _handleCollectionProperty(
    String key,
    ElementNode newValue,
    CompositeNode compositeNode,
  ) {
    var listNode = compositeNode.value.firstWhereOrNull(
      (child) => child.name == key && child is ListNode,
    ) as ListNode?;

    if (listNode != null) {
      // Add to existing ListNode
      if (newValue is MapNode) {
        listNode.value.add(newValue);
      } else if (newValue.value is List<ElementNode>) {
        listNode.value.addAll(newValue.value as List<ElementNode>);
      } else {
        throw Exception('Unsupported value type for collection property');
      }
    } else {
      // Create a new ListNode
      listNode = ListNode(
        key,
        compositeNode.childGlobalPath,
        compositeNode.childLocalPath,
        [],
      )..addChild(newValue.makeListElement());
      if (compositeNode is ListNode) {
        final mapContainer = MapNode(null, globalPath, localPath, [listNode]);
        compositeNode.addChild(mapContainer);
      } else {
        compositeNode.addChild(listNode);
      }
    }
  }

// Method to handle MapNode properties
  void _handleMapProperty(ElementNode newValue) {
    // Replace or add the new child
    (this as MapNode).replaceChild(newValue);
  }

  // Method to handle ListNode properties
  void _handleListProperty(String key, ElementNode newValue) {
    final listNode = this as ListNode;

    // Check if newValue is a LeafNode
    if (newValue is LeafNode) {
      _addOrReplaceLeafInList(key, listNode, newValue);
    } else {
      _addOrReplaceMapInList(key, listNode, newValue as MapNode);
    }
  }

// Helper to add or replace a LeafNode in a ListNode
  void _addOrReplaceLeafInList(
    String key,
    ListNode listNode,
    LeafNode newValue,
  ) {
    // Check if an existing MapNode in the ListNode can hold the new value
    var addedToExistingMap = false;

    for (final existingChild in listNode.value) {
      if (existingChild is MapNode &&
          !existingChild.hasChildWithName(newValue.name!)) {
        // Add the new value to this MapNode
        existingChild.addChild(newValue);

        addedToExistingMap = true;
        break;
      }
    }

    if (!addedToExistingMap) {
      // No suitable MapNode found, so create a new one
      final mapNode =
          MapNode(null, newValue.globalPath, newValue.localPath, [newValue]);
      listNode.addChild(mapNode);
    }
  }

  // Helper to add or replace a MapNode in a ListNode
  void _addOrReplaceMapInList(String key, ListNode listNode, MapNode newValue) {
    final listResourceNode =
        MapNode(null, listNode.childGlobalPath, listNode.childLocalPath, []);
    final value = newValue.copyWith(
      newGlobalPath: listResourceNode.childGlobalPath,
      newLocalPath: newValue is ResourceNode || newValue is DataTypeNode
          ? newValue.localPath
          : listResourceNode.childLocalPath,
    ) as MapNode;
    listResourceNode.addChild(value);
    listNode.addChild(listResourceNode);
  }

  @override
  String toString() => summary(2);

  dynamic toMap() {
    if (isLeaf) {
      // Return the value directly for leaf nodes
      return value;
    }

    if (isMap) {
      // Return a map for MapNode
      final resultMap = <String, dynamic>{};

      for (final child in value as List<ElementNode>) {
        if (child.name != null) {
          // Regular case: child has a name, add it to the map
          final childMap = child.toMap();
          if (childMap != null) {
            resultMap[child.name!] = childMap;
          }
        } else {
          throw Exception('Child node has no name');
        }
      }

      return resultMap.isNotEmpty ? resultMap : null;
    }

    if (isList) {
      // Return a list for ListNode
      final resultList = <dynamic>[];

      for (final child in value as List<ElementNode>) {
        final childMap = child.toMap();
        if (childMap != null) {
          resultList.add(childMap);
        }
      }

      return resultList.isNotEmpty ? resultList : null;
    }

    return null;
  }

  String summary([int depth = 0]) {
    final indent = '  ' * depth;

    if (isLeaf) {
      return '${indent}LeafNode(name: $name, globalPath: $globalPath, '
          'localPath: $localPath, value: $value, '
          'type: ${(this as LeafNode).type})';
    }

    final childrenSummary = (value as List<ElementNode>)
        .map((child) => child.summary(depth + 2))
        .join('\n');

    final type = isMap
        ? isResource
            ? 'ResourceNode'
            : isDataType
                ? 'DataTypeNode'
                : 'MapNode'
        : 'ListNode';

    return '$indent$type'
        '(name: $name, globalPath: $globalPath, localPath: $localPath)\n'
        '$indent  children: [\n'
        '$childrenSummary\n'
        '$indent  ]';
  }

  /// Converts an `ElementNode` to a `FhirBase` object using its type
  Future<FhirBase?> toFhirBase(DefinitionResolver resolver) async {
    // Resolve the type of the node
    var instanceType =
        isDataType || isResource ? localPath : await getInstanceType(resolver);

    if (instanceType == 'BackboneElement') {
      final ed = await resolver.resolveElementDefinition(pathForResolver());
      instanceType = typeFromPath(ed?.path.value);
    }

    if (instanceType == null) {
      throw Exception(
        'Unable to determine the type for ElementNode at ${pathForResolver()}',
      );
    }

    // Convert the node to a map or primitive value based on its type
    final dynamic nodeValue = toMap();

    // Use `fromType` utility to create the FhirBase object
    return fromType(nodeValue, instanceType);
  }
}

class LeafNode extends ElementNode {
  LeafNode(
    super.name,
    super.globalPath,
    super.localPath,
    super.value,
    this.type,
  );

  factory LeafNode.withCast(
    String? name,
    String? globalPath,
    String? localPath,
    dynamic value,
    String? type,
  ) {
    return LeafNode(name, globalPath, localPath, castValue(value, type), type);
  }
  String? type;

  // Simplified copyWith logic, allowing nulls with a flag
  @override
  ElementNode copyWith({
    String? newName,
    String? newGlobalPath,
    String? newLocalPath,
    dynamic value,
    bool allowNullLocations = false,
    String? newType,
  }) {
    return LeafNode(
      newName ?? name,
      newGlobalPath ?? (allowNullLocations ? null : globalPath),
      newLocalPath ?? (allowNullLocations ? null : localPath),
      value ?? this.value,
      newType ?? type,
    );
  }
}

abstract class CompositeNode extends ElementNode {
  CompositeNode(
    String? name,
    String? globalPath,
    String? localPath,
    List<ElementNode>? value,
  )   : value = value ?? <ElementNode>[],
        super(name, globalPath, localPath, value ?? <ElementNode>[]);

  @override
  // ignore: overridden_fields
  final List<ElementNode> value;

  // Utility method to add multiple children
  void addChildren(List<ElementNode> children) {
    for (final child in children) {
      addChild(child);
    }
  }

  // Refactored method for adding a child node
  void addChild(ElementNode child) {
    final updated = updatePaths(child);
    value.add(updated);
  }

  ElementNode updatePaths(ElementNode child) {
    final newChild = child.copyWith(
      newGlobalPath: childGlobalPath,
      newLocalPath: child is ResourceNode || child is DataTypeNode
          ? child.localPath
          : childLocalPath,
    );
    if (newChild is! CompositeNode || newChild.value.isEmpty) {
      return newChild;
    }

    return newChild.copyWith(
      value: newChild.value.map(newChild.updatePaths).toList(),
    );
  }

  void replaceChild(ElementNode newChild) {
    // Find the index of the child with the same name, if it exists
    final index = value.indexWhere((child) => child.name == newChild.name);

    if (index != -1) {
      // Replace the existing child if found
      value[index] = newChild;
    } else {
      // Add the new child if no match was found
      addChild(newChild);
    }
  }

  // Method to get children by name
  List<ElementNode> getChildrenByName(String elementName) {
    return value
        .where(
          (child) => child.name == elementName && child.name != 'resourceType',
        )
        .toList();
  }

  bool hasChildWithName(String name) => getChildrenByName(name).isNotEmpty;

  ElementNode? getChildByName(String name) {
    final matchingChildren = getChildrenByName(name);
    return matchingChildren.isNotEmpty ? matchingChildren.first : null;
  }

  Future<ElementNode> makeProperty(
    String name,
    DefinitionResolver resolver,
  ) async {
    // Attempt to resolve the element definition from different possible paths
    final elementDefinition =
        await resolver.resolveElementDefinition(pathForResolver(name));

    if (elementDefinition == null) {
      throw Exception('Element definition not found for $name (makeProperty)');
    }

    // Determine if the property should be a collection (list)
    final isCollection = elementDefinition.isCollection;

    // If this node is a MapNode, check if it already contains this child
    if (this is MapNode) {
      final existingChild =
          value.firstWhereOrNull((child) => child.name == name);
      if (existingChild != null) {
        return existingChild;
      }
    }

    // Determine the correct new globalPath and object globalPath
    final newGlobalPath = childGlobalPath;
    final newLocalPath = childLocalPath;

    // Create the new child node based on whether it's a collection
    final newChild = elementDefinition.isPrimitive
        ? LeafNode(
            name,
            newGlobalPath,
            newLocalPath,
            null,
            elementDefinition.singleTypeString,
          )
        : isCollection
            ? ListNode(name, newGlobalPath, newLocalPath, null)
            : MapNode(name, newGlobalPath, newLocalPath, null);

    // If the current node is a MapNode, add the child normally
    if (this is MapNode) {
      addChild(newChild);
      return newChild;
    }
    // If the current node is a ListNode, insert the new child correctly
    else if (this is ListNode) {
      // Only add the request to the first map in the list that doesn't
      // already have it
      final firstAvailableMapNode = value.firstWhereOrNull(
        (child) => child is MapNode && !child.hasChildWithName(name),
      );

      if (firstAvailableMapNode != null && firstAvailableMapNode is MapNode) {
        firstAvailableMapNode.addChild(newChild);
        return newChild;
      } else {
        // Create a new MapNode wrapper and add the ListNode
        final listContainer = MapNode(null, newGlobalPath, newLocalPath, [])
          ..addChild(newChild);
        addChild(listContainer);
        return newChild;
      }
    }

    // If the node type is unsupported, throw an exception
    throw Exception('Unsupported CompositeNode type: $runtimeType');
  }
}

// MapNode class for handling map-based nodes
class MapNode extends CompositeNode {
  MapNode(
    super.name,
    super.globalPath,
    super.newLocalPath,
    super.value,
  );

  // Async factory method for creating a MapNode from a map structure
  static Future<MapNode> fromMapAsync(
    String? name,
    String? globalPath,
    String? newLocalPath,
    Map<String, dynamic> map,
    DefinitionResolver resolver,
  ) async {
    final node = MapNode(name, globalPath, newLocalPath, null);
    await node.fromMapNodeAsync(name, globalPath, newLocalPath, map, resolver);
    return node;
  }

  // Async factory method for creating a MapNode from a map structure
  Future<void> fromMapNodeAsync(
    String? name,
    String? globalPath,
    String? newLocalPath,
    Map<String, dynamic> map,
    DefinitionResolver resolver,
  ) async {
    final nodeLocation = globalPath; // typically the parent global path
    final nodeObjectLocation = localPath ?? newLocalPath;

    for (final entry in map.entries) {
      final key = entry.key;
      final value = entry.value;

      final childPath = pathForResolver(key);

      final elementDefinition =
          await resolver.resolveElementDefinition(childPath);

      final type = elementDefinition == null
          ? null
          : elementDefinition.singleTypeString ??
              resolvePolymorphicType(elementDefinition, key);

      if (value is Map<String, dynamic>) {
        final isNewObject =
            type != null && !type.isBackboneElement && !type.isFhirPrimitive;
        // If a new object is expected, use the resolved type as the new
        // local context; otherwise, use nodeObjectLocation.
        final childNode = await MapNode.fromMapAsync(
          key,
          nodeLocation,
          isNewObject ? type : nodeObjectLocation,
          value,
          resolver,
        );
        addChild(childNode);
      } else if (value is List) {
        final childNode = await ListNode.fromListAsync(
          key,
          nodeLocation,
          nodeObjectLocation,
          value,
          resolver,
        );
        addChild(childNode);
      } else {
        addChild(
          LeafNode.withCast(key, nodeLocation, nodeObjectLocation, value, type),
        );
      }
    }
  }
}

class DataTypeNode extends MapNode {
  DataTypeNode(
    super.name,
    super.globalPath,
    String super.newLocalPath,
    super.value,
  );

  // Async factory method for creating a MapNode from a map structure
  static Future<DataTypeNode> fromMapAsync(
    String? name,
    String? globalPath,
    String newLocalPath,
    Map<String, dynamic> map,
    DefinitionResolver resolver,
  ) async {
    final node = DataTypeNode(name, globalPath, newLocalPath, null);
    await node.fromMapNodeAsync(name, globalPath, newLocalPath, map, resolver);
    return node;
  }

  @override
  String? get childLocalPath => localPath;

  @override
  String? pathForResolver([String? key]) =>
      key == null ? localPath : '$localPath.$key';
}

class ResourceNode extends MapNode {
  ResourceNode(
    super.name,
    super.globalPath,
    String super.newLocalPath,
    super.value,
  );

  // Async factory method for creating a MapNode from a map structure
  static Future<ResourceNode> fromMapAsync(
    String? name,
    String? globalPath,
    String newLocalPath,
    Map<String, dynamic> map,
    DefinitionResolver resolver,
  ) async {
    final node = ResourceNode(name, globalPath, newLocalPath, null);
    await node.fromMapNodeAsync(name, globalPath, newLocalPath, map, resolver);
    return node;
  }

  @override
  String? get childLocalPath => localPath;

  @override
  String? pathForResolver([String? key]) =>
      key == null ? localPath : '$localPath.$key';
}

// ListNode class for handling list-based nodes
class ListNode extends CompositeNode {
  ListNode(super.name, super.globalPath, super.localPath, super.value);

  // Async factory method for creating a ListNode from a list structure
  static Future<ListNode> fromListAsync(
    String? name,
    String? globalPath,
    String? localPath,
    List<dynamic> list,
    DefinitionResolver resolver,
  ) async {
    final node = ListNode(name, globalPath, localPath, <ElementNode>[]);
    final nodeLocation = node.childGlobalPath;
    final nodeObjectLocation = node.childLocalPath;

    for (final item in list) {
      final elementDefinition = nodeObjectLocation == null
          ? null
          : await resolver.resolveElementDefinition(nodeObjectLocation);

      final type = elementDefinition?.singleTypeString;

      if (item is Map<String, dynamic>) {
        final isNewObject =
            type != null && !type.isBackboneElement && !type.isFhirPrimitive;
        final childNode = await MapNode.fromMapAsync(
          null,
          nodeLocation,
          isNewObject ? type : nodeObjectLocation,
          item,
          resolver,
        );
        node.addChild(childNode);
      } else {
        node.addChild(
          LeafNode.withCast(null, nodeLocation, nodeObjectLocation, item, type),
        );
      }
    }

    return node;
  }
}

mixin Annotatable {
  List<dynamic>? _annotations;
  Map<String, dynamic>? _userData;

  bool get hasAnnotations => _annotations != null;
  List<dynamic> get annotations => _annotations ??= [];

  bool get hasUserData => _userData != null;
  Map<String, dynamic> get userData => _userData ??= {};

  void addAnnotation(dynamic annotation) {
    annotations.add(annotation);
  }

  void addUserData(String key, dynamic value) {
    userData[key] = value;
  }
}

// Helper to cast values
dynamic castValue(dynamic value, String? expectedType) {
  if (value == null) {
    return null;
  }
  if (expectedType == null) {
    return value;
  }
  try {
    switch (expectedType) {
      case 'unsignedint':
      case 'fhirunsignedint':
      case 'fhir.unsignedint':
      case 'integer':
      case 'fhirinteger':
      case 'fhir.integer':
      case 'positiveint':
      case 'fhirpositiveint':
      case 'fhir.positiveint':
        return int.parse(value.toString());
      case 'decimal':
      case 'fhirdecimal':
      case 'fhir.decimal':
        return double.parse(value.toString());
      case 'boolean':
      case 'fhirboolean':
      case 'fhir.boolean':
        return value.toString().toLowerCase() == 'true'
            ? true
            : value.toString().toLowerCase() == 'false'
                ? false
                : null;
      case 'string':
      case 'fhirstring':
      case 'fhir.string':
      case 'date':
      case 'fhirdate':
      case 'fhir.date':
      case 'datetime':
      case 'fhirdatetime':
      case 'fhir.datetime':
      case 'time':
      case 'fhirtime':
      case 'fhir.time':
      case 'instant':
      case 'fhirinstant':
      case 'fhir.instant':
      case 'uri':
      case 'fhiruri':
      case 'fhir.uri':
      case 'oid':
      case 'fhiroid':
      case 'fhir.oid':
      case 'id':
      case 'fhirid':
      case 'fhir.id':
      case 'base64binary':
      case 'fhirbase64binary':
      case 'fhir.base64binary':
      case 'code':
      case 'fhircode':
      case 'fhir.code':
      case 'fhircodeenum':
      case 'canonical':
      case 'fhircanonical':
      case 'fhir.canonical':
      case 'url':
      case 'fhirurl':
      case 'fhir.url':
      case 'markdown':
      case 'fhirmarkdown':
      case 'fhir.markdown':
        return value.toString();
      default:
        return value; // Keep as-is for unsupported types
    }
  } catch (e) {
    throw Exception(
      'Failed to cast value "$value" to type $expectedType: $e',
    );
  }
}

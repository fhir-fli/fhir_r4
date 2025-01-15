// ignore_for_file: public_member_api_docs, avoid_print

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

// Updated logging function with verbosity control and log levels
void _log(String message, [bool shouldPrint = true, String level = 'INFO']) {
  final logLevels = ['DEBUG', 'INFO', 'WARNING', 'ERROR'];
  final levelIndex = logLevels.indexOf(level.toUpperCase());

  // Adjust based on the level of log desired
  const currentLogLevel = 1; // 0=DEBUG, 1=INFO, 2=WARNING, 3=ERROR

  if (levelIndex >= currentLogLevel) {
    if (shouldPrint) print('[$level] $message');
  }
}

abstract class ElementNode with Annotatable {
  ElementNode(
    this.name,
    String? location,
    String? objectLocation,
    this.value,
  )   : location = location ?? name,
        objectLocation = objectLocation ?? location ?? name;
  final String? name;
  final String? location;
  final String? objectLocation;
  final dynamic value;
  ElementNode? parent;

// Simplified copyWith logic, allowing nulls with a flag
  ElementNode copyWith({
    String? newName,
    String? newLocation,
    String? newObjectLocation,
    dynamic value,
    bool allowNullLocations = false,
  }) {
    return _copyInternal(
      newName: newName ?? name,
      newLocation: newLocation ?? (allowNullLocations ? null : location),
      newObjectLocation:
          newObjectLocation ?? (allowNullLocations ? null : objectLocation),
      value: value ?? this.value,
    );
  }

// Internal method for copying
  ElementNode _copyInternal({
    String? newName,
    String? newLocation,
    String? newObjectLocation,
    dynamic value,
  }) {
    if (this is LeafNode) {
      return LeafNode(newName, newLocation, newObjectLocation, value, null);
    } else if (this is MapNode) {
      if (value is! List<ElementNode>?) {
        throw Exception('MapNode value must be a list of ElementNodes');
      }
      return MapNode(newName, newLocation, newObjectLocation, value);
    } else if (this is ListNode) {
      if (value is! List<ElementNode>?) {
        throw Exception('ListNode value must be a list of ElementNodes');
      }
      return ListNode(newName, newLocation, newObjectLocation, value);
    } else {
      throw Exception('Unknown ElementNode type.');
    }
  }

// Simplified copyWithNull to delegate to copyWith
  ElementNode copyWithNull({
    String? newName,
    String? newLocation,
    String? newObjectLocation,
  }) {
    return copyWith(
      newName: newName,
      newLocation: newLocation,
      newObjectLocation: newObjectLocation,
      allowNullLocations: true,
    );
  }

  static T newNode<T extends ElementNode>(
    String elementName,
    ElementNode? parent, [
    dynamic value,
  ]) {
    final newLocation = parent?.location == null
        ? parent?.name
        : parent?.location == parent?.name || parent?.name == null
            ? parent?.location
            : '${parent?.location}.${parent?.name}';
    final newObjectLocation =
        parent?.objectLocation == parent?.name || parent?.name == null
            ? parent?.objectLocation
            : parent?.objectLocation == null
                ? parent?.name
                : '${parent?.objectLocation}.${parent?.name}';

    switch (T) {
      case LeafNode:
        return LeafNode(
          elementName,
          newLocation,
          newObjectLocation,
          value,
          null,
        ) as T;
      case MapNode:
        return MapNode(elementName, newLocation, newObjectLocation, null) as T;
      case ListNode:
        return ListNode(elementName, newLocation, newObjectLocation, null) as T;
      default:
        throw Exception('Unknown ElementNode type.');
    }
  }

  String? get childLocation => location == null || location == name
      ? name
      : name == null
          ? location
          : '$location.$name';
  String? get childObjectLocation =>
      objectLocation == null || objectLocation == name
          ? name
          : name == null
              ? objectLocation
              : '$objectLocation.$name';
  bool get isLeaf => this is LeafNode;
  bool get isComposite => this is CompositeNode;
  bool get isMap => this is MapNode;
  bool get isList => this is ListNode;
  String? pathForResolver([String? key]) {
    final resolverPath = objectLocation == null
        ? name
        : objectLocation == name || name == null
            ? objectLocation
            : '$objectLocation.$name';
    if (resolverPath == null) {
      return key;
    }
    if (key == null) {
      return resolverPath;
    }
    return '$resolverPath.$key';
  }

  Future<String?> getInstanceType(DefinitionResolver resolver) async {
    ElementDefinition? elementDefinition;

    // Try to resolve element definition based on location or name
    if (location != null) {
      elementDefinition =
          await resolver.resolveElementDefinition(pathForResolver());
    } else if (name != null && parent != null) {
      elementDefinition = await resolver
          .resolveElementDefinition(parent!.pathForResolver(name));
    }

    // If element definition is found, return the single type string
    if (elementDefinition != null &&
        (elementDefinition.type?.isNotEmpty ?? false)) {
      return elementDefinition.singleTypeString;
    }

    // Log a warning and return null instead of throwing an exception
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
      throw Exception('Element definition not found for $key');
    }

    final name = _getPolymorphicName(key, elementDefinition, valueNode);

    valueNode = valueNode.copyWith(
      newName: name,
      newLocation: childLocation,
      newObjectLocation: _determineObjectLocation(elementDefinition, valueNode),
    );

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
    return (await resolver.resolveElementDefinition('$objectLocation.$key')) ??
        (await resolver.resolveElementDefinition(pathForResolver(key))) ??
        (await resolver
            .resolveElementDefinition('$childObjectLocation.$key')) ??
        resolver.resolveElementDefinition('${valueNode.objectLocation}.$key');
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
            : '$key${valueNode.objectLocation?.capitalize ?? ''}')
        : key;
  }

// Helper to determine object location
  String? _determineObjectLocation(
    ElementDefinition elementDefinition,
    ElementNode valueNode,
  ) {
    return elementDefinition.singleTypeString == 'Resource' &&
            (valueNode.objectLocation?.isFhirResourceType ?? false)
        ? valueNode.objectLocation
        : valueNode is LeafNode
            ? objectLocation
            : valueNode.objectLocation;
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
      listNode = ListNode(key, location, objectLocation, [])
        ..addChild(newValue);
      if (compositeNode is ListNode) {
        final mapContainer =
            MapNode(null, location, objectLocation, [listNode]);
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
      final mapNode = MapNode(null, null, null, [newValue]);
      listNode.addChild(mapNode);
    }
  }

// Helper to add or replace a MapNode in a ListNode
  void _addOrReplaceMapInList(String key, ListNode listNode, MapNode newValue) {
    final listObjectNode =
        MapNode(null, childLocation, childObjectLocation, []);
    final value = newValue.copyWithNull(
      newLocation: listObjectNode.childLocation,
      newObjectLocation: listObjectNode.childObjectLocation,
    ) as MapNode;
    listObjectNode.addChild(value);

    listNode.addChild(listObjectNode);
  }

  ElementNode updatePaths(String newPath, String newObjectLocation) {
    return copyWithNull(
      newLocation: newPath,
      newObjectLocation: newObjectLocation,
    );
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
      return '${indent}LeafNode(name: $name, location: $location, '
          'objectLocation: $objectLocation, value: $value)';
    }

    final childrenSummary = (value as List<ElementNode>)
        .map((child) => child.summary(depth + 2))
        .join('\n');

    return '''
$indent${isMap ? 'MapNode' : 'ListNode'}(name: $name, location: $location, objectLocation: $objectLocation)
$indent  children: [
$childrenSummary
$indent  ]
  ''';
  }

  Future<dynamic> preprocessElementNodeAsync(
    DefinitionResolver resolver,
  ) async {
    if (isLeaf) {
      // For LeafNodes, resolve directly to FhirBase
      return toFhirBase(resolver);
    } else if (isComposite) {
      // For CompositeNodes, create a Map or List of preprocessed children
      if (isMap) {
        final resultMap = <String, dynamic>{};
        for (final child in value as List<ElementNode>) {
          if (child.name != null) {
            resultMap[child.name!] =
                await child.preprocessElementNodeAsync(resolver);
          }
        }
        return resultMap;
      } else if (isList) {
        final resultList = <dynamic>[];
        for (final child in value as List<ElementNode>) {
          resultList.add(await child.preprocessElementNodeAsync(resolver));
        }
        return resultList;
      }
    }
    throw Exception('Unsupported ElementNode type: $runtimeType');
  }

  /// Converts an `ElementNode` to a `FhirBase` object using its type
  Future<FhirBase?> toFhirBase(DefinitionResolver resolver) async {
    // Resolve the type of the node
    final instanceType = await getInstanceType(resolver);

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
    super.location,
    super.objectLocation,
    super.value,
    this.type,
  );

  String? type;

  @override
  LeafNode updatePaths(String newPath, String newObjectLocation) {
    return LeafNode(
      name,
      newPath,
      newObjectLocation,
      value,
      type,
    );
  }

  // Simplified copyWith logic, allowing nulls with a flag
  @override
  ElementNode copyWith({
    String? newName,
    String? newLocation,
    String? newObjectLocation,
    dynamic value,
    bool allowNullLocations = false,
    String? newType,
  }) {
    return LeafNode(
      newName ?? name,
      newLocation ?? (allowNullLocations ? null : location),
      newObjectLocation ?? (allowNullLocations ? null : objectLocation),
      value ?? this.value,
      newType ?? type,
    );
  }
}

abstract class CompositeNode extends ElementNode {
  CompositeNode(
    String? name,
    String? location,
    String? objectLocation,
    List<ElementNode>? value,
  )   : value = value ?? <ElementNode>[],
        super(name, location, objectLocation, value ?? <ElementNode>[]);

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
    child.parent = this;
    value.add(child);
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
    // Determine if the element is a list

    // Check if the node is a MapNode
    if (this is MapNode) {
      final existingChild =
          value.firstWhereOrNull((child) => child.name == name);

      if (existingChild != null) {
        return existingChild;
      }
    }

    if (this is! LeafNode) {
      final parentEd =
          await resolver.resolveElementDefinition(pathForResolver(name));
      final childEd =
          await resolver.resolveElementDefinition('$objectLocation.$name');
      final elementDefinition = parentEd ?? childEd;
      final newLocation = childLocation;
      final newObjectLocation =
          parentEd != null ? childObjectLocation : objectLocation;
      final newChild = elementDefinition?.isPrimitive ?? false
          ? LeafNode(
              name,
              newLocation,
              newObjectLocation,
              null,
              elementDefinition?.singleTypeString,
            )
          : elementDefinition?.isCollection ?? false
              ? ListNode(name, newLocation, newObjectLocation, null)
              : MapNode(name, newLocation, newObjectLocation, null);
      if (this is MapNode) {
        addChild(newChild);
        return newChild;
      } else if (this is ListNode) {
        // Only add the request to the first map in the list that doesn't
        //already have it
        final firstAvailableMapNode = value.firstWhereOrNull(
          (child) => child is MapNode && !child.hasChildWithName(name),
        );

        if (firstAvailableMapNode != null && firstAvailableMapNode is MapNode) {
          firstAvailableMapNode.addChild(newChild);
          return newChild;
        }
      }
    }

    // If none of the above, throw an error for unknown node types
    throw Exception('Unsupported CompositeNode type: $runtimeType');
  }
}

// MapNode class for handling map-based nodes
class MapNode extends CompositeNode {
  MapNode(
    super.name,
    super.location,
    super.newObjectLocation,
    super.value,
  );

  // Async factory method for creating a MapNode from a map structure
  static Future<MapNode> fromMapAsync(
    String? name,
    String? location,
    String? newObjectLocation,
    Map<String, dynamic> map,
    DefinitionResolver resolver,
  ) async {
    final node = MapNode(name, location, newObjectLocation, null);
    final nodeLocation = location ?? location;
    final nodeObjectLocation = node.objectLocation ?? newObjectLocation;

    for (final entry in map.entries) {
      final key = entry.key;
      final value = entry.value;

      // Await the resolution of the element definition
      final elementDefinition =
          await resolver.resolveElementDefinition(node.pathForResolver(key));

      final type = elementDefinition?.singleTypeString ??
          (elementDefinition?.path != null &&
                  key.endsWith(elementDefinition!.path.value!)
              ? elementDefinition.path.value
              : null);

      if (value is Map<String, dynamic>) {
        final isNewObject =
            type != null && !type.isBackboneElement && !type.isFhirPrimitive;

        // Recursively create a child MapNode
        final childNode = await MapNode.fromMapAsync(
          key,
          nodeLocation,
          isNewObject ? type : nodeObjectLocation,
          value,
          resolver,
        );
        node.addChild(childNode);
      } else if (value is List) {
        // Recursively create a child ListNode
        final childNode = await ListNode.fromListAsync(
          key,
          nodeLocation,
          nodeObjectLocation,
          value,
          resolver,
        );
        node.addChild(childNode);
      } else {
        // Create a LeafNode
        node.addChild(
          LeafNode(key, nodeLocation, nodeObjectLocation, value, type),
        );
      }
    }

    return node;
  }

  @override
  MapNode updatePaths(String newPath, String newObjectLocation) {
    final updatedChildren = value.map((child) {
      return child.updatePaths(
        '$newPath.${child.name ?? ''}',
        newObjectLocation,
      );
    }).toList();

    return MapNode(
      name,
      newPath,
      newObjectLocation,
      updatedChildren,
    );
  }
}

// ListNode class for handling list-based nodes
class ListNode extends CompositeNode {
  ListNode(super.name, super.location, super.objectLocation, super.value);

  // Async factory method for creating a ListNode from a list structure
  static Future<ListNode> fromListAsync(
    String? name,
    String? location,
    String? objectLocation,
    List<dynamic> list,
    DefinitionResolver resolver,
  ) async {
    final node = ListNode(name, location, objectLocation, <ElementNode>[]);
    final nodeLocation = node.childLocation;
    final nodeObjectLocation = node.childObjectLocation;

    for (final item in list) {
      final elementDefinition = nodeObjectLocation == null
          ? null
          : await resolver.resolveElementDefinition(nodeObjectLocation);

      final type = elementDefinition?.singleTypeString;

      if (item is Map<String, dynamic>) {
        final isNewObject =
            type != null && !type.isBackboneElement && !type.isFhirPrimitive;

        // Recursively create a MapNode for this item
        final childNode = await MapNode.fromMapAsync(
          null,
          nodeLocation,
          isNewObject ? type : nodeObjectLocation,
          item,
          resolver,
        );
        node.addChild(childNode);
      } else {
        // Create a LeafNode for this item
        node.addChild(
          LeafNode(null, nodeLocation, nodeObjectLocation, item, type),
        );
      }
    }

    return node;
  }

  @override
  ListNode updatePaths(String newPath, String newObjectLocation) {
    final updatedChildren = value
        .asMap()
        .map((index, child) {
          final updatedChild = child.updatePaths(
            '$newPath[$index]',
            newObjectLocation,
          );
          return MapEntry(index, updatedChild);
        })
        .values
        .toList();

    return ListNode(
      name,
      newPath,
      newObjectLocation,
      updatedChildren,
    );
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

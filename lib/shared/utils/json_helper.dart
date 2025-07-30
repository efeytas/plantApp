T decodeItem<T>(dynamic json, T Function(Map<String, dynamic>) fromJson) {
  return fromJson(json as Map<String, dynamic>);
}

List<T> decodeList<T>(dynamic json, T Function(Map<String, dynamic>) fromJson) {
  if (json is List) {
    return json.map((item) => fromJson(item as Map<String, dynamic>)).toList();
  } else {
    throw Exception("Expected a JSON array.");
  }
}
extension StringExtension on String {
  String get upperCasedFormat {
    final pattern = RegExp(r'[\s\-]+'); // boşluk veya tireye göre böl
    return splitMapJoin(
      pattern,
      onMatch: (m) => m.group(0)!,
      onNonMatch: (word) =>
          word.isNotEmpty
              ? '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}'
              : word,
    );
  }
}
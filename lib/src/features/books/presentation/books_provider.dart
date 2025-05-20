import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ebook_app/src/common/presentation/providers/dio_provider.dart';
import '../data/books_repository.dart';
import '../domain/book.dart';

final booksRepositoryProvider = Provider<BooksRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return BooksRepository(dio);
});

final booksListProvider = FutureProvider<List<Book>>((ref) async {
  final repo = ref.watch(booksRepositoryProvider);
  return repo.fetchBooks();
});

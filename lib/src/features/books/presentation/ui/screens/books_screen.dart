import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../books_provider.dart';
import '../../../domain/book.dart';

class BooksScreen extends ConsumerWidget {
  const BooksScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final booksAsync = ref.watch(booksListProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Books')),
      body: booksAsync.when(
        data: (books) => ListView.builder(
          itemCount: books.length,
          itemBuilder: (_, index) {
            final Book book = books[index];
            return ListTile(
              title: Text(book.title),
              subtitle: Text(book.author),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, __) => Center(child: Text('Error: $e')),
      ),
    );
  }
}

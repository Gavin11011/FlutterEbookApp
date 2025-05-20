import 'package:dio/dio.dart';
import 'package:flutter_ebook_app/src/common/constants/api.dart';
import '../domain/book.dart';

class BooksRepository {
  final Dio httpClient;

  const BooksRepository(this.httpClient);

  Future<List<Book>> fetchBooks() async {
    final response = await httpClient.get('/api/books');
    final data = response.data as List<dynamic>;
    return data
        .map((e) => Book.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

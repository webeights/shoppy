import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppy/models/posts/posts.dart';
import 'package:shoppy/services/api/api_service.dart';

final postsProvider = FutureProvider.autoDispose<List<Products>>(
    (ref) => ref.watch(apiServiceProvider).getPosts());

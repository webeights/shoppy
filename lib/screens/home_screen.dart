import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoppy/models/posts/posts.dart';
import 'package:shoppy/providers/api_service_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final postsProviderData = ref.watch(postsProvider);
    return Scaffold(
      appBar: AppBar(),
      body: postsProviderData.when(
        data: (data) {
          final List<Products> posts = data.map((data) => data).toList();
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (ctx, index) => Text(posts[index].title),
          );
        },
        error: (err, s) => Text(err.toString()),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BlogHomePage(),
    );
  }
}

class BlogHomePage extends StatelessWidget {
  const BlogHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog'),
      ),
      body: ListView.builder(
        itemCount: 5, // Change this number to the actual number of blog posts
        itemBuilder: (BuildContext context, int index) {
          // Replace this with your actual blog post data
          return BlogPostItem(
            title: 'Blog Post Title $index',
            author: 'Author Name',
            date: 'May 7, 2024',
            content:
                'This is the content of blog post $index. It can be a long piece of text describing the blog post in detail.',
          );
        },
      ),
    );
  }
}

class BlogPostItem extends StatelessWidget {
  final String title;
  final String author;
  final String date;
  final String content;

  const BlogPostItem({
    required this.title,
    required this.author,
    required this.date,
    required this.content,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Using a custom style
            ),
            const SizedBox(height: 8.0),
            Text(
              'By $author - $date',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal), // Using a custom style
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              maxLines: 3, // Limit the number of lines shown for content
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                // Implement navigation to full blog post page
              },
              child: const Text('Read More'),
            ),
          ],
        ),
      ),
    );
  }
}
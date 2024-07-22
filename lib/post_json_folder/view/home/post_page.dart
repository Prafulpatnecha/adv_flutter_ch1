import 'package:adv_flutter_ch1/post_json_folder/provider/post_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider=Provider.of<PostProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Json'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  const Row(children: [
                  ],),
                  Text('Skip : ${postProvider.postModal.skip}'),
                  Text('Total : ${postProvider.postModal.total}'),
                  Text('Limit : ${postProvider.postModal.limit}'),
                ],
              ),
            ),
            ...List.generate(postProvider.postModal.posts.length, (index) => Card(
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  const Row(children: [],),
                  Text('Id : ${postProvider.postModal.posts[index].id}',style: const TextStyle(fontSize: 20),),
                  Text('Title : ${postProvider.postModal.posts[index].title}',textAlign: TextAlign.center,style: const TextStyle(fontSize: 20),),
                  const SizedBox(height: 10,),
                  Text('Body : ${postProvider.postModal.posts[index].body}',textAlign: TextAlign.center,style: const TextStyle(fontSize: 20),),
                  const SizedBox(height: 10,),
                  Text('Likes : ${postProvider.postModal.posts[index].reactions.likes}',textAlign: TextAlign.center,style: const TextStyle(fontSize: 20),),
                  Text('DisLikes : ${postProvider.postModal.posts[index].reactions.dislikes}',textAlign: TextAlign.center,style: const TextStyle(fontSize: 20),),
                  const SizedBox(height: 10,),
                  Text('Views : ${postProvider.postModal.posts[index].views}',textAlign: TextAlign.center,style: const TextStyle(fontSize: 20),),
                  const SizedBox(height: 10,),
                  Text('UserId : ${postProvider.postModal.posts[index].userId}',textAlign: TextAlign.center,style: const TextStyle(fontSize: 20),),
                  Text('Tags : ${postProvider.postModal.posts[index].tags[0]},${postProvider.postModal.posts[index].tags[1]},${(postProvider.postModal.posts[index].tags.length!=2)?postProvider.postModal.posts[index].tags[2]:''}',textAlign: TextAlign.center,style: const TextStyle(fontSize: 20),),
                ],
              ),
            ),)
          ],
        ),
      )
    );
  }
}

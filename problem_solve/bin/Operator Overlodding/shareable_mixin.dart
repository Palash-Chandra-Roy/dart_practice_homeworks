// Define the Shareable interface
abstract class Shareable {
  void share(String content);
}

// Mixin to provide a shared implementation
mixin ShareableMixin implements Shareable {
  @override
  void share(String content) {
    print('Share the $content');
  }
}

// Base Model class (if needed)
class Model {}

// Post class implementing Shareable via the mixin
class Post extends Model with ShareableMixin {}

// Comment class implementing Shareable via the mixin
class Comment extends Model with ShareableMixin {}

class Video extends Model with ShareableMixin {}

class Audio with ShareableMixin {}

void main() {
  var post = Post();
  var comment = Comment();

  var video = Video();
  video.share("this is a Video ");
  var audio = Audio();
  audio.share("this is Audio ");

  post.share("This is a post!");
  comment.share("This is a comment!");
}

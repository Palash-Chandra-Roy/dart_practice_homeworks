import 'comment.dart';
import 'post.dart';
import 'video.dart';

void main() {
  var post = Post();
  var comment = Comment();

  var video = Video();
  video.share("this is a Video ");

  post.share("This is a post!");
  comment.share("This is a comment!");
}

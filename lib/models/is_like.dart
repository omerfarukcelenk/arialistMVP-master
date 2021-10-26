import 'package:arialist/models/Post.dart';
import 'package:arialist/models/User.dart';

class Is_Like {
  Post post_id;
  User user_id;
  int is_liked;

  Is_Like(this.post_id, this.user_id, this.is_liked);
}

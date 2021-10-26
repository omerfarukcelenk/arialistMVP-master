import 'package:arialist/models/Post.dart';
import 'package:arialist/models/User.dart';

class Support {
  Post post_id;
  User user_id;
  int is_supported;

  Support(this.post_id, this.user_id, this.is_supported);
}

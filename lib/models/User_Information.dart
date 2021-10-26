import 'package:arialist/models/Job.dart';
import 'package:arialist/models/User.dart';
import 'package:flutter/animation.dart';

class User_Information {
  User user_id;
  int support_count;
  int connection_count;
  Job job_id;
  int post_count;
  String profile_picture_url;

  User_Information(this.user_id, this.support_count, this.connection_count,
      this.job_id, this.post_count, this.profile_picture_url);
}

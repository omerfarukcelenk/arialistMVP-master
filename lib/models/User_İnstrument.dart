import 'package:arialist/models/Instrument.dart';
import 'package:arialist/models/User.dart';

class User_Instrument {
  int user_instrument_id;
  Instrument instrument_id;
  int instrument_level;
  User user_id;
  int is_base;

  User_Instrument(this.user_instrument_id, this.instrument_id,
      this.instrument_level, this.user_id, this.is_base);
      
}

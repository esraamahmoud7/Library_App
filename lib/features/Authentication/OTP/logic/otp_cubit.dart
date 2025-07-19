import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  OtpCubit() : super(OtpInitial());

  Future<void>  verifyOTP() async
  {

  }

  Future <void> resendOtp() async{
    // API to resend OTP

  }
}

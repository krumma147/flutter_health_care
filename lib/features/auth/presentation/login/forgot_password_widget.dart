import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_health_care/features/auth/bloc/login/login_bloc.dart';
import 'package:flutter_health_care/shared/components/src.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final loginBloc = context.read<LoginBloc>();

    Widget backButton(Function()? onPressed) {
      return BaseButton(
        text: 'Back',
        icon: SvgPicture.asset(
          "assets/icons/arrow_left.svg",
          width: 9,
          height: 16,
        ),
        outlineColor: ColorComponent.primaryBlue60,
        txtColor: ColorComponent.primaryBlue60,
        isHideOutline: true,
        onPressed: onPressed,
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: backButton(
          () {},
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const BaseText(
                  "Forgotten your password?",
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
                const BaseText(
                  "There is nothing to worry about, we'll send you a message to help you reset your password.",
                  fontSize: 16,
                ),
                const BaseTextField(
                  labelText: "Recovery email address",
                  // textController: ,
                  // onChanged: ,
                ),
                BaseButton(
                  text: "Send reset link",
                  bgColor: ColorComponent.primaryBlue60,
                  txtColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // final loginBloc = context.read<LoginBloc>();

    Widget backButton(Function()? onPressed) {
      return BaseButton(
        text: 'Back',
        icon: SvgPicture.asset(
          "assets/icons/arrow_left.svg",
          width: 9,
          height: 16,
        ),
        outlineColor: ColorComponent.primaryBlue60,
        txtColor: ColorComponent.primaryBlue60,
        isHideOutline: true,
        onPressed: onPressed,
      );
    }

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: backButton(
          () {},
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                const BaseText(
                  "Reset password",
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
                const BaseText(
                  "Type in your new password for future login.",
                  fontSize: 16,
                ),
                const BaseTextField(
                  labelText: "New Password",
                  // textController: ,
                  // onChanged: ,
                ),
                const BaseTextField(
                  labelText: "Confirm New Password",
                  // textController: ,
                  // onChanged: ,
                ),
                BaseButton(
                  text: "Reset password",
                  bgColor: ColorComponent.primaryBlue60,
                  txtColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_health_care/shared/components/src.dart';
import 'package:flutter_svg/svg.dart';

Widget headerTxt() => Container(
      alignment: Alignment.centerLeft,
      child: const BaseText(
        "Login",
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
    );

Widget loginForm({Function()? onForgotPassword, Function()? onSignUp}) {
  return Expanded(
    child: Center(
      child: Column(
        children: [
          const BaseTextField(
            labelText: "Patient ID",
          ),
          const SizedBox(height: 24),
          const BaseTextField(
            labelText: "Password",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(value: false, onChanged: (value) {}),
                  const BaseText(
                    'Remember Me',
                    color: ColorComponent.gray90,
                  ),
                ],
              ),
              InkWell(
                onTap: onForgotPassword,
                child: const BaseText(
                  "Forgot Password?",
                  color: ColorComponent.primaryBlue90,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          PrimaryButton(
            text: 'Log In',
            padding: const EdgeInsets.only(top: 20),
            onPressed: () {
              // Handle login logic
            },
          ),
          const SizedBox(height: 24),
          BaseButton(
            text: "Log in with Google",
            outlineColor: ColorComponent.primaryBlue60,
            icon: SvgPicture.asset(
              "assets/icons/google.svg",
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
          const SizedBox(height: 12),
          BaseButton(
            text: "Log in with Apple",
            outlineColor: ColorComponent.primaryBlue60,
            icon: SvgPicture.asset(
              "assets/icons/apple.svg",
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: const Divider(
              color: ColorComponent.gray20,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: onForgotPassword,
              child: const BaseText(
                "No account yet? Sign Up",
                color: ColorComponent.primaryBlue90,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

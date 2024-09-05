import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: LoginScreen(dark: dark),
      ),
    ));
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // this is the heading
        TLoginHeader(dark: dark),

        /// This is the form that allows users to log in
        const TLoginForm(),

        ///Divider
        //the two lines with text in between
        const TFormDivider(dividerText: TTexts.orSignInWith),
        const SizedBox(height: TSizes.spaceBtwSections),

        /// Footer - Social Buttons
        const TSocialButtons()
      ],
    );
  }
}










import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          /// first and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  expands: false,
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  expands: false,
                ),
              ),
            ],
          ),

          /// username
          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
            expands: false,
          ),

          /// Email
          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
            expands: false,
          ),

          /// Phone Number
          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
            expands: false,
          ),

          /// Password
          const SizedBox(height: TSizes.spaceBtwInputFields),

          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
            expands: false,
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields),

          /// Terms and Conditions Checkbox
          Row(children: [
            SizedBox(height: 24, width: 24, child: Checkbox(value: true, onChanged: (value) {})),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: '${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: '${TTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium?.apply(
                color: dark ? TColors.white : TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? TColors.white : TColors.primary,
              ),
              ),
              TextSpan(
                  text: '${TTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: TTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium?.apply(
                color: dark ? TColors.white : TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? TColors.white : TColors.primary,
              ),
              ),
            ]))
          ]),

          /// sing in button
          const SizedBox(height: TSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: (){},
                child: const Text(TTexts.createAccount)),
          )
        ],
      ),
    );
  }
}
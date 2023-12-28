import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontSize: 18.fSize,
      );
  static get bodyLargeBlack900Regular => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack900Regular => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlack900Regular14 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlack900Regular_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlack900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.49),
      );
  static get bodyMediumBlack900_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumCabinetGrotesk =>
      theme.textTheme.bodyMedium!.cabinetGrotesk.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumCabinetGroteskOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.cabinetGrotesk.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumCabinetGroteskOnPrimaryContainer13 =>
      theme.textTheme.bodyMedium!.cabinetGrotesk.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodyMediumCabinetGrotesk_1 =>
      theme.textTheme.bodyMedium!.cabinetGrotesk;
  static get bodyMediumMontserratOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 13.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumMontserratOnPrimaryContainer13 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 13.fSize,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimaryRegular => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular_1 => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlack90010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 10.fSize,
      );
  static get bodySmallBlack90012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 12.fSize,
      );
  static get bodySmallBlack90012_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 12.fSize,
      );
  static get bodySmallBlack90012_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontSize: 12.fSize,
      );
  static get bodySmallBlack90012_3 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900Regular => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallBlack900Regular12 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallCabinetGroteskBlack900 =>
      theme.textTheme.bodySmall!.cabinetGrotesk.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 12.fSize,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallMontserrat =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPrimaryRegular => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineSmallCabinetGrotesk =>
      theme.textTheme.headlineSmall!.cabinetGrotesk.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get labelLargeMontserratPrimaryContainer =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontSize: 11.fSize,
      );
  static get labelMediumBlack900_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumBlack900_2 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900.withOpacity(0.3),
      );
  static get labelMediumCabinetGroteskBlack900 =>
      theme.textTheme.labelMedium!.cabinetGrotesk.copyWith(
        color: appTheme.black900,
      );
  static get labelMediumMontserratGray400 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.gray400,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelSmallBlue700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blue700,
      );
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLarge22_1 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLarge22_2 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeCabinetGrotesk =>
      theme.textTheme.titleLarge!.cabinetGrotesk.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleLargeCabinetGrotesk22 =>
      theme.textTheme.titleLarge!.cabinetGrotesk.copyWith(
        fontSize: 22.fSize,
      );
  static get titleLargeCabinetGroteskBlack900 =>
      theme.textTheme.titleLarge!.cabinetGrotesk.copyWith(
        color: appTheme.black900.withOpacity(0.8),
      );
  static get titleLargePromptBlack900 =>
      theme.textTheme.titleLarge!.prompt.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontWeight: FontWeight.w300,
      );
  static get titleLargePromptBlack900Medium =>
      theme.textTheme.titleLarge!.prompt.copyWith(
        color: appTheme.black900.withOpacity(0.8),
        fontWeight: FontWeight.w500,
      );
  static get titleLargePromptPrimary =>
      theme.textTheme.titleLarge!.prompt.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get titleSmallBlack900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack900_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get titleSmallBlack900_3 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get titleSmallCabinetGroteskBlack900 =>
      theme.textTheme.titleSmall!.cabinetGrotesk.copyWith(
        color: appTheme.black900.withOpacity(0.46),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallCabinetGroteskBlack900Bold =>
      theme.textTheme.titleSmall!.cabinetGrotesk.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallCabinetGroteskBlack900_1 =>
      theme.textTheme.titleSmall!.cabinetGrotesk.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get titleSmallMontserratOnPrimaryContainer =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get cabinetGrotesk {
    return copyWith(
      fontFamily: 'Cabinet Grotesk',
    );
  }

  TextStyle get prompt {
    return copyWith(
      fontFamily: 'Prompt',
    );
  }
}

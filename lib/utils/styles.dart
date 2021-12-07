import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'dimensions.dart';

abstract class TextStyles {
  static TextStyle k20GooglePoppinsNormal = GoogleFonts.poppins(
    fontStyle: FontStyle.normal,
    fontSize: Dimens.text_xlarge,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );
}

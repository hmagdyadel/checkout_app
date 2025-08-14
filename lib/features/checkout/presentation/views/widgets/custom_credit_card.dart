import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final AutovalidateMode autoValidateMode;

  const CustomCreditCard({
    super.key,
    required this.formKey,
    required this.autoValidateMode,
  });

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
          isHolderNameVisible: true,
        ),
        CreditCardForm(
          autovalidateMode: widget.autoValidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            cardNumber = creditCardModel.cardNumber;
            expiryDate = creditCardModel.expiryDate;
            cardHolderName = creditCardModel.cardHolderName;
            cvvCode = creditCardModel.cvvCode;
            showBackView = creditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
          cardHolderValidator: validateCardHolderName,
        ),
      ],
    );
  }
  // Card holder name validation function
  String? validateCardHolderName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Cardholder name is required';
    }

    // Remove extra spaces and convert to uppercase for validation
    String cleanName = value.trim().toUpperCase();

    // Check minimum length
    if (cleanName.length < 2) {
      return 'Name must be at least 2 characters';
    }

    // Check maximum length (most cards support up to 26 characters)
    if (cleanName.length > 26) {
      return 'Name must be 26 characters or less';
    }

    // Check for valid characters (letters, spaces, hyphens, apostrophes)
    RegExp validChars = RegExp(r"^[A-Z\s\-'\.]+$");
    if (!validChars.hasMatch(cleanName)) {
      return 'Name contains invalid characters';
    }

    // Check for at least one letter
    if (!RegExp(r'[A-Z]').hasMatch(cleanName)) {
      return 'Name must contain at least one letter';
    }

    // Check for reasonable format (at least first name, optionally last name)
    List<String> nameParts = cleanName.split(RegExp(r'\s+'));
    if (nameParts.length > 4) {
      return 'Too many name parts';
    }

    // Check each name part has reasonable length
    for (String part in nameParts) {
      if (part.isNotEmpty && part.length < 2) {
        return 'Each name part must be at least 2 characters';
      }
    }

    return null; // Valid name
  }
}

package mum.edu.smartchoice.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CreditCardValidator implements ConstraintValidator<CreditCard, String> {

	@Override
	public void initialize(CreditCard arg0) {

	}

	@Override
	public boolean isValid(String cardNumber, ConstraintValidatorContext arg1) {
		int digits = cardNumber.length();
		int oddOrEven = digits & 1;
		long sum = 0;
		for (int count = 0; count < digits; count++) {
			int digit = 0;
			try {
				digit = Integer.parseInt(cardNumber.charAt(count) + "");
			} catch (NumberFormatException e) {
				return false;
			}

			if (((count & 1) ^ oddOrEven) == 0) {
				digit *= 2;
				if (digit > 9) {
					digit -= 9;
				}
			}
			sum += digit;
		}

		return (sum == 0) ? false : (sum % 10 == 0);

	}

}

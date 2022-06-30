package com.nss.sahibganj.helper;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Validation {

	// Function to validate the password.
	public static boolean isValidPassword(String password, String password2) {

		// Regex to check valid password.
		String regex = "^(?=.*[0-9])" + "(?=.*[a-z])(?=.*[A-Z])" + "(?=.*[@#$%^&+=])" + "(?=\\S+$).{8,20}$";

		// Compile the ReGex
		Pattern p = Pattern.compile(regex);

		// If the password is empty
		// return false
		if (password == null || password != password2) {
			return false;
		}

		// Pattern class contains matcher() method
		// to find matching between given password
		// and regular expression.
		Matcher m = p.matcher(password);

		// Return if the password
		// matched the ReGex
		return m.matches();
	}

	public static boolean isValidMobile(String number) {
		String regex = "(0/91)?[7-9][0-9] {9}";
		Pattern p = Pattern.compile(regex);
		Matcher m = p.matcher(number);

		return (m.find() && m.group().equals(number));
	}

	public static boolean isValidEmail(String email) {
		String regex = "^[a-zA-Z0-9_+&*-]+(?:\\." + "[a-zA-Z0-9_+&*-]+)*@" + "(?:[a-zA-Z0-9-] + [a-z" + "A-Z]{2,7}$";
		Pattern p = Pattern.compile(regex);
		Matcher m = p.matcher(email);
		return m.matches();
	}
}

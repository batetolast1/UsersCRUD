package pl.coderslab.jeeusercrud.regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class UserNameValidator {
    // Alphanumeric string that may include ".", "_" and "–" having a length of 3 to 16 characters
    private static final String USERNAME_PATTERN = "^[a-z0-9._-]{3,16}$";
    private static final Pattern PATTERN = Pattern.compile(USERNAME_PATTERN);

    public static boolean validate(String username) {
        Matcher matcher = PATTERN.matcher(username);
        return matcher.matches();
    }
}

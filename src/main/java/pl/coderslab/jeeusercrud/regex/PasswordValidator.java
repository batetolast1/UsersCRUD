package pl.coderslab.jeeusercrud.regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PasswordValidator {
    // 6 to 20 characters string with at least one digit, one upper case letter, one lower case letter and one special symbol (“@#$%”)
    private static final String PASSWORD_PATTERN = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})";
    private Pattern pattern;
    private Matcher matcher;

    public PasswordValidator() {
        pattern = Pattern.compile(PASSWORD_PATTERN);
    }

    public boolean validate(final String password) {
        matcher = pattern.matcher(password);
        return matcher.matches();
    }
}
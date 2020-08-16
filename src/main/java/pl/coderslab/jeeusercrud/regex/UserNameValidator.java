package pl.coderslab.jeeusercrud.regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class UserNameValidator {
    // Alphanumeric string that may include _ and – having a length of 3 to 16 characters
    private static final String USERNAME_PATTERN = "^[a-z0-9_-]{3,16}$";
    private Pattern pattern;
    private Matcher matcher;

    public UserNameValidator() {
        pattern = Pattern.compile(USERNAME_PATTERN);
    }

    public boolean validate(final String username) {
        matcher = pattern.matcher(username);
        return matcher.matches();
    }
}

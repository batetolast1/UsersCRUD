package pl.coderslab.jeeusercrud.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PasswordValidator {
    // password must be 8-20 characters long with at least one digit, one upper case letter, one lower case letter, one special symbol and no spaces
    private static final String PASSWORD_PATTERN = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*])[a-zA-Z0-9$&+,:;=?@#|'\"<>.^*()%!-](?=\\S+$).{8,20}$";
    private static final Pattern PATTERN = Pattern.compile(PASSWORD_PATTERN);

    public static boolean validate(String password) {
        Matcher matcher = PATTERN.matcher(password);
        return matcher.matches();
    }
}
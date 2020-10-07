package pl.coderslab.jeeusercrud.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailValidator {
    private static final String EMAIL_PATTERN = "^([a-z0-9_.+-]+)@([\\da-z.-]+)\\.([a-z.]{2,6})$";
    private static final Pattern PATTERN = Pattern.compile(EMAIL_PATTERN);

    public static boolean validate(String email) {
        if (email == null) {
            return false;
        }
        Matcher matcher = PATTERN.matcher(email);
        return matcher.matches();
    }
}
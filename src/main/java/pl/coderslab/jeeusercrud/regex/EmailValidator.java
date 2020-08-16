package pl.coderslab.jeeusercrud.regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailValidator {
    private static final String EMAIL_PATTERN = "^([a-z0-9_.+-]+)@([\\da-z.-]+)\\.([a-z.]{2,6})$";
    public static final Pattern PATTERN = Pattern.compile(EMAIL_PATTERN);

    public static boolean validate(String email) {
        Matcher matcher = PATTERN.matcher(email);
        return matcher.matches();
    }
}
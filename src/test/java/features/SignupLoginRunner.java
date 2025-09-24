package features;

import com.intuit.karate.junit5.Karate;

public class SignupLoginRunner {
    @Karate.Test
    Karate testSignupLogin() {
        return Karate.run("signup_login").relativeTo(getClass());
    }
}


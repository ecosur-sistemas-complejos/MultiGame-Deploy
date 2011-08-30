package mx.ecosur.multigame.session;

import javax.security.auth.callback.*;
import java.io.IOException;

/**

 */
public class AuthCallbackHandler implements CallbackHandler {

    String username;

    char[] password;

    public AuthCallbackHandler(String username, char[] password) {
        this.username = username;
        this.password = password;
    }

    public AuthCallbackHandler(String username, String password) {
        this.username = username;
        this.password = password.toCharArray();
    }

    public void handle(Callback[] callbacks) throws IOException, UnsupportedCallbackException {
        for (Callback callback : callbacks) {
            System.out.println("Handling callbacks");
            if (callback instanceof NameCallback) {
                System.out.println("Handling NameCallback");
                NameCallback nc = (NameCallback) callback;
                nc.setName(username);
            } else if (callback instanceof PasswordCallback) {
                System.out.println("Handling PasswordCallback");
                PasswordCallback pc = (PasswordCallback) callback;
                pc.setPassword(password);
            }
        }
    }
}

package pl.coderslab.jeeusercrud.entity;

import org.mindrot.jbcrypt.BCrypt;

public class Admin {
    private int id;
    private String email;
    private String password;

    private Admin() {
    }

    public boolean checkPasswordMatch(String passwordToCheck) {
        return BCrypt.checkpw(passwordToCheck, password);
    }

    // Inner Static Fluent Builder

    public static final class Builder {
        private int id;
        private String email;
        private String password;

        public Builder id(int id) {
            this.id = id;
            return this;
        }

        public Builder email(String email) {
            this.email = email;
            return this;
        }

        public Builder password(String password) {
            this.password = password;
            return this;
        }

        public Admin build() {
            Admin admin = new Admin();
            admin.id = this.id;
            admin.email = this.email;
            admin.password = this.password;
            return admin;
        }
    }
}

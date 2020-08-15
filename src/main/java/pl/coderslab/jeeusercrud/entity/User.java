package pl.coderslab.jeeusercrud.entity;

import org.mindrot.jbcrypt.BCrypt;

public class User {
    private int id;
    private String email;
    private String userName;
    private String password;

    private User() {
    }

    public static NeedId builder() {
        return new Builder();
    }

    public int getId() {
        return id;
    }

    public String getEmail() {
        return email;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public boolean checkPasswordMatch(String passwordToCheck) {
        return BCrypt.checkpw(passwordToCheck, password);
    }

    // Foolproof API design of User class

    public interface NeedId {
        NeedEmail id(int id);
    }

    public interface NeedEmail {
        NeedUserName email(String email);
    }

    public interface NeedUserName {
        NeedPassword userName(String userName);
    }

    public interface NeedPassword {
        CanBeBuild password(String password);
    }

    public interface CanBeBuild {
        User build();
    }

    // Inner Static Fluent Builder

    public static class Builder implements NeedId, NeedEmail, NeedUserName, NeedPassword, CanBeBuild {
        private int id;
        private String email;
        private String userName;
        private String password;

        @Override
        public Builder id(int id) {
            this.id = id;
            return this;
        }

        @Override
        public Builder email(String email) {
            this.email = email;
            return this;
        }

        @Override
        public Builder userName(String userName) {
            this.userName = userName;
            return this;
        }

        @Override
        public Builder password(String password) {
            this.password = password;
            return this;
        }

        @Override
        public User build() {
            User user = new User();
            user.id = this.id;
            user.email = this.email;
            user.userName = this.userName;
            user.password = this.password;
            return user;
        }
    }
}

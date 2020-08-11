package pl.coderslab.jeeusercrud.entity;

public class Admin {
    private int id;
    private String email;
    private String password;

    private Admin() {
    }

    public String getPassword() {
        return password;
    }

    public static class Builder {
        private int id;
        private String email;
        private String password;

        public Builder(int id) {
            this.id = id;
        }

        public Admin.Builder withEmail(String email) {
            this.email = email;
            return this;
        }

        public Admin.Builder withPassword(String password) {
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

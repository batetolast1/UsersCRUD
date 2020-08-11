package pl.coderslab.jeeusercrud.dao;

import pl.coderslab.jeeusercrud.entity.Admin;
import pl.coderslab.jeeusercrud.utils.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao {
    private static final String READ_ADMIN_QUERY = "SELECT * FROM `admins` WHERE `email` = ?";

    public Admin read(String email) {
        try (Connection connection = DbUtil.getConnection();
             PreparedStatement statement = getReadStatement(connection, email)) {
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return generateAdminFrom(resultSet);
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    private PreparedStatement getReadStatement(Connection connection, String email) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(READ_ADMIN_QUERY);
        statement.setString(1, email);
        return statement;
    }

    private Admin generateAdminFrom(ResultSet resultSet) throws SQLException {
        return new Admin.Builder(resultSet.getInt("id"))
                .withEmail(resultSet.getString("email"))
                .withPassword(resultSet.getString("password"))
                .build();
    }
}

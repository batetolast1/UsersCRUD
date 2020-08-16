package pl.coderslab.jeeusercrud.dao;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import pl.coderslab.jeeusercrud.entity.Admin;
import pl.coderslab.jeeusercrud.utils.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao {
    private static final String READ_ADMIN_QUERY = "SELECT * FROM `admins` WHERE `email` = ?";
    private static final Logger LOGGER = LogManager.getLogger(AdminDao.class);

    public Admin read(String email) {
        try (Connection connection = DbUtil.getConnection();
             PreparedStatement statement = getReadStatement(connection, email)) {
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                LOGGER.info("Admin {} data retrieved", email);
                return generateAdminFrom(resultSet);
            } else {
                LOGGER.warn("Admin {} data not in database", email);
            }
        } catch (SQLException e) {
            LOGGER.error("Unable to process SQL query due to {}, {}", e.getErrorCode(), e.getMessage());
        }
        return null;
    }

    private PreparedStatement getReadStatement(Connection connection, String email) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(READ_ADMIN_QUERY);
        statement.setString(1, email);
        return statement;
    }

    private Admin generateAdminFrom(ResultSet resultSet) throws SQLException {
        return new Admin.Builder()
                .id(resultSet.getInt("id"))
                .email(resultSet.getString("email"))
                .password(resultSet.getString("password"))
                .build();
    }
}

package pl.coderslab.jeeusercrud.dao;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mindrot.jbcrypt.BCrypt;
import pl.coderslab.jeeusercrud.entity.User;
import pl.coderslab.jeeusercrud.utils.DbUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private static final Logger LOGGER = LogManager.getLogger(UserDao.class);
    private static final String CREATE_USER_QUERY = "INSERT INTO `users`(`email`, `username`, `password`) VALUES (?, ?, ?)";
    private static final String READ_USER_QUERY = "SELECT * FROM `users` WHERE `columnName` = ?";
    private static final String UPDATE_USER_QUERY = "UPDATE `users` SET `email` = ?, `username` = ?, `password` = ? WHERE `id` = ?";
    private static final String DELETE_USER_QUERY = "DELETE FROM `users` WHERE `id` = ?";
    private static final String FIND_ALL_USERS_QUERY = "SELECT * FROM `users`";
    private static final String DELETE_ALL_USERS_QUERY = "DELETE FROM `users`";

    public User create(User user) {
        try (Connection connection = DbUtil.getConnection();
             PreparedStatement statement = getCreateStatement(connection, user.getEmail(), user.getUserName(), user.getPassword())) {
            statement.executeUpdate();
            ResultSet resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                int id = resultSet.getInt(1);
                return new User.Builder()
                        .id(id)
                        .email(user.getEmail())
                        .userName(user.getUserName())
                        .password(user.getPassword())
                        .build();
            }
        } catch (SQLException e) {
            LOGGER.error("Unable to process SQL query due to {}, {}", e.getErrorCode(), e.getMessage());
        }
        return null;
    }

    private PreparedStatement getCreateStatement(Connection connection, String email, String userName, String password) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(CREATE_USER_QUERY, Statement.RETURN_GENERATED_KEYS);
        statement.setString(1, email);
        statement.setString(2, userName);
        statement.setString(3, hashPassword(password));
        return statement;
    }

    private String hashPassword(String password) {
        return BCrypt.hashpw(password, BCrypt.gensalt());
    }

    public User read(int userId) {
        try (Connection connection = DbUtil.getConnection();
             PreparedStatement statement = getReadStatement(connection, userId)) {
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return generateUserFrom(resultSet);
            }
        } catch (SQLException e) {
            LOGGER.error("Unable to process SQL query due to {}, {}", e.getErrorCode(), e.getMessage());
        }
        return null;
    }

    private PreparedStatement getReadStatement(Connection connection, int userId) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(READ_USER_QUERY.replace("columnName", "id"));
        statement.setInt(1, userId);
        return statement;
    }

    private User generateUserFrom(ResultSet resultSet) throws SQLException {
        return new User.Builder()
                .id(resultSet.getInt("id"))
                .email(resultSet.getString("email"))
                .userName(resultSet.getString("username"))
                .password(resultSet.getString("password"))
                .build();
    }

    public int update(User user) {
        try (Connection connection = DbUtil.getConnection();
             PreparedStatement statement = getUpdateStatement(connection, user)) {
            statement.executeUpdate();
            return statement.getUpdateCount();
        } catch (SQLException e) {
            LOGGER.error("Unable to process SQL query due to {}, {}", e.getErrorCode(), e.getMessage());
        }
        return -1;
    }

    private PreparedStatement getUpdateStatement(Connection connection, User user) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(UPDATE_USER_QUERY);
        statement.setString(1, user.getEmail());
        statement.setString(2, user.getUserName());
        statement.setString(3, hashPassword(user.getPassword()));
        statement.setInt(4, user.getId());
        return statement;
    }

    public int delete(int userId) {
        try (Connection connection = DbUtil.getConnection();
             PreparedStatement statement = getDeleteStatement(connection, userId)) {
            statement.executeUpdate();
            return statement.getUpdateCount();
        } catch (SQLException e) {
            LOGGER.error("Unable to process SQL query due to {}, {}", e.getErrorCode(), e.getMessage());
        }
        return -1;
    }

    private PreparedStatement getDeleteStatement(Connection connection, int userId) throws SQLException {
        PreparedStatement statement = connection.prepareStatement(DELETE_USER_QUERY);
        statement.setInt(1, userId);
        return statement;
    }

    public int deleteAll() {
        try (Connection connection = DbUtil.getConnection();
             PreparedStatement statement = getDeleteAllStatement(connection)) {
            statement.executeUpdate();
            return statement.getUpdateCount();
        } catch (SQLException e) {
            LOGGER.error("Unable to process SQL query due to {}, {}", e.getErrorCode(), e.getMessage());
        }
        return -1;
    }

    private PreparedStatement getDeleteAllStatement(Connection connection) throws SQLException {
        return connection.prepareStatement(DELETE_ALL_USERS_QUERY);
    }

    public List<User> findAll() {
        try (Connection connection = DbUtil.getConnection();
             PreparedStatement statement = getFindAllStatement(connection)) {
            ResultSet resultSet = statement.executeQuery();
            List<User> users = new ArrayList<>();
            while (resultSet.next()) {
                users.add(generateUserFrom(resultSet));
            }
            return users;
        } catch (SQLException e) {
            LOGGER.error("Unable to process SQL query due to {}, {}", e.getErrorCode(), e.getMessage());
        }
        return null;
    }

    private PreparedStatement getFindAllStatement(Connection connection) throws SQLException {
        return connection.prepareStatement(FIND_ALL_USERS_QUERY);
    }
}

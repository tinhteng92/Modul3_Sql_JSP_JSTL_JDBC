package dao;

import connect.Connect_MySQL;
import model.Student;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class StudentDao implements IStudentDao {
    private static final String INSERT_STUDENTS_SQL = "INSERT INTO students (name,dateOfBirth,address,phoneNumber,email,roomName) VALUES (?,?,?,?,?,?);";
    private static final String SELECT_STUDENT_BY_ID = "select name,dateOfBirth,address,phoneNumber,email,roomName from students where id= ?";
    private static final String SELECT_STUDENT_BY_NAME = "select * from students where name like concat('%',?,'%';";
    private static final String SELECT_ALL_STUDENTS = "select * from students";
    private static final String DELETE_STUDENTS_SQL = "delete from students where id=?;";
    private static final String UPDATE_STUDENTS_SQL = "update students set name = ?,dateOfBirth = ?,address = ?,phoneNumber = ?,email = ?,roomName= ? where id = ?;";
    private static final String SELECT_ALL_CLASSROOM = "select * from classroom";

    @Override
    public void insertStudent(Student student) throws SQLException {
        System.out.println(INSERT_STUDENTS_SQL);
        try (Connection connection = Connect_MySQL.getConnect();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STUDENTS_SQL)) {
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, String.valueOf(student.getDateOfBirth()));
            preparedStatement.setString(3, student.getAddress());
            preparedStatement.setString(4, student.getPhoneNumber());
            preparedStatement.setString(5, student.getEmail());
            preparedStatement.setString(6, student.getClassroom());

            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Student selectStudent(int id) throws SQLException {
        Student student = null;
        try (Connection connection = Connect_MySQL.getConnect();
        ) {
            assert connection != null;
            try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_STUDENT_BY_ID);) {
                preparedStatement.setInt(1, id);
                System.out.println(preparedStatement);
                ResultSet rs = preparedStatement.executeQuery();

                // Step 4: Process the ResultSet object.
                while (rs.next()) {
                    String name = rs.getString("name");
                    LocalDate dateOfBirth = LocalDate.parse(rs.getString("dateOfBirth"));
                    String address = rs.getString("address");
                    String phoneNumber = rs.getString("phoneNumber");
                    String email = rs.getString("email");
                    String classroom = rs.getString("roomName");
                    student = new Student(id, name, dateOfBirth, address, phoneNumber, email, classroom);
                }
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return student;
    }

    @Override
    public List<Student> selectAllStudents() throws SQLException {
        List<Student> students = new ArrayList<>();

        try (Connection connection = Connect_MySQL.getConnect();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_STUDENTS)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                LocalDate dateOfBirth = LocalDate.parse(rs.getString("dateOfBirth"));
                String address = rs.getString("address");
                String phoneNumber = rs.getString("phoneNumber");
                String email = rs.getString("email");
                String classRoom = rs.getString("roomName");

                students.add(new Student(id, name, dateOfBirth, address, phoneNumber, email, classRoom));

            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return students;
    }

    @Override
    public boolean deleteStudent(int id) throws SQLException {
        boolean rowDelete;
        try (Connection connection = Connect_MySQL.getConnect();
             PreparedStatement statement = connection.prepareStatement(DELETE_STUDENTS_SQL)) {
            statement.setInt(1, id);
            rowDelete = statement.executeUpdate() > 0;
        }
        return rowDelete;
    }

    @Override
    public boolean updateStudent(Student student) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = Connect_MySQL.getConnect(); PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_STUDENTS_SQL)) {

            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, String.valueOf(student.getDateOfBirth()));
            preparedStatement.setString(3, student.getAddress());
            preparedStatement.setString(4, student.getPhoneNumber());
            preparedStatement.setString(5, student.getEmail());
            preparedStatement.setString(6, student.getClassroom());
            preparedStatement.setInt(7, student.getId());

            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace();
                System.out.println("SQLState:" + ((SQLException) e).getSQLState());
                System.out.println("Error Code:" + ((SQLException) e).getSQLState());
                System.out.println("Message:" + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause:" + t);
                    t = t.getCause();
                }
            }
        }
    }

    public ArrayList selectAllClassroom() throws SQLException {
        ArrayList classrooms = new ArrayList<>();

        try (Connection connection = Connect_MySQL.getConnect();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CLASSROOM)) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String classRoom = rs.getString("roomName");

                classrooms.add(classRoom);

            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return classrooms;
    }

    public List<Student> selectStudentByName(String name) throws SQLException {
        List<Student> students = new ArrayList<>();
        try (Connection connection = Connect_MySQL.getConnect()) {
            try (PreparedStatement preparedStatement = connection.prepareStatement(SELECT_STUDENT_BY_NAME);) {
                preparedStatement.setString(1, name);

                ResultSet rs = preparedStatement.executeQuery();

                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name1 = rs.getString("name");
                    LocalDate dateOfBirth = LocalDate.parse(rs.getString("dateOfBirth"));
                    String address = rs.getString("address");
                    String phoneNumber = rs.getString("phoneNumber");
                    String email = rs.getString("email");
                    String classRoom = rs.getString("roomName");

                    students.add(new Student(id, name1, dateOfBirth, address, phoneNumber, email, classRoom));

                }
            } catch (SQLException e) {
                printSQLException(e);
            }
            return students;
        }
    }
}


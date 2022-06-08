package service;

import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static java.sql.DriverManager.getConnection;

public class ProductServiceImpl implements ProductService{
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo2006?useSSl=false", "root", "Dinhhoc8");
        } catch (SQLException e) {

            e.printStackTrace();
        } catch (ClassNotFoundException e) {

            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public void add(Product product) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("insert into product(id,name,price,quantity) values (?,?,?,?)");) {
            preparedStatement.setInt(1, product.getId());
            preparedStatement.setString(2, product.getName());
            preparedStatement.setInt(3, product.getPrice());
            preparedStatement.setInt(4, product.getQuantity());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
        }
    }

    @Override
    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();

        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement("select*from product");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                int price = rs.getInt("price");
                int quantity = rs.getInt("quantity");
                products.add(new Product(id, name,price, quantity));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return products;
    }

    @Override
    public List<Product> findByName(String findName) {
        List<Product> products = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select *from product where name like ?");
            preparedStatement.setString(1, "%" +findName+ "%");
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name1 = rs.getString("name");
                int price = rs.getInt("price");
                int quantity = rs.getInt("quantity");

                products.add(new Product(id, name1,price, quantity));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    private void printSQLException(SQLException e) {
    }

    @Override
    public List findByPrice(int price) {
        return null;
    }
}

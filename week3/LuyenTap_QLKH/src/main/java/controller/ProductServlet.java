package controller;

import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/product")
public class ProductServlet extends HttpServlet {
    public static List<Product> products = new ArrayList<>();
    @Override
    public void init() throws ServletException {
        products.add(new Product(1, 300, "Mèo Anh","meoAnh.jpg"));
        products.add(new Product(2,100, "Mèo Mướp","meoMuop"));
        products.add(new Product(3,200, "Mèo Nga", "meoNga"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        int price = Integer.parseInt(req.getParameter("price"));
        String name = req.getParameter("name");
        String img = req.getParameter("img");
        products.add(new Product(id,price,name,img));

        req.setAttribute("products", products);
        RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
        dispatcher.forward(req,resp);
    }
}

package controller;

import model.Product;
import service.ProductService;
import service.ProductServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet1", value = "/products")
public class ProductServlet1 extends HttpServlet {
    ProductService productService = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String act = request.getParameter("act");
        if (act == null) {
            act = "";
        }
        switch (act) {
            default:
                showList(request,response);
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = productService.findAll();
        String findName =request.getParameter("findName");
        if (findName!=null) {
            products = productService.findByName(findName);
        }
        request.setAttribute("pro", products);
        request.getRequestDispatcher("product/list.jsp").forward(request,response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

package hcmuaf.edu.fit.webqlnhahang.controller.Product;

import hcmuaf.edu.fit.webqlnhahang.dao.ProductDao;
import hcmuaf.edu.fit.webqlnhahang.entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/foodDetail")
public class FoodDetailServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        System.out.println(id);
        ProductDao productDao = new ProductDao();
        Product product = productDao.getProductById(Integer.parseInt(id));

        req.setAttribute("foodDetail", product);
        req.getRequestDispatcher("food-detail.jsp").forward(req, resp);
    }
}

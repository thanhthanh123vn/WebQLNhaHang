package hcmuaf.edu.fit.webqlnhahang.controller.cartProduct;

import com.google.gson.Gson;

import hcmuaf.edu.fit.webqlnhahang.entity.Cart;
import hcmuaf.edu.fit.webqlnhahang.entity.CartItem;
import hcmuaf.edu.fit.webqlnhahang.entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/AddCart")
public class AddCartProduct extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AddCartProduct() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader reader = request.getReader();
        Gson gson = new Gson();
        HttpSession session = request.getSession();

        // Lấy đối tượng cart từ session hoặc tạo mới nếu chưa có
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }

        Product product = gson.fromJson(reader, Product.class);
        System.out.println(product.getQuantity()+"Số lượng sản phâm trong cart");
        if (product != null) {
            cart.addItem(CartItem.fromProduct(product,product.getQuantity()));
            session.setAttribute("cart", cart);

            System.out.println("Thêm giỏ hàng thành công");

            // Thiết lập phản hồi JSON
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"message\":\"Thêm giỏ hàng thành công\"}");
        } else {
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"error\":\"Lỗi khi thêm vào giỏ hàng\"}");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}

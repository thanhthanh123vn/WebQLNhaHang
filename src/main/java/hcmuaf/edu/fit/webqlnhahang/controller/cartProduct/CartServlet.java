package hcmuaf.edu.fit.webqlnhahang.servlet;

import hcmuaf.edu.fit.webqlnhahang.entity.Cart;
import hcmuaf.edu.fit.webqlnhahang.entity.CartItem;
import hcmuaf.edu.fit.webqlnhahang.entity.Product;
import hcmuaf.edu.fit.webqlnhahang.service.ProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/cart/*")
public class CartServlet extends HttpServlet {
    private final ProductService productService;

    public CartServlet() {
        this.productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getPathInfo();
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");

        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        if (action == null) {
            response.sendRedirect(request.getContextPath() + "/cart-product.jsp");
            return;
        }

        switch (action) {
            case "/add":
                addToCart(request, response, cart);
                break;
            case "/update":
                updateCart(request, response, cart);
                break;
            case "/remove":
                removeFromCart(request, response, cart);
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/cart-product.jsp");
        }
    }

    private void addToCart(HttpServletRequest request, HttpServletResponse response, Cart cart)
            throws IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product product = productService.getProductById(productId);
        if (product != null) {
            CartItem cartItem = new CartItem(product, quantity);
            cart.addItem(cartItem);
        }

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        out.print("{\"success\": true, \"totalItems\": " + cart.getTotalProductCart() + "}");
    }

    private void updateCart(HttpServletRequest request, HttpServletResponse response, Cart cart)
            throws IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        cart.updateQuantity(productId, quantity);

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
//        5.1.1.2 Trả về thông báo cập nhập số lượng sản phẩm thành công và hiển thị lên
        out.print("{\"success\": true, \"totalItems\": " + cart.getTotalProductCart() +
                ", \"totalPrice\": " + cart.getTotalCart() + "}");
    }

    private void removeFromCart(HttpServletRequest request, HttpServletResponse response, Cart cart)
            throws IOException {
        int productId = Integer.parseInt(request.getParameter("id"));

        cart.removeItem(productId);

        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        // 5.1.1.2 Trả về thông báo cập nhập số lượng sản phẩm thành công và hiển thị lên
        out.print("{\"success\": true, \"totalItems\": " + cart.getTotalProductCart() +
                ", \"totalPrice\": " + cart.getTotalCart() + "}");
    }
}
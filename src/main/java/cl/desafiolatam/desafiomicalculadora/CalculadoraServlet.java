package cl.desafiolatam.desafiomicalculadora;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculadoraServlet")
public class CalculadoraServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String numero1 = request.getParameter("numero1");
        String numero2 = request.getParameter("numero2");
        String operacion = request.getParameter("operacion");

        if (!isNumeric(numero1) || !isNumeric(numero2)) {
            response.sendRedirect("error.jsp");
            return;
        }

        int num1 = Integer.parseInt(numero1);
        int num2 = Integer.parseInt(numero2);
        String resultado = "";

        switch (operacion) {
            case "suma":
                resultado = "Resultado: " + (num1 + num2);
                break;
            case "resta":
                resultado = "Resultado: " + (num1 - num2);
                break;
            case "multiplicacion":
                resultado = "Resultado: " + (num1 * num2);
                break;
            case "division":
                if (num2 != 0) {
                    resultado = "Resultado: " + (num1 / num2);
                } else {
                    resultado = "Error: División por cero";
                }
                break;
            case "ordenar":
                if (num1 > num2) {
                    resultado = "Orden: " + num2 + ", " + num1;
                } else {
                    resultado = "Orden: " + num1 + ", " + num2;
                }
                break;
            case "parImpar":
                resultado = "Número " + num1 + " es " + (num1 % 2 == 0 ? "par" : "impar") + " y número " + num2 + " es " + (num2 % 2 == 0 ? "par" : "impar");
                break;
            default:
                resultado = "Operación no válida";
                break;
        }

        request.setAttribute("resultado", resultado);
        request.getRequestDispatcher("resultado.jsp").forward(request, response);
    }

    private boolean isNumeric(String str) {
        if (str == null) {
            return false;
        }
        try {
            Integer.parseInt(str);
        } catch (NumberFormatException e) {
            return false;
        }
        return true;
    }
}
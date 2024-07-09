<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setAttribute("titulo", "Calculadora"); %>
<!DOCTYPE html>
<html lang="es">
<jsp:include page="header.jsp" />
<body class="bg-dark text-white px-5 py-5">
<div class="container">
    <br>
    <h1 class="text-center">Calculadora</h1>
    <br>
    <form action="CalculadoraServlet" method="post" class="row g-3">
        <div class="col-md-4 col-sm-12">
            <input type="text" class="form-control bg-dark text-white" name="numero1" placeholder="Ingrese el primer número" required>
        </div>
        <div class="col-md-4 col-sm-12">
            <select class="form-select bg-dark text-white" name="operacion" required>
                <option value="">Seleccione una operación</option>
                <option value="suma">Suma</option>
                <option value="resta">Resta</option>
                <option value="multiplicacion">Multiplicación</option>
                <option value="division">División</option>
                <option value="ordenar">Ordenar</option>
                <option value="parImpar">Par o Impar</option>
            </select>
        </div>
        <div class="col-md-4 col-sm-12">
            <input type="text" class="form-control bg-dark text-white" name="numero2" placeholder="Ingrese el segundo número" required>
        </div>
        <div class="col-12">
            <button type="submit" class="btn btn-primary w-100">Calcular</button>
        </div>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
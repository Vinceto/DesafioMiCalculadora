<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setAttribute("titulo", "Error"); %>
<!DOCTYPE html>
<html lang="es">
<jsp:include page="header.jsp" />
<body class="bg-dark text-white">
<div class="container">
    <h1 class="text-center">Error</h1>
    <p class="text-center">Hubo un error con los datos ingresados. Por favor, ingrese números válidos.</p>
    <div class="col-12 text-center">
        <a href="index.jsp" class="btn btn-primary w-100">Volver</a>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
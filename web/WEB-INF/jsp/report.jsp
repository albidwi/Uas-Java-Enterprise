<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Registrasi Dosen</title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    </head>
    <body>        
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}">Sistem Apotik</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/">Dokter</a></li>
                        <li><a href="${pageContext.request.contextPath}/pasien">Pasien</a></li>
                        <li><a href="${pageContext.request.contextPath}/obat">Obat</a></li>
                        <li><a href="${pageContext.request.contextPath}/resep">Resep</a></li>
                        <li><a href="${pageContext.request.contextPath}/report">Report</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>Kode Resep</th>
                        <th>Kode Dokter</th>
                        <th>Kode Pasien</th>
                        <th>Jenis penyakitt</th>
                        <th>Tanggal Resep</th>
                        <th>Kode obat</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${reseps}" var="resep">
                        <tr>
                            ${resep.index}
                            <td>${resep.kdResep}</td>
                            <td>${resep.dokter.kdDokter}</td>
                            <td>${resep.pasien.kdPasien}</td>
                            <td>${resep.jp}</td>
                            <td>${resep.tglresep}</td>
                            <td>${resep.obat.kdObat}</td>
                            <td><a href="${pageContext.request.contextPath}/edit-resep/${resep.index}">Edit</a> 
                                <a href="${pageContext.request.contextPath}/delete-resep/${resep.index}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

                </fieldset>
            </form>
        </div>
        <!-- End of Container -->
        
        

        <footer class="footer">
            <div class="container">
                <p class="text-muted">JavaEE - UBL 2016</p>
            </div>
        </footer>
    </body>
</html>

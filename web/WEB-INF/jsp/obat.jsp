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

        <!-- Container -->
        <div class="container" style="padding-top: 60px;">
            <form class="form-horizontal" id="form1" method="POST" action="${pageContext.request.contextPath}/simpan-obat">
                <fieldset>

                    <legend>Dosen</legend>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Kode Obat</label>  
                        <div class="col-md-4">
                            <input id="nama" name="kdObat" placeholder="Kode Obat" class="form-control input-md" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Nama Obat</label>  
                        <div class="col-md-4">
                            <input id="nama" name="nmObat" placeholder="Nama Obat" class="form-control input-md" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Jenis Obat</label>  
                        <div class="col-md-4">
                            <select name="jenisobat" class="form-control input-md">
                                               <option value="kapsul">Kapsul</option>
                    <option value="cair">Cair</option>
                    <option value="tablet">Tablet</option>
                </select>
                        </div>
                    </div>

                   <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">tanggal Kadaluarsa</label>  
                        <div class="col-md-4">
                            <input id="nama" name="tglkadaluarsa" placeholder="yyyy-mm-dd" class="form-control input-md" type="text">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Harga Obat</label>  
                        <div class="col-md-4">
                            <input id="nama" name="harga" placeholder="Harga Obat" class="form-control input-md" type="text">
                        </div>
                    </div>
                    
            

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="singlebutton"></label>
                        <div class="col-md-4">
                            <button id="simpan" type="submit" name="simpan" class="btn btn-primary">Simpan</button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
        <!-- End of Container -->
        
        <div class="container">
            <table class="table table-hover table-striped">
                <thead>
                    <tr>
                        <th>Kode Obat</th>
                        <th>Nama Obat</th>
                        <th>Jenis Obat</th>
                        <th>Tanggal Kadaluarsa</th>
                        <th>Harga</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${obats}" var="obat">
                        <tr>
                            <td>${obat.kdObat}</td>
                            <td>${obat.nmObat}</td>
                            <td>${obat.jenisobat}</td>
                            <td>${obat.tglkadaluarsa}</td>
                            <td>${obat.harga}</td>
                            <td><a href="${pageContext.request.contextPath}/edit-obat/${obat.kdObat}">Edit</a> 
                                <a href="${pageContext.request.contextPath}/delete-obat/${obat.kdObat}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <footer class="footer">
            <div class="container">
                <p class="text-muted">JavaEE - UBL 2016</p>
            </div>
        </footer>
    </body>
</html>

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
                        <li><a href="${pageContext.request.contextPath}/print">Report</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Container -->
        <div class="container" style="padding-top: 60px;">
            <form class="form-horizontal" id="form1" method="POST" action="${pageContext.request.contextPath}/simpan-dokter">
                <fieldset>

                    <legend>Dosen</legend>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Kode Dokter</label>  
                        <div class="col-md-4">
                            <input id="nama" name="kdDokter" placeholder="Kode Pasien" class="form-control input-md" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Nama Dokter</label>  
                        <div class="col-md-4">
                            <input id="nama" name="nmDokter" placeholder="Nama Dokter" class="form-control input-md" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Jenis Kelamin</label>  
                        <div class="col-md-4">
                            <select name="jeniskelamin" class="form-control input-md">
                    <option value="Laki-Laki">Laki-Laki</option>
                    <option value="Perempuan">Perempuan</option>
                </select>
                        </div>
                    </div>

                   <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Specialist</label>  
                        <div class="col-md-4">
                            <input id="nama" name="specialist" placeholder="Specialist" class="form-control input-md" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Alamat</label>  
                        <div class="col-md-4">
                            <textarea name="alamat" placeholder="Alamat" class="form-control input-md" ></textarea>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">No Telepon</label>  
                        <div class="col-md-4">
                            <input id="nama" name="tlp" placeholder="No telepon" class="form-control input-md" type="text">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Password</label>  
                        <div class="col-md-4">
                            <input id="nama" name="password" placeholder="Password" class="form-control input-md" type="text">
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
                        <th>Kode Dokter</th>
                        <th>Nama Dokter</th>
                        <th>Jenis Kelamin</th>
                        <th>Specialist</th>
                        <th>Alamat</th>
                        <th>Telephone</th>
                        <th>Password</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${dokters}" var="dokter">
                        <tr>
                            <td>${dokter.kdDokter}</td>
                            <td>${dokter.nmDokter}</td>
                            <td>${dokter.jeniskelamin}</td>
                            <td>${dokter.specialist}</td>
                            <td>${dokter.alamat}</td>
                            <td>${dokter.tlp}</td>
                            <td>${dokter.password}</td>
                            <td><a href="${pageContext.request.contextPath}/edit-dokter/${dokter.kdDokter}">Edit</a> 
                                <a href="${pageContext.request.contextPath}/delete-dokter/${dokter.kdDokter}">Delete</a>
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

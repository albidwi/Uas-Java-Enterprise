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
      

        <!-- Container -->
        <div class="container" style="padding-top: 60px;">
            <form class="form-horizontal" id="form1" method="POST" action="${pageContext.request.contextPath}/edit-pasien">
                <fieldset>

                    <legend>Dosen</legend>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Kode Pasien</label>  
                        <div class="col-md-4">
                            <input id="nama" name="kdPasien" placeholder="Kode Pasien" class="form-control input-md" type="text" value="${pasien.kdPasien}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Nama Pasien</label>  
                        <div class="col-md-4">
                            <input id="nama" name="nmPasien" placeholder="Nama Pasien" class="form-control input-md" type="text" value="${pasien.nmPasien}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Jenis Kelamin</label>  
                        <div class="col-md-4">
                            <select name="jeniskelamin" class="form-control input-md">
                      <c:if test="${pasien.jeniskelamin == 'Laki-Laki'}">
            <option value="Laki-Laki" selected>Laki-Laki</option>
            <option value="Perempuan">Perempuan</option>
                    </c:if>
                    <c:if test="${pasien.jeniskelamin == 'Perempuan'}">
            <option value="Laki-Laki" >Laki-Laki</option>
            <option value="Perempuan" selected>Perempuan</option>
                    </c:if>
                </select>
                        </div>
                    </div>

                   <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Umur Pasien</label>  
                        <div class="col-md-4">
                            <input id="nama" name="up" placeholder="Specialist" class="form-control input-md" type="text" value="${pasien.up}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Alamat</label>  
                        <div class="col-md-4">
                            <textarea name="alamat" placeholder="Alamat" class="form-control input-md" >${pasien.alamat}</textarea>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">No Telepon</label>  
                        <div class="col-md-4">
                            <input id="nama" name="tlp" placeholder="No telepon" class="form-control input-md" type="text" value="${pasien.tlp}">
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
     

        <footer class="footer">
            <div class="container">
                <p class="text-muted">JavaEE - UBL 2016</p>
            </div>
        </footer>
    </body>
</html>

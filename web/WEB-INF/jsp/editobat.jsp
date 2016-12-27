<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Edit Obat</title>

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
                        <li><a href="${pageContext.request.contextPath}/report">Report</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Container -->
        <div class="container" style="padding-top: 60px;">
            <form class="form-horizontal" id="form1" method="POST" action="${pageContext.request.contextPath}/edit-obat">
                <fieldset>

                    <legend>Edit Obat</legend>

                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Kode Obat</label>  
                        <div class="col-md-4">
                            <input id="nama" name="kdObat" placeholder="Kode Obat" class="form-control input-md" type="text" value="${obat.kdObat}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Nama Obat</label>  
                        <div class="col-md-4">
                            <input id="nama" name="nmObat" placeholder="Nama Obat" class="form-control input-md" type="text" value="${obat.nmObat}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Jenis Obat</label>  
                        <div class="col-md-4">
                            <select name="jenisobat" class="form-control input-md">
                 <c:if test="${obat.jenisobat == 'kapsul'}">
                                             <option value="kapsul" selected>Kapsul</option>
                                            <option value="cair">Cair</option>
                                            <option value="tablet">Tablet</option>
                    </c:if>
                                <c:if test="${obat.jenisobat == 'cair'}">
                                             <option value="kapsul" >Kapsul</option>
                                            <option value="cair" selected>Cair</option>
                                            <option value="tablet">Tablet</option>
                    </c:if>
                                                                 <c:if test="${obat.jenisobat == 'tablet'}">
                                             <option value="kapsul" >Kapsul</option>
                                            <option value="cair">Cair</option>
                                            <option value="tablet" selected>Tablet</option>
                    </c:if>
                </select>
                        </div>
                    </div>

                   <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">tanggal Kadaluarsa</label>  
                        <div class="col-md-4">
                            <input id="nama" name="tglkadaluarsa" placeholder="yyyy-mm-dd" class="form-control input-md" type="text" value="${obat.tglkadaluarsa}">
                        </div>
                    </div>
                 
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="textinput">Harga Obat</label>  
                        <div class="col-md-4">
                            <input id="nama" name="harga" placeholder="Harga Obat" class="form-control input-md" type="text" value="${obat.harga}">
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-alpha.6.css" type="text/css">
    <link rel="stylesheet" href="../css/app.css" type="text/css">
    <!-- =============== VENDOR STYLES ===============-->
    <!-- FONT AWESOME-->
    <link rel="stylesheet" href="../WEB-INF/vendor/fontawesome/css/font-awesome.min.css">
    <!-- SIMPLE LINE ICONS-->
    <link rel="stylesheet" href="../WEB-INF/vendor/simple-line-icons/css/simple-line-icons.css">
    <!-- ANIMATE.CSS-->
    <link rel="stylesheet" href="../WEB-INF/vendor/animate.css/animate.min.css">
    <!-- WHIRL (spinners)-->
    <link rel="stylesheet" href="../WEB-INF/vendor/whirl/dist/whirl.css">
    <!-- =============== PAGE VENDOR STYLES ===============-->
    <!-- =============== BOOTSTRAP STYLES ===============-->
    <!-- <link rel="stylesheet" href="styles/bootstrap.css" id="bscss"> -->
    <!-- =============== APP STYLES ===============-->
    <link rel="stylesheet" href="../css/app.css" id="maincss"> </head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light bg-faded navbar-toggleable-sm">
    <div class="container">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler navbar-toggler-right float-right hidden-md-up" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">☰</button>
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Features</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Pricing</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">About</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<%--navbar--%>

<h3 style="margin: 0 auto">Login</h3>

<form action="<c:url value="/pages/stuff.controller" />" method="get" >
    <table style="margin: 0 auto">
        <tr>
            <td>ID : </td>
            <td><input type="text" name="username" value="${param.username}"></td>
            <td>${errors.xxx}</td>
        </tr>
        <tr>
            <td>PWD : </td>
            <td><input type="text" name="password" value="${param.password}"></td>
            <td>${errors.ooo}</td>
        </tr>
        <tr>
            <td>　</td>
            <td align="right"><input type="submit" value="Login"></td>
        </tr>
    </table>
</form>


<div class="content-wrapper">
    <div class="content-heading">物資編號 #000123</div>
    <form class="panel">
        <div role="tabpanel">
            <ul class="nav nav-tabs nav-justified">
                <li role="presentation" class="active nav-item active">
                    <a href="#edit" aria-controls="edit" role="tab" data-toggle="tab" aria-expanded="true" class="nav-link"><em class="fa fa-pencil" aria-hidden="true"></em> 編輯物資資訊</a>
                </li>
                <li role="presentation" class="nav-item">
                    <a href="#seo" aria-controls="seo" role="tab" data-toggle="tab" aria-expanded="false" class="nav-link"><em class="fa fa-tags" aria-hidden="true"></em> 分類標籤</a>
                </li>
                <li role="presentation" class="nav-item">
                    <a href="#picture" aria-controls="picture" role="tab" data-toggle="tab" aria-expanded="false" class="nav-link"><em class="fa fa-camera-retro" aria-hidden="true"></em> 照片編輯</a>
                </li>
            </ul>
            <div class="tab-content">
                <div id="edit" role="tabpanel" class="tab-pane active">
                    <fieldset>
                    <div class="card-block">
                        <div class="form-group">
                        <input type="text" name="article-title" placeholder="物資名稱[title]..." class="mb-lg form-control form-control-lg">
                        <!-- Wysiswyg tooblbar-->
                        <div data-role="editor-toolbar" data-target="#editor" class="btn-toolbar btn-editor">
                            <div class="btn-group dropdown">
                                <a data-toggle="dropdown" title="Font" class="btn btn-secondary"> <em class="fa fa-font"></em><b class="caret"></b> </a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-item">
                                        <a href="" data-edit="fontName Arial" style="font-family: 'Arial';">Arial</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="" data-edit="fontName Sans" style="font-family: 'Sans';">Sans</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="" data-edit="fontName Serif" style="font-family: 'Serif';">Serif</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="btn-group dropdown">
                                <a data-toggle="dropdown" title="Font Size" class="btn btn-secondary"> <em class="fa fa-text-height"></em>&nbsp;<b class="caret"></b> </a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-item">
                                        <a href="" data-edit="fontSize 5" style="font-size: 24px;">Huge</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="" data-edit="fontSize 3" style="font-size: 18px;">Normal</a>
                                    </li>
                                    <li class="dropdown-item">
                                        <a href="" data-edit="fontSize 1" style="font-size: 14px;">Small</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="btn-group">
                                <a data-edit="bold" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Bold (Ctrl/Cmd+B)"> <em class="fa fa-bold"></em> </a>
                                <a data-edit="italic" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Italic (Ctrl/Cmd+I)"> <em class="fa fa-italic"></em> </a>
                                <a data-edit="strikethrough" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Strikethrough"> <em class="fa fa-strikethrough"></em> </a>
                                <a data-edit="underline" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Underline (Ctrl/Cmd+U)"> <em class="fa fa-underline"></em> </a>
                            </div>
                            <div class="btn-group">
                                <a data-edit="insertunorderedlist" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Bullet list"> <em class="fa fa-list-ul"></em> </a>
                                <a data-edit="insertorderedlist" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Number list"> <em class="fa fa-list-ol"></em> </a>
                                <a data-edit="outdent" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Reduce indent (Shift+Tab)"> <em class="fa fa-dedent"></em> </a>
                                <a data-edit="indent" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Indent (Tab)"> <em class="fa fa-indent"></em> </a>
                            </div>
                            <div class="btn-group">
                                <a data-edit="justifyleft" data-toggle="tooltip" title="" class="btn btn-secondary btn-info" data-original-title="Align Left (Ctrl/Cmd+L)"> <em class="fa fa-align-left"></em> </a>
                                <a data-edit="justifycenter" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Center (Ctrl/Cmd+E)"> <em class="fa fa-align-center"></em> </a>
                                <a data-edit="justifyright" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Align Right (Ctrl/Cmd+R)"> <em class="fa fa-align-right"></em> </a>
                                <a data-edit="justifyfull" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Justify (Ctrl/Cmd+J)"> <em class="fa fa-align-justify"></em> </a>
                            </div>
                            <div class="btn-group dropdown">
                                <a data-toggle="dropdown" title="Hyperlink" class="btn btn-secondary"> <em class="fa fa-link"></em> </a>
                                <div class="dropdown-menu">
                                    <div class="input-group ml-xs mr-xs">
                                        <input id="LinkInput" placeholder="URL" type="text" data-edit="createLink" class="form-control form-control-sm">
                                        <div class="input-group-btn">
                                            <button type="button" class="btn btn-sm btn-secondary">Add</button>
                                        </div>
                                    </div>
                                </div>
                                <a data-toggle="tooltip" title="" class="btn btn-secondary" data-edit="unlink" data-original-title="移除照片 Hyperlink"> <em class="fa fa-cut"></em> </a>
                            </div>
                            <div class="btn-group">
                                <a id="pictureBtn" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Insert picture (or just drag &amp; drop)"> <em class="fa fa-picture-o"></em> </a>
                                <input type="file" data-edit="insertImage" style="position: absolute; opacity: 0; width: 41px; height: 34px;"> </div>
                            <div class="btn-group float-right">
                                <a data-edit="undo" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Undo (Ctrl/Cmd+Z)"> <em class="fa fa-undo"></em> </a>
                                <a data-edit="redo" data-toggle="tooltip" title="" class="btn btn-secondary" data-original-title="Redo (Ctrl/Cmd+Y)"> <em class="fa fa-repeat"></em> </a>
                            </div>
                        </div>
                        <!-- Wysiswyg Editor-->
                        <div style="overflow: scroll; height: 250px; max-height: 250px;" class="form-control wysiwyg mt-lg" contenteditable="true"></div>
                        <br>
                        <p>地區名稱[Area_name]</p> <textarea cols="6" class="mb-lg form-control"></textarea>
                        <div class="clearfix">
                            <div class="float-left">
                                <button type="button" class="btn btn-secondary m-r-10 m-t-10"> <em class="fa fa-edit fa-fw"></em>草稿</button>
                                <button type="button" class="btn btn-主要照片 m-t-10"> <em class="fa fa-check fa-fw"></em>儲存</button>
                            </div>
                            <div class="float-right">
                            </div>
                        </div>
                    </div>
                    </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group"> <label class="col-lg-2 form-control-label">最大供應量[max_exchange_count]:<br></label>
                            <div class="col-lg-10">
                                <input type="number" placeholder="0" min="0" class="form-control"> </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group"> <label class="col-lg-2 form-control-label">庫存量[inventory_amount]:<br></label>
                            <div class="col-lg-10">
                                <input type="number" placeholder="0" min="0" class="form-control"> </div>
                        </div>

                    </fieldset>
                    <fieldset>
                        <div class="form-group"> <label class="col-lg-2 form-control-label">交易狀態[publish_status]:</label>
                            <div class="col-lg-10"> <select class="form-control">
                                <option value="">選擇..</option>
                                <option value="0">公開</option>
                                <option value="1">未決定</option>
                            </select> </div>
                        </div>
                    </fieldset>
                </div>
                <div id="seo" role="tabpanel" class="tab-pane">
                    <fieldset>
                        <div class="form-group"> <label class="col-lg-2 form-control-label">Title</label>
                            <div class="col-lg-10">
                                <input type="text" placeholder="照片簡介.." class="form-control"> </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group"> <label class="col-lg-2 form-control-label">Description</label>
                            <div class="col-lg-10"> <textarea rows="5" placeholder="Max 255 characters..." class="form-control"></textarea> </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="form-group"> <label class="col-lg-2 form-control-label">Keywords</label>
                            <div class="col-lg-10"> <textarea rows="5" placeholder="Max 1000 characters..." class="form-control"></textarea> </div>
                        </div>
                    </fieldset>
                </div>
                <div id="picture" role="tabpanel" class="tab-pane">
                    <div class="row mb-lg">
                        <div class="col-3"> <strong>預覽</strong> </div>
                        <div class="col-9"> <strong>細節</strong> </div>
                    </div>
                    <div class="row mb-lg pb-lg bb">
                        <div class="col-6 col-md-3">
                            <a href="#" title="Product 1">
                                <img src="https://unsplash.it/400/405/?random" alt="Product 1" class="img-fluid"> </a>
                        </div>
                        <div class="col-6 col-md-9">
                            <fieldset>
                                <div class="form-group">
                                    <input type="text" placeholder="照片簡介.." class="form-control"> </div>
                            </fieldset>
                            <p> <strong>照片型態</strong> </p>
                            <div class="radio c-radio c-form-check-nofont"> <label>
                                <input type="radio" name="prod1-pic" value="option1" checked=""> <span></span>主要照片</label> </div>
                            <div class="radio c-radio c-form-check-nofont"> <label>
                                <input type="radio" name="prod1-pic" value="option2"> <span></span>次要照片</label> </div>
                            <div class="radio c-radio c-form-check-nofont"> <label>
                                <input type="radio" name="prod1-pic" value="option3"> <span></span>預覽照片</label> </div>
                            <div class="text-right">
                                <button type="button" class="btn btn-sm btn-danger"> <em class="fa fa-times-circle fa-fw"></em>移除照片</button>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-lg pb-lg bb">
                        <div class="col-6 col-md-3">
                            <a href="#" title="Product 2">
                                <img src="https://unsplash.it/400/406/?random" alt="Product 1" class="img-fluid"> </a>
                        </div>
                        <div class="col-6 col-md-9">
                            <fieldset>
                                <div class="form-group">
                                    <input type="text" placeholder="照片簡介.." class="form-control"> </div>
                            </fieldset>
                            <p> <strong>照片型態</strong> </p>
                            <div class="radio c-radio c-form-check-nofont"> <label>
                                <input type="radio" name="prod2-pic" value="option1" checked=""> <span></span>主要照片</label> </div>
                            <div class="radio c-radio c-form-check-nofont"> <label>
                                <input type="radio" name="prod2-pic" value="option2"> <span></span>次要照片</label> </div>
                            <div class="radio c-radio c-form-check-nofont"> <label>
                                <input type="radio" name="prod2-pic" value="option3"> <span></span>預覽照片</label> </div>
                            <div class="text-right">
                                <button type="button" class="btn btn-sm btn-danger"> <em class="fa fa-times-circle fa-fw"></em>移除照片</button>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-lg pb-lg">
                        <div class="col-6 col-md-3">
                            <a href="#" title="Product 3">
                                <img src="https://unsplash.it/400/408/?random" alt="Product 1" class="img-fluid"> </a>
                        </div>
                        <div class="col-6 col-md-9">
                            <fieldset>
                                <div class="form-group">
                                    <input type="text" placeholder="照片簡介.." class="form-control"> </div>
                            </fieldset>
                            <p> <strong>照片型態</strong> </p>
                            <div class="radio c-radio c-form-check-nofont"> <label>
                                <input type="radio" name="prod3-pic" value="option1" checked=""> <span></span>主要照片</label> </div>
                            <div class="radio c-radio c-form-check-nofont"> <label>
                                <input type="radio" name="prod3-pic" value="option2"> <span></span>次要照片</label> </div>
                            <div class="radio c-radio c-form-check-nofont"> <label>
                                <input type="radio" name="prod3-pic" value="option3"> <span></span>預覽照片</label> </div>
                            <div class="text-right">
                                <button type="button" class="btn btn-sm btn-danger"> <em class="fa fa-times-circle fa-fw"></em>移除照片</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <div class="text-right mt-lg">
        <button type="button" class="btn btn-warning">取消</button>
        <button type="button" class="btn btn-success">儲存</button>
    </div>
</div>
<!-- Page footer-->
<footer> <span>© 2017 - PetsFriends</span> </footer>
<!-- =============== VENDOR SCRIPTS ===============-->
<!-- MODERNIZR-->
<script src="../WEB-INF/vendor/modernizr/modernizr.custom.js"></script>
<!-- MATCHMEDIA POLYFILL-->
<script src="../WEB-INF/vendor/matchMedia/matchMedia.js"></script>
<!-- JQUERY-->
<script src="../WEB-INF/vendor/jquery/dist/jquery.js"></script>
<!-- BOOTSTRAP-->
<script src="../WEB-INF/vendor/bootstrap/dist/js/bootstrap.js"></script>
<!-- STORAGE API-->
<script src="../WEB-INF/vendor/jQuery-Storage-API/jquery.storageapi.js"></script>
<!-- JQUERY EASING-->
<script src="../WEB-INF/vendor/jquery.easing/js/jquery.easing.js"></script>
<!-- ANIMO-->
<script src="../WEB-INF/vendor/animo.js/animo.js"></script>
<!-- SLIMSCROLL-->
<script src="../WEB-INF/vendor/slimScroll/jquery.slimscroll.min.js"></script>
<!-- SCREENFULL-->
<script src="../WEB-INF/vendor/screenfull/dist/screenfull.js"></script>
<!-- LOCALIZE-->
<script src="../WEB-INF/vendor/jquery-localize-i18n/dist/jquery.localize.js"></script>
<!-- RTL demo-->
<script src="../js/demo/demo-rtl.js"></script>
<!-- =============== PAGE VENDOR SCRIPTS ===============-->
<!-- =============== APP SCRIPTS ===============-->
<script src="../js/app.js"></script>

</body>
</html>





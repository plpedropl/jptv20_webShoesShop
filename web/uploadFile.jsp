
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="album py-5 bg-dark">
    <div class="container d-flex justify-content-center">
        <div class="card shadow-sm m-1"  style="width: 35rem;">
            <div class="card-body bg-primary">
                <h2 class="card-header">Загрузка файлов на сервер</h2>
                <form action="uploadFile" method="POST"  enctype="multipart/form-data" >
                    <div class="form-group">
                        <label class="form-label mt-4">Название файла</label>
                        <input type="text" class="form-control" id="description" name="description">
                    </div>
                    <div class="form-group">
                        <label class="form-label mt-4">Выберите файл</label>
                        <input type="file" class="form-control" id="file" name="file">
                    </div>
                    <input class="btn btn-success mt-5" type="submit" value="Загрузить файл">
                </form>
            </div>
        </div>
    </div>
</div>
<div class="album py-5 bg-dark">
    <div class="container d-flex justify-content-center">
        <c:forEach var="pic" items="${pictures}">
            <div class="card shadow-sm m-1"  style="width: 10rem;">
                <img src="insertFile/${pic.pathToFile}" style="height: 12rem;">
                <div class="card-body">
                    <p class="text-info">${pic.description}</p>
                    <a href="deletePicture?pictureId=${pic.id}">Удалить</a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
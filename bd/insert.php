<?php
require_once('conect.php');
require_once('../api/api.php');

// Si la noticia no tiene una imagen, se pone un por defecto
$noImage = "https://3.bp.blogspot.com/-3_xUllAtoSU/VGkZhvhGL2I/AAAAAAABNII/rXZAXLozSR8/s1600/noticias.png";
foreach ($getTitulares['articles'] as  $titulares) {
    $title = $titulares['title'];
    $description = $titulares['description'];
    $content = $titulares['content'];
    $date = $titulares['publishedAt'];
    $image =  $titulares['urlToImage'];

    if ($image == null) {
        $image = $noImage;
    }

    $insertDataApi = $pdo->prepare("INSERT INTO noticia(title, description, content, date, image)
    VALUES(:title, :description, :content, :date, :image)");

    $insertDataApi->bindParam(':title', $title);
    $insertDataApi->bindParam(':description', $description);
    $insertDataApi->bindParam(':content', $content);
    $insertDataApi->bindParam(':date', $date);
    $insertDataApi->bindParam(':image', $image);

    if ($insertDataApi->execute()) {
        echo "Datos insertados";
    } else {
        'Error, no se insertaron los datos';
    }
}

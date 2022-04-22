<div class="row row-cols-1 row-cols-md-3 g-4">

    <?php
    require_once('../bd/conect.php');

    //    consulta a la tabla noticia
    $sql = 'SELECT * FROM noticia';
    $setence = $pdo->prepare($sql);
    $setence->execute();

    $result = $setence->fetchAll();


    // Numero de noticia por pagina
    $articles_page = 10;

    // contar articulos
    $totalArticles =  $setence->rowCount();
    $pages = $totalArticles / $articles_page;
    $pages = ceil($pages);



    // Si no recibe la variable por get se redireccionara a la pagina 1
    if (!$_GET) {
        header('Location:../titulares/index.php?pages=1');
    }

    // Si alteran la variable get redireccionara a la pagina 1
    if ($_GET['pages'] >= $pages || $_GET['pages'] <= 0) {
        header('Location:../titulares/index.php?pages=1');
    }
    $star = ($_GET['pages'] - 1) * $articles_page;


    // Consultamos los campos de la tabla noticia con un limite
    $sql_articles = 'SELECT * FROM noticia LIMIT :star,:nArticles';
    $setence_articles = $pdo->prepare($sql_articles);
    $setence_articles->bindParam(':star', $star, PDO::PARAM_INT);
    $setence_articles->bindParam(':nArticles', $articles_page, PDO::PARAM_INT);
    $setence_articles->execute();
    $result_articles = $setence_articles->fetchAll();

    foreach ($result_articles  as $article) :
        $content = $article['content'];
        $title = $article['title'];
        $image = $article['image'];
    ?>
        <div class="col">
            <div class="card h-100">
                <img src=<?php echo $article['image'] ?? print_r($noImage) ?> class="card-img-top" style="width: 100%;
height: 200px;">
                <div class="card-body">
                    <h5 class="card-title"><?php echo $article['title'] ?? ""; ?></h5>
                    <p class="card-text"><?php echo $article['description'] ??  ""; ?></p>
                </div>
                <div class="container p-4 text-center d-grid gap-2">
                    <a href="titulares.php?content=<?php echo $content ?? '' ?>&title=<?php echo $title ?? ''; ?>
            &image=<?php echo $image ?? print_r($noImage) ?>" class="btn btn-primary">Ver más...</a>
                </div>
                <div class="card-footer">
                    <small class="text-muted"><?php echo 'Publicado el: ' . $article['date'] ?? ""; ?></small>
                </div>
            </div>
        </div>

    <?php
    endforeach;
    ?>
</div>
<br>



<!-- Paginacion con bootstrap -->
<div class="container">
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <li class="page-item">
                <a class="page-link <?php echo $_GET['pages'] <= 1 ? 'disabled' : '' ?>" href="../titulares/index.php?pages=<?php echo $_GET['pages'] - 1 ?>">Anterior</a>
            </li>
            <?php for ($i = 0; $i <= $pages; $i++) : ?>
                <li class="page-item <?php echo $_GET['pages'] == $i + 1 ? 'active' : '' ?>">
                    <a class="page-link" href="../titulares/index.php?pages=<?php echo $i + 1 ?>">
                        <?php echo $i + 1 ?>
                    </a>
                </li>
            <?php endfor ?>
            </li>
            <a class="page-link <?php echo $_GET['pages'] >= $pages ? 'disabled' : '' ?>" href="../titulares/index.php?pages=<?php echo $_GET['pages'] + 1 ?>">Siguiente</a>

        </ul>
    </nav>
</div>
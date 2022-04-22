<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../assets/css/style.css">
    <title>Document</title>
</head>

<body>
    <?php
    require_once('../api/usersRandom.php');
    if (isset($_GET['content']) && isset($_GET['title']) && isset($_GET['image'])) {
        $title = $_GET['title'];
        $image = $_GET['image'];
        $content = $_GET['content'];


    ?>

        <div class="container p-2"> <a href="index.php" class="btn btn-primary btn-lg">Regresar</a>
        </div>

        <div class="container p-4">

            <div class="card">
                <div class="card-body">
                    <img src=<?php echo $image ?? '' ?> class="card-img-top" alt="...">
                    <h1 class="card-title">Titulo: <?php echo $title ?? '' ?></h1>
                    <p class="card-text"><?php echo $content ?? '' ?></p>
                </div>
            </div>
        </div>

        <?php require_once('../api/usersRandom.php');
        foreach ($getUsers['results'] as $user) {
            $nameUser = $user['name']['first'];
            $lastNameUser = $user['name']['last'];
            $natUser = $user['nat'];

        ?>
            <div class="card mb-3">
                <div class="card-body">
                    <h5 class="card-title">Autor: <?php echo "$nameUser " . " $lastNameUser" ?></h5>
                    <p class="card-text">Nacionalidad: <?php echo $natUser?></p>
                </div>
            </div>
    <?php }
    } ?>
    <!-- footer -->
    <?php require_once('../layouts/footer.php') ?>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>
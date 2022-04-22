<?php

// get titulares de negocios
$getTitulares = json_decode(
    file_get_contents(
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=f2fceb89a3214910a8eb52dc7b501546"
    ),
    true
);
// Si hay un error, mandara este mensaje
if (!$getTitulares) return "Error, no se pudieron leer los datos";

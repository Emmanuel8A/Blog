<?php

// get users random
$getUsers = json_decode(file_get_contents('https://randomuser.me/api/?results=1&inc=name,gender,nat&noinfo'), true);

if (!$getUsers) return 'Error, no se leyeron los datos de usuarios';


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ejemplo de paginacion</title>
</head>

<body>

    <?php

    require "conexion.php";

    $numElementos = 5;

    // Recogemos el parametro pag, en caso de que no exista, lo seteamos a 1
    if (isset($_GET['pag'])) {
        $pagina = $_GET['pag'];
    } else {
        $pagina = 1;
    }

    // (($pagina - 1) * $numElementos) me indica desde donde debemos empezar a mostrar registros
    $sql = "SELECT * FROM personas LIMIT " . (($pagina - 1) * $numElementos)  . "," . $numElementos;

    // Ejecutamos la consulta
    $resultado = mysqli_query($conexion, $sql);

    // Contamos el número total de registros
    $sql = "SELECT count(*) as num_personas FROM personas";

    // Ejecutamos la consulta
    $resultadoMaximo = mysqli_query($conexion, $sql);

    // Recojo el numero de registros de forma rápida
    $maximoElementos = mysqli_fetch_assoc($resultadoMaximo)['num_personas'];

    ?>


    <table>
        <tr>
            <th>DNI</th>
            <th>Nombre</th>
            <th>Edad</th>
        </tr>

        <?php


        while ($fila = mysqli_fetch_assoc($resultado)) {
            echo "<tr>";
            echo "<td>" . $fila['DNI'] . "</td>";
            echo "<td>" . $fila['nombre'] . "</td>";
            echo "<td>" . $fila['edad'] . "</td>";
            echo "</tr>";
        }

        ?>

    </table>

    <div>
        <?php
        // Si existe el parametro pag
        if (isset($_GET['pag'])) {
            // Si pag es mayor que 1, ponemos un enlace al anterior
            if ($_GET['pag'] > 1) {
                ?>
                <a href="index.php?pag=<?php echo $_GET['pag'] - 1; ?>"><button>Anterior</button></a>
            <?php
                    // Sino deshabilito el botón
                } else {
                    ?>
                <a href="#"><button disabled>Anterior</button></a>
            <?php
                }
                ?>

        <?php
        } else {
            // Sino deshabilito el botón
            ?>
            <a href="#"><button disabled>Anterior</button></a>
            <?php
        }

            

        // Si existe la paginacion 
        if (isset($_GET['pag'])) {
            // Si el numero de registros actual es superior al maximo
            if ((($pagina) * $numElementos) < $maximoElementos) {
                ?>
            <a href="index.php?pag=<?php echo $_GET['pag'] + 1; ?>"><button>Siguiente</button></a>
        <?php
                // Sino deshabilito el botón
            } else {
                ?>
            <a href="#"><button disabled>Siguiente</button></a>
        <?php
            }

            ?>

        <?php
            // Sino deshabilito el botón
        } else {
            ?>
            <a href="index.php?pag=2"><button>Siguiente</button></a>
        <?php
        }


        ?>


    </div>

</body>

</html>
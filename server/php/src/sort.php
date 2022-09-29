<!DOCTYPE html>
<html>
<head>
<title>2 задание</title>
<link rel="stylesheet" href="style.css" type="text/css"/>
<meta charset="utf-8" />
</head>
<body>
<?php 
function shell_Sort($my_array)
{
    $x = round(count($my_array)/2);
    while($x > 0)
    {
        for($i = $x; $i < count($my_array);$i++){
            $temp = $my_array[$i];
            $j = $i;
            while($j >= $x && $my_array[$j-$x] > $temp)
            {
                $my_array[$j] = $my_array[$j - $x];
                $j -= $x;
            }
            $my_array[$j] = $temp;
        }
        $x = round($x/2.2);
    }
    return $my_array;
}
?>
<?php
$str = "не определено";
$numbers = [];
if(isset($_POST["str"])){
    $str = $_POST["str"];
    $numbers = explode(',', $str);

    echo "Оригинальный массив :\n";
    echo implode(', ',$numbers );
    echo "Сортированный массив\n:";
    echo implode(', ',shell_Sort($numbers)). PHP_EOL;
}
?>
</body>
</html>
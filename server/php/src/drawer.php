<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>1 задание</title>
<script>
    function circle(radius)
        {
        var canvas = document.getElementById('circle');
        var obCanvas = canvas.getContext('2d');

        obCanvas.beginPath();
        obCanvas.arc(150, 75, radius, 0, 2*Math.PI, false);
        obCanvas.fillStyle = 'red';
        obCanvas.fill();
        obCanvas.lineWidth = 1;
        obCanvas.strokeStyle = 'red';
        obCanvas.stroke();
        }
</script>
</head>
<?php
$count = "не определено";
if(isset($_POST["count"])){
    $count = $_POST["count"];
}
?>
<body onLoad="circle(<?echo $count?>)">
<canvas id="circle"></canvas>
</body>
</html>
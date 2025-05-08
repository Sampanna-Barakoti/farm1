<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $date = $_POST['date'];
    $time = $_POST['time'];

    echo "<script>alert('Request has been sent');</script>";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book Appointment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e8f5e9;
            text-align: center;
            padding: 20px;
        }

        h2 {
            color: #2e7d32;
        }

        form {
            background: #c8e6c9;
            padding: 20px;
            border-radius: 8px;
            display: inline-block;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
        }

        label {
            font-weight: bold;
            color: #1b5e20;
        }

        input {
            margin: 10px 0;
            padding: 8px;
            width: 90%;
            border: 1px solid #2e7d32;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #2e7d32;
            color: white;
            font-weight: bold;
            cursor: pointer;
            border: none;
            padding: 10px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #1b5e20;
        }
    </style>
</head>

<body>
    <h2>Book an Appointment</h2>
    <form method="post" action="">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br><br>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone"><br><br>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date"><br><br>

        <label for="time">Time:</label>
        <input type="time" id="time" name="time"><br><br>

        <input type="submit" value="Book Appointment">

    </form><br>
    <a href="http://localhost/farm1/farmer/fconsult.php"><button style="background-color:rgb(110, 177, 112);">Back</button></a>
</body>

</html>
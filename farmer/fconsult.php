<?php
// Sample consultant data categorized by job types
$categories = [
    "Veterinarian" => [
        [
            "id" => 1,
            "name" => "Dr. Manish Sharma",
            "address" => "Dhobighat, Lalitpur",
            "phone" => "98473627847",
            "email" => "manish12@gmail.com",
            "background" => "Expert in animal health and welfare with 12 years of experience."
        ]
    ],
    "Soil Tester" => [
        [
            "id" => 2,
            "name" => "Ms. Bibek Bhandari",
            "address" => "Bafal, kathmandu",
            "phone" => "9875252732",
            "email" => "bibek123@gmail.com",
            "background" => "Specialist in soil quality analysis and land fertility management."
        ]
    ],
    "Crop tester" => [
        [
            "id" => 2,
            "name" => "Dr. Amrit Moktan",
            "address" => "Samakushi, kathmandu",
            "phone" => "9838459385",
            "email" => "amrit23@gmail.com",
            "background" => "Specialist in soil quality analysis and land fertility management."
        ]
    ]
];

// Check if details are requested
if (isset($_GET['id'])) {
    foreach ($categories as $category => $consultants) {
        foreach ($consultants as $consultant) {
            if ($consultant['id'] == $_GET['id']) {
                echo "<html><head><style>
                    body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }
                    .container { width: 60%; margin: auto; background: white; padding: 20px; box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); border-radius: 8px; margin-top: 20px; }
                    h1, h2 { color: #333; }
                    .back-btn { display: inline-block; padding: 8px 12px; margin-top: 10px; background: #007BFF; color: white; text-decoration: none; border-radius: 5px; }
                    .back-btn:hover { background:rgb(0, 179, 81); }
                </style></head><body>";
                echo "<div class='container'>";
                echo "<h2>Details of " . htmlspecialchars($consultant['name']) . "</h2>";
                echo "<p><strong>Category:</strong> " . htmlspecialchars($category) . "</p>";
                echo "<p><strong>Address:</strong> " . htmlspecialchars($consultant['address']) . "</p>";
                echo "<p><strong>Phone:</strong> " . htmlspecialchars($consultant['phone']) . "</p>";
                echo "<p><strong>Email:</strong> " . htmlspecialchars($consultant['email']) . "</p>";
                echo "<p><strong>Background:</strong> " . htmlspecialchars($consultant['background']) . "</p>";
                echo "<a class='back-btn' href='?'>Back to List</a>";
                echo "</div></body></html>";
                exit;
            }
        }
    }
    echo "<p>Consultant not found.</p>";
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Consultation Professionals</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 60%;
            margin: auto;
            background: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            margin-top: 20px;
            text-align: center;
        }

        h1,
        h2 {
            color: #333;
        }

        .category {
            margin-bottom: 20px;
        }

        .category-title {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .consultant-list {
            list-style-type: none;
            padding: 0;
        }

        .consultant-item {
            padding: 15px;
            background: #fff;
            margin-bottom: 10px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
        }

        .view-btn {
            display: inline-block;
            padding: 8px 12px;
            margin-top: 10px;
            background: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .view-btn:hover {
            background: rgb(0, 179, 81);
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Consultation Professionals</h1>
        <?php foreach ($categories as $category => $consultants): ?>
            <div class="category">
                <h2 class="category-title"> <?php echo htmlspecialchars($category); ?> </h2>
                <ul class="consultant-list">
                    <?php foreach ($consultants as $consultant): ?>
                        <li class="consultant-item">
                            <strong><?php echo htmlspecialchars($consultant['name']); ?></strong><br>
                            <?php echo htmlspecialchars($consultant['background']); ?><br>
                            <a class="view-btn" href="?id=<?php echo $consultant['id']; ?>">View Details</a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        <?php endforeach; ?>
    </div>
</body>

</html>
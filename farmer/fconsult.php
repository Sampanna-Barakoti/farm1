<?php include("../fheader.php"); ?>

<style>
    .grid-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 20px;
        padding: 20px;
        margin: 50px;

    }

    .grid-item {
        border: 1px solid #ddd;
        padding: 15px;
        border-radius: 10px;
        box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        background: #fff;
        text-align: center;
        background-color: rgb(154, 235, 173);
    }

    .btn {
        display: inline-block;
        margin-top: 10px;
        padding: 8px 15px;
        border-radius: 5px;
        text-decoration: none;
        color: white;
        margin: 10px;
    }

    .book-btn {
        background: #28a745;
    }

    .call-btn {
        background: #007bff;

    }

    .video-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 20px;
        padding: 20px;


    }
</style>

<h2>Consultant List</h2>
<div class="grid-container">
    <?php
    $categories = [
        "Crop Health Doctor" => [
            ["name" => "Dr. Manish Sharma", "address" => "Basundhara, Kathmandu", "phone" => "9836372732", "email" => "manish13@gmail.com", "background" => "Expert in crop health with 12 years of experience."]
        ],
        "Soil Tester" => [
            ["name" => "Rajesh Patel", "address" => "Bhaktapur, Nepal", "phone" => "9825637283", "email" => "rajesh.patel@gmail.com", "background" => "Soil quality expert with 8 years of experience."]
        ]
    ];

    foreach ($categories as $category => $consultants) {
        foreach ($consultants as $consultant) {
            echo "<div class='grid-item'>";
            echo "<h3>{$category}</h3>";
            echo "<p><strong>Name:</strong> {$consultant['name']}</p>";
            echo "<p><strong>Experience:</strong> {$consultant['background']}</p>";
            echo "<p><strong>Job:</strong> {$category}</p>";
            echo "<p><strong>Contact:</strong> {$consultant['phone']}</p>";
            echo "<p><strong>Email:</strong> {$consultant['email']}</p>";
            echo "<a href='fbook.php' class='btn book-btn'>Book Now</a>";
            echo "<a href='https://www.messenger.com/groupcall/ROOM:27029301890046958/?call_id=2252966079&has_video=true&initialize_video=true&is_e2ee_mandated=true&nonce=445akuin306h&referrer_context=zenon_precall&thread_type=15&users_to_ring[0]=100073412345874&use_joining_context=true&peer_id=100073412345874&av=61554799644991&server_info_data=GANsbGEoEG1UYVlLckRkeXhGZ1doeFgW3O%2F2mrjAg2AA' class='btn call-btn'>Call</a>";
            echo "</div>";
        }
    }
    ?>
</div>

<h2>Modern Agriculture Techniques</h2>
<div class="video-container">
    <iframe width="300" height="200" src="https://www.youtube.com/embed/lXUeM2yz4FI" frameborder="0" allowfullscreen></iframe>
    <iframe width="300" height="200" src="https://www.youtube.com/embed/v=3KuCMBtIC9g" frameborder="0" allowfullscreen></iframe>
    <iframe width="300" height="200" src="https://www.youtube.com/embed/v=QPAILHFuhDA" frameborder="0" allowfullscreen></iframe>
</div>

<?php include("../footer.php"); ?>
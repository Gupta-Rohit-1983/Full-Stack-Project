<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sidebar Menu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #333;
            padding-top: 20px;
            position: fixed;
        }

        .sidebar a {
            padding: 15px 20px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
        }

        .sidebar a:hover {
            background-color: #575757;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <a href="add">Add Student</a>
        <a href="#services">Update Student</a>
        <a href="#about">Delete Student</a>
        <a href="#contact">Get Student Info</a>
        <a href="#contact">All Student Info</a>
        
    </div>

    <div class="content">
        <h1>Welcome to My Website</h1>
        <p>This is the main content area.</p>
    </div>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clothing Order Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 5px;
            color: #555;
        }
        input, select, textarea {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }
        input:focus, select:focus, textarea:focus {
            outline: none;
            border-color: #4CAF50;
        }
        .measurement-label {
            font-size: 14px;
            color: #999;
        }
        .button-group {
            display: flex;
            justify-content: space-between;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            width: 30%;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Sonal Designer Bootique</h1>
    <h1>Clothing Order Form</h1>
    <form>
        <label for="item">Select Item:</label>
        <select id="item" name="item">
            <option value="dress">Dress</option>
            <option value="top">Top</option>
            <option value="blouse">Blouse</option>
            <option value="pant">Pant</option>
        </select>

        <label for="name">Name of Customer:</label>
        <input type="text" id="name" name="name" required>

        <label for="phone">Phone Number:</label>
        <input type="tel" id="phone" name="phone" required>

        <label for="schouler">Shoulder (in inches):</label>
        <input type="number" id="schouler" name="schouler" step="0.01">

        <label for="chest">Chest (in inches):</label>
        <input type="number" id="chest" name="chest" step="0.01">

        <label for="burst">Bust (in inches):</label>
        <input type="number" id="burst" name="burst" step="0.01">

        <label for="waist">Waist (in inches):</label>
        <input type="number" id="waist" name="waist" step="0.01">

        <label for="hip">Hip Round (in inches):</label>
        <input type="number" id="hip" name="hip" step="0.01">

        <label for="arm">Arm Round (in inches):</label>
        <input type="number" id="arm" name="arm" step="0.01">

        <label for="sleeves">Sleeves (in inches):</label>
        <input type="number" id="sleeves" name="sleeves" step="0.01">

        <label for="penalty">Penalty Crease (in inches):</label>
        <input type="number" id="penalty" name="penalty" step="0.01">

        <label for="length">Length (in inches):</label>
        <input type="number" id="length" name="length" step="0.01">

        <label for="back-neck">Back Neck (in inches):</label>
        <input type="number" id="back-neck" name="back-neck" step="0.01">

        <label for="front-neck">Front Neck (in inches):</label>
        <input type="number" id="front-neck" name="front-neck" step="0.01">

        <label for="note">Note:</label>
        <textarea id="note" name="note" rows="4"></textarea>

        <label for="delivery-date">Date of Delivery:</label>
        <input type="date" id="delivery-date" name="delivery-date">

        <div class="button-group">
            <button type="button" onclick="addOrder()">Add</button>
            <button type="submit">Submit</button>
            <button type="button" onclick="searchOrder()">Search</button>
        </div>
    </form>
</div>

<script>
    function addOrder() {
        alert("Add Order functionality not yet implemented.");
    }

    function searchOrder() {
        alert("Search Order functionality not yet implemented.");
    }
</script>

</body>
</html>


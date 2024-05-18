<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here(create job jsp)</title>
</head>
<body>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Enter Job Data</title>
<style>
body {
	background-color: #f2f2f2; /* Light gray background */
	font-family: Arial;
}

form {
	background-color: blue;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 1, 0.1);
	max-width: 400px;
	margin: 0 auto;
}

h1 {
	text-align: center;
}

label {
	font-weight: bold;
	display: block;
	margin-bottom: 5px;
}

input[type="text"], select, textarea, input[type="date"], input[type="submit"]
	{
	width: 100%;
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #4CAF50; /* Green */
	color: white;
	border: none;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
<script>
	function validateForm() {
		var title = document.getElementById("title").value;
		var type = document.getElementById("type").value;
		var department = document.getElementById("department").value;
		var country = document.getElementById("country").value;
		var description = document.getElementById("description").value;
		var openingDate = document.getElementById("date").value;

		if (title == "" || type == "" || department == "" || country == ""
				|| description == "" || openingDate == "") {
			alert("Please fill in all required fields.");
			return false;
		}

		var dateRegex = /^\d{4}-\d{2}-\d{2}$/;
		if (!openingDate.match(dateRegex)) {
			alert("Please enter a valid date in the format YYYY-MM-DD.");
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<h1>Enter Job Data</h1>
	<form onsubmit="return validateForm()" align="middle-left">
		<label for="title">Title:</label> <input type="text" id="title"
			name="title" required> <label for="type">Type:</label> <select
			id="type" name="type" required>
			<option value="">Select Type</option>
			<option value="Full-time">Full time</option>
			<option value="Part-time">Part time</option>
			<option value="Internship">Internship</option>
		</select> <label for="department">Department:</label> <select id="department"
			name="department" required>
			<option value="">Select Department</option>
			<option value="IT">IT</option>
			<option value="Marketing">Marketing</option>
			<option value="Finance">Finance</option>
			<option value="HR">HR</option>
		</select> <label for="country">Country:</label> <select id="country"
			name="country" required>
			<option value="">Select Country</option>
			<option value="India">India</option>
			<option value="USA">USA</option>
			<option value="UK">UK</option>
			<option value="Australia">Australia</option>
		</select> <label for="description">Description:</label>
		<textarea id="description" name="description" rows="4" cols="50"
			required></textarea>

		<label for="date">Opening Date:</label> <input type="date" id="date"
			name="date" value="<%=new java.util.Date()%>" required> <input
			type="submit" value="Submit">
	</form>
</body>
</html>

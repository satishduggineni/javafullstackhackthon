<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here(apply job jsp)</title>
</head>
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
<body>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Apply for Jobs</title>
<link rel="stylesheet" href="styles.css">
<!-- Link to your CSS file -->
</head>
<body>
	<h1>Apply for Jobs</h1>
	<form onsubmit="return validateForm()" align="middle-left">
		<label for="first_name">First Name:</label><br> <input
			type="text" id="first_name" name="first_name" required><br>
		<br> <label for="last_name">Last Name:</label><br> <input
			type="text" id="last_name" name="last_name" required><br>
		<br> <label for="email">Email:</label><br> <input
			type="email" id="email" name="email" required><br> <br>
		<label for="phone">Phone:</label><br> <input type="tel"
			id="phone" name="phone" required><br> <br> <label
			for="address">Address:</label><br> <input type="text"
			id="address" name="address" required><br> <br> <label
			for="city">City:</label><br> <input type="text" id="city"
			name="city" required><br> <br> <label for="state">State:</label><br>
		<input type="text" id="state" name="state" required><br>
		<br> <label for="zip">ZIP:</label><br> <input type="number"
			id="zip" name="zip" required><br> <br> <label
			for="country">Country:</label><br> <select id="country"
			name="country" required>
			<option value="">Select Country</option>
			<option value="India">India</option>
			<option value="USA">USA</option>
			<option value="UK">UK</option>
			<option value="Australia">Australia</option>
			<!-- Add options for countries -->
		</select><br> <br> <label for="education_level">Education
			Level:</label><br> <select id="education_level" name="education_level"
			required>
			<option value="">Select Education Level</option>
			<option value="Graduate">Graduate</option>
			<option value="PostGraduate">PostGraduate</option>
			<option value="Doctorate">Doctorate</option>
			<!-- Add options for education levels -->
		</select><br> <br> <label for="education_type">Education
			Type:</label><br> <select id="education_type" name="education_type"
			required>
			<option value="">Select Education Type</option>
			<option value="CSE">CSE</option>
			<option value="ECE">ECE</option>
			<option value="CIVIL">CIVIL</option>
			<option value="FINANCE">FINANCE</option>
			<!-- Add options for education types -->
		</select><br> <br> <label for="resume">Resume:</label><br> <input
			type="file" id="resume" name="resume" required><br> <br>
		<label for="cover_letter">Cover Letter:</label><br>
		<textarea id="cover_letter" name="cover_letter"></textarea>
		<br> <br> <label for="employed">Are you currently
			employed?</label> <input type="checkbox" id="employed" name="employed"><br>
		<br>

		<div id="employment_details" style="display: none;">
			<label for="current_employer">Current Employer:</label><br> <input
				type="text" id="current_employer" name="current_employer"><br>
			<br> <label for="years_experience">Years of Experience:</label><br>
			<input type="number" id="years_experience" name="years_experience"><br>
			<br>
		</div>

		<label for="jobs_apply">Jobs to Apply:</label><br> <select
			id="jobs_apply" name="jobs_apply[]" multiple required>
			<!-- Add options for jobs -->
		</select><br> <br> <input type="submit" value="Submit">
	</form>

	<script>
		function validateForm() {
			// JavaScript validation code goes here
			return true; // Return false if validation fails
		}
	</script>
</body>
</html>
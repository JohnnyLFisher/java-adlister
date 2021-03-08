<%--
  Created by IntelliJ IDEA.
  User: johnny
  Date: 3/8/21
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>pizza-order</title>
</head>
<body>
<h2>Build Your Pizza!</h2>
<form method="POST" action="pizza-order">

	<h4>Crust</h4>
	<section>
		<label for="c1">Thin</label>
		<input type="radio" name="crust" value="thin" id="c1"><br>
		<label for="c2">Original</label>
		<input type="radio" name="crust" value="original" id="c2"><br>
		<label for="c3">Stuffed</label>
		<input type="radio" name="crust" value="stuffed" id="c3"><br>
	</section>
	<hr>

	<h4>Sauce</h4>
	<section>
		<label for="s1">Spicy Marinara</label>
		<input type="radio" name="sauce" value="marinara" id="s1"><br>
		<label for="s2">Garlic Alfredo</label>
		<input type="radio" name="sauce" value="garlic" id="s2"><br>
		<label for="s3">No Sauce</label>
		<input type="radio" name="sauce" value="none" id="s3"><br>
	</section>
	<hr>

	<h4>Size</h4>
	<section>
		<label for="sm">Small</label>
		<input type="radio" name="size" value="small" id="sm"><br>
		<label for="md">Medium</label>
		<input type="radio" name="size" value="medium" id="md"><br>
		<label for="lg">Large</label>
		<input type="radio" name="size" value="large" id="lg"><br>
		<label for="xl">X-Large</label>
		<input type="radio" name="size" value="xLarge" id="xl"><br>
	</section>
	<hr>

	<h4>Toppings</h4>
	<section>
		<label for="t1">Pepperoni</label>
		<input type="checkbox" name="t1" value="pepperoni" id="t1"><br>
		<label for="t2">Italian Sausage</label>
		<input type="checkbox" name="t2" value="sausage" id="t2"><br>
		<label for="t3">Chicken</label>
		<input type="checkbox" name="t3" value="chicken" id="t3"><br>
		<label for="t4">Spinach</label>
		<input type="checkbox" name="t4" value="spinach" id="t4"><br>
		<label for="t5">Mushrooms</label>
		<input type="checkbox" name="t5" value="mushrooms" id="t5"><br>
		<label for="t6">Onions</label>
		<input type="checkbox" name="t6" value="onions" id="t6"><br>
	</section>
	<hr>

	<h4>Delivery Address</h4>
	<section>
		<label for="address">Street Address</label>
		<input type="text" name="address" id="address"><br>
	</section>
	<hr>

	<button type="submit">Submit</button>

</form>

</body>
</html>

<!DOCTYPE html>
<html>
<head>
	<title>MFP - Miðannarverkefni</title>
</head>
<body>
	<style>
	div{
		border: 2px fill;
	    border-radius: 5px;
	    background-color: white;
	    padding: 5px;
	    display: block;
	}
	.wrapper{display: grid;}
	.image{display: grid;grid-template-columns: 1fr 1fr 1fr 1fr 1fr 1fr 1fr 1fr ;}
	}
	h1{
		text-align: center;
	}
	body {
		background-color: white;
		width: 1000px;
		margin-left: 250px;
		text-align: center;
	}
	.box{
		font-family: arial, sans-serif;
   		border-collapse: collapse;
    	width: 100%;
		display: table;
    	border-collapse: separate;
    	border-spacing: 2px;
    	border-color: black;
}
	
	}
</style>
	%for x in data["results"]:
		%if x["company"] == name:
		<div class="box">
            <h3 class="haegri">Fyrirtæki: <a class="as" href="/allt2/{{x['company']}}/{{x['name']}}">{{x["company"]}}</a><p> <p> <a class="asd">Staður: {{x["name"]}}</a></p> </h3>
		</div>
	%end			
</body>
</html>
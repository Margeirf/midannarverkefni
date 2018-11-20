<!DOCTYPE html>
<html>
<head>
	<title>MFP - Miðannarverkefni</title>
</head>
<body>
    <style>
	div{
		border: 2px dotted;
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
    %print(name)
    %print(company)
    %for x in data["results"]:
        %if x["name"] == name:
    <h3><p>Bensin: {{x["bensin95"]}}</p></h3>
    <h3><p>Diesel: {{x["diesel"]}}</p></h3>
    %end
    
    
</body>
</html>
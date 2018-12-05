<!DOCTYPE html>
<html>
<head>
	<title>MFP - Miðannarverkefni</title>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<style>
        *{
            box-sizing: border-box;
        }
    .flexContainer{
    width: 80%;
    margin: 0 auto;
}
	body {
		background-color: white;
		text-align: center;
	}
	.box{
		font-family: arial, sans-serif;
    	width: 25%;
        height: 350px;
		display: flex;
        flex-direction: column;
        border: 1px solid black;
        float: left;
    }
        h3{
            margin: 0;
            padding: 5px;
        }
</style>
    <div class="flexContainer">
	% for x in data["results"]:
		%if x["company"] == name:
		<div class="box">
            <h3 class="haegri">Fyrirtæki: <a class="as" href="/allt2/{{x['company']}}/{{x['name']}}">{{x["company"]}}</a><p> <p> <a class="asd">Staður: {{x["name"]}}</a></p> </h3>
            <h3><p>Bensin: {{x["bensin95"]}}</p></h3>
            <h3><p>Diesel: {{x["diesel"]}}</p></h3>
		</div>
        % end
	% end			
    </div>
    </body>
</html>
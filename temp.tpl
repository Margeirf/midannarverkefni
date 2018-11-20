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
	img{height:55px;width:55px;}
</style>
	<h1>Bensínstöðvar á íslandi</h1>
	<div class="image">
		<img src="/Myndir/AO.png">
		<img src="/Myndir/Costco.png">
		<img src="/Myndir/Dælan.png">
		<img src="/Myndir/N1.png">
		<img src="/Myndir/OB.png">
		<img src="/Myndir/Olís.png">
		<img src="/Myndir/Orkan.png">
		<img src="/Myndir/Orkanx.png">
	</div>
	% listi=[]
	%for i in data['results']:
    	%if i["company"] not in listi:
        	%listi.append(i["company"])
        %end
    % end
	%for x in listi:
    <h3><a href="/allt/{{x}}">{{x}}</a></h3>
    %end
    %for x in data['timestampPriceChanges']:
        %print(x, end=' ')
    <footer>
        <h4>{{x}}</h4>
    </footer>
    
    
</body>
</html>
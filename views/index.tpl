<!DOCTYPE html>
<html lang="en-US">
<head>
   <link href="static/css/style.css" rel="stylesheet" type="text/css" media="all">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>

<input type="text" id="search" placeholder="Type to search">
<table id="table">
   <tr>
      <td>Apple</td>
      <td>Green</td>
   </tr>
   <tr>
      <td>Grapes</td>
      <td>Green</td>
   </tr>
   <tr>
      <td>Orange</td>
      <td>Orange</td>
   </tr>
</table>

<h2>What Can JavaScript Do?</h2>

<p id="demo">JavaScript can hide HTML elements.</p>

<button type="button" onclick="document.getElementById('demo').style.display='none'">Click Me!</button>


<table id="table_format" class="table table-bordered table-striped table-hover table-list-search">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Married
							<select id='filterText' style='display:inline-block' onchange='filterText()'>
								<option disabled selected>Select</option>
								<option value='yes'>Yes</option>
								<option value='no'>No</option>
								<option value='all'>All</option>
							</select>
							</th>
                        </tr>
                    </thead>
                    <tbody  id="myTable">
                        <tr class="content">
                            <td>1</td>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>yes</td>
                        </tr>
                        
                        <tr class="content">
                            <td>3</td>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>no</td>
                        </tr>
                        <tr class="content">
                            <td>1</td>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>yes</td>
                        </tr>
                        <tr class="content">
                            <td>2</td>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>no</td>
                        </tr>
                        <tr class="content">
                            <td>3</td>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>no</td>
                        </tr>
                    </tbody>
                </table>




<script>
function filterText()
	{  
		var rex = new RegExp($('#filterText').val());
		if(rex =="/all/"){clearFilter()}else{
			$('.content').hide();
			$('.content').filter(function() {
			return rex.test($(this).text());
			}).show();
	}
	}
	
function clearFilter()
	{
		$('.filterText').val('');
		$('.content').show();
	}
</script>

</body>
</html>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    	<!-- Inclusão do padrão "head" -->
    	<%@include file="head.jsp" %>
    	
    	<!-- JQUERY https://code.jquery.com/jquery-3.4.1.min.js -->
    	<script src="BIBLIOTECAS\jquery.js"></script>
    	
    	<!-- JChart -->
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/0.2.0/Chart.min.js" type="text/javascript"></script>
    	<script src="https://jscharting.com/JSC15/jscharting.js" type="text/javascript"></script>
		<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    </head>
    
    <body>
    	<!-- Inclusão de Menu -->
        <%@include file="menu.jsp" %>
        
        <!-- Conteúdo Principal -->
        <main class="mainContent">
        	<form>
        		<fieldset  class="refFieldSet">
        			<legend><code>Satélite - Internet Necessária</code></legend>
        			<p>Dados obtidos via satélite para análise das ações da população
        			 em sua área territorial.</p>
        			
					<br /><br />
					<hr />        			
        			<br /><br />
        			
        			        			<!-- Mapa Múndi -->
        			<center><h3>Mapa Múndi</h3></center>
        			<div id="world" style="width: 640px; height: 350px; margin:auto;">
        			Este script não é suportado pelo navegador ou há falta de internet.
					(Mapa do Múndi destacando os cinco maiores países em área territorial:
						Rússia, Canadá, China, USA e Brasil.
					)
					OBS.: se o gráfico de pizza carregou, não se preocupe, em breve este
					carregará.
        			</div>
        			<script type="text/javascript">
						$('#world').JSC({
						  type: 'map',
						  
						  series: [{
						    map: 'world', // (510.100.000 km² : 149.100.000 km² de terra e 361.000.000 km² de mares)
						    points: [
							    
						    // Rússia (17.098.246 km² -> 11.46%)
						    {
						    	map: 'RU',
					    		color: 'gray'
							},  
						    
						    // Canadá (9.984.670 km² -> 6.69%)
						    {
						    	map: 'CA', //CAN, CA
						    	color: 'red'
						    },
						    
						    
						    // China (9.596.961 km² -> 6.43%)
						    {
						    	map: 'CN',
						    	color: 'gold'
						    },
							
						    // USA (9.371.174 km² -> 6.28%)
						    {
						      map: 'US',
						      color: 'blue'
						    },
						    
						    // Brasil (8.515.767 km² -> 5.71%)
						    {
						    	map: 'BR',
						    	color: 'green'
						    },
						    ]
						  }]
						});	
					</script>	
					
					<br /> <br />
					<hr />
					<br /> <br />
        			
        			<!-- Gráfico Pizza -->
        			<div id="coleta" width="400" height="20">
        			Este script não é suportado pelo navegador ou há falta de internet.
					(Gráfico de pizza demonstrando porcentagem da área territorial dos cinco maiores
					países do mundo:
							Rússia, Canadá, China, USA e Brasil
					)
        			</div>

        			<script>
        			var chart = new CanvasJS.Chart("coleta", {
        				animationEnabled: true,
        				title: {
        					text: "Países com maior área territorial"
        				},
        				
        				data: [{
        					// TIpo de gráfico: pizza
        					type: "pie",
        					
        					// Ângulo de início do desenho: 240 graus
        					startAngle: 240,
        					
        					// Formato da exibição da legenda
        					yValueFormatString: "##0.00\"%\"",
        					
        					// Definição das dimensões trabalhadas
        					indexLabel: "{label} {y}",
        					
        					// Definição dos 'pontos' no gráfico
        					dataPoints: [
        						{y: 11.46, label: "Rússia"},
        						{y: 6.69, label: "Canadá"},
        						{y: 6.43, label: "China"},
        						{y: 6.28, label: "USA"},
        						{y: 5.71, label: "Brasil"},
        						{y: 63.43, label: "Outros"}
        					]
        				}]
        			});
        			chart.render();
				    </script>
        			
        			<br /> <br />
        			<hr />
        			<br /> <br />
        		</fieldset>
        	</form>
        </main>
        
        <!-- Inclusão do Rodapé -->
        <%@include file="footer.jsp" %>
    </body>
</html>
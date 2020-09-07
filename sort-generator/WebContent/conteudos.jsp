<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    	<%@include file="head.jsp" %>>
    </head>
    
    <body>
    	<!-- Inclusão de Menu -->
        <%@include file="menu.jsp" %>
        
        <!-- Conteúdo Principal -->
        <main class="mainContent">
        
        	<form>
        		
        		<fieldset class="refFieldSet">
        			<legend><code>Conteúdos</code></legend>
        			
        			<!-- Tabela de Conteúdos -->
        			<div id="dados">
        				<table>
        					<!-- Cabeçalho -->
        					<tr>
        						<th>Título</th>
        						<th>Tempo de Leitura</th>
        						<th>Data de Postagem</th>
        					</tr>
        					
        					<!-- Conteúdos -->
        					<tr onclick="window.location='bubble-sort.jsp';">
        						<td>Bubble Sort</td>
        						<td>4 mins</td>
        						<td>08-11-2019</td>
        					</tr>
        					
        					<tr onclick="window.location='bucket-sort.jsp';">
        						<td>Bucket Sort</td>
        						<td>7 mins</td>
        						<td>08-11-2019</td>
        					</tr>
        					
        					<tr onclick="window.location='quick-sort.jsp';">
        						<td>Quick Sort</td>
        						<td>6 mins</td>
        						<td>08-11-2019</td>
        					</tr>
        					
        					<tr onclick="window.location='merge-sort.jsp';">
        						<td>Merge Sort</td>
        						<td>3 mins</td>
        						<td>08-11-2019</td>
        					</tr>
        					
        					<tr onclick="window.location='resultados.jsp';">
        						<td>Resultados</td>
        						<td>8 mins</td>
        						<td>08-11-2019</td>
        					</tr>
        				</table>
        			</div>
        		</fieldset>
        	</form>
        
        </main>
        
        <!-- Inclusão do Rodapé -->
        <%@include file="footer.jsp" %>
    </body>
</html>
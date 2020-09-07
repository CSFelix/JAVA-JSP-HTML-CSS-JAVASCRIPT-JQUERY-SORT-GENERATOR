<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<%@include file="head.jsp" %>
	</head>

	<body>
		<%@include file="menu.jsp" %>
		
		<main class="mainContent">
			
			<!-- Links Bibliográficos -->
			<form>

				<fieldset class="refFieldSet">
					<legend><code>Merge Sort</code></legend>
					<p><a href="conteudos.jsp">Conteúdos</a> >> <a href="#">Merge Sort</a></p>
					
					<!-- Conteúdo Explicativo -->
					<br /> <br />
					<p>O algoritmo divide o conjunto de dados em partições menores, ordenando cada uma delas e depois unindo-as novamente no conjunto completo. O vetor será dividido em duas partes iguais, que serão cada uma dividida em duas partes, e assim até ficar um ou dois elementos cuja ordenação é trivial (comparação entre dois elementos).</p>
					<br /> <br />
					<p>Para juntar as partes ordenadas os dois elementos de cada parte são separados e o menor deles é solucionado e retirado da sua parte. Em seguida os menores entre os restantes são comparados e assim se prossegue até juntar as partes. </p>
					
					
					<br /><br />
					<hr />
					<br /><br />
					
					<p>Segue vídeo explicando como que funciona o algoritmo passo-a-passo.
					Todos os direitos são reservados ao 'Geeks for Geeks' e você pode encontrar
					 o vídeo original <a href="https://youtu.be/JSceec-wEyw" target="_blank">neste link.</a></p>
					<br /> <br />
					<center><video width="500" height="500" controls>
					  <source src="VIDEOS\merge-sort.mp4" type="video/mp4">	 
					Este vídeo não é suportador pelo navegador.
					</video></center>
				</fieldset>
			</form>
		</main>
		
		<%@include file="footer.jsp" %>
	</body>
</html>
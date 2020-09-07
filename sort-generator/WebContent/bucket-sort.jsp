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
					<legend><code>Bucket Sort</code></legend>
					<p><a href="conteudos.jsp">Conteúdos</a> >> <a href="#">Bucket Sort</a></p>
					
					<br /> <br />
					<p>Bucket Sort, ou bin sort, é um algoritmo de ordenação que funciona dividindo um vetor em um número finito de recipientes. Cada recipiente é então ordenado individualmente, seja usando um algoritmo de ordenação diferente, ou usando o algoritmo bucket sort recursivamente.</p>
					<br /> <br />
					<p>O Bucket Sort funciona do seguinte modo:</p>
					
					<br /> <br />
					<ul>
						<li>Inicialize um vetor de “Baldes”, inicialmente vazios;</li>
						<li>Vá para o vetor original, incluindo cada elemento em um balde;</li>
						<li>Ordene todos os baldes não vazios;</li>
						<li>Coloque os elementos dos baldes que não estão vazios no vetor original.</li>
					</ul>
					
					<br /> <br />
					<p>A estrutura Bucket consiste de um vetor de inteiros de uma variável que serve para dizer quantos números estão armazenados no balde.</p>
					<br /> <br />
					<p>Inicialize o topo de cada bucket que o vetor de bucket contém (isso é importante, pois, a princípio os baldes estão vazios).</p>
					<br /> <br />
					<p>Verifica em que balde o elemento deve ficar e ordena cada balde, ordena os baldes cujos topos sejam diferentes de 0, ou seja, não estão vazios.</p>
					<br /> <br />
					<p>Por fim os baldes são percorridos e seus elementos devolvidos para o vetor original.</p>
					
					<br /><br />
					<hr />
					<br /><br />
					
					<p>Segue vídeo explicando como que funciona o algoritmo passo-a-passo.
					Todos os direitos são reservados ao 'Geeks for Geeks' e você pode encontrar
					 o vídeo original <a href="https://www.youtube.com/watch?v=VuXbEb5ywrU&feature=youtu.be" target="_blank">neste link.</a></p>
					<br /> <br />
					<center><video width="500" height="500" controls>
					  <source src="VIDEOS\bucket-sort.mp4" type="video/mp4">	 
					Este vídeo não é suportador pelo navegador.
					</video></center>
				</fieldset>
			</form>
		</main>
		
		<%@include file="footer.jsp" %>
	</body>
</html>
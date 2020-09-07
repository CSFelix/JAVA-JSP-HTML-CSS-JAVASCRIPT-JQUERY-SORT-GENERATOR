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
					<legend><code>Bubble Sort</code></legend>
					<p><a href="conteudos.jsp">Conteúdos</a> >> <a href="#">Bubble Sort</a></p>
					
					<!-- Conteúdo Explicativo -->
					<br /> <br />
					<p>    O Bubble Sort, ou ordenação por flutuação (literalmente “por bolha”), é um algoritmo de ordenação dos mais simples. A ideia é percorrer o vetor diversas vezes, e a cada passagem fazer flutuar para o topo o maior elemento da sequência. O nome do algoritmo se dá por causa de seu funcionamento pois a movimentação que ele faz, lembra a forma como as bolhas em um tanque de água procuram seu próprio nível.</p>
					<br /> <br />
					<p>    Por ser um algoritmo com complexidade de ordem quadrática, O Bubble Sort percorre o vetor várias vezes e consequentemente ele não é recomendado para programas que precisem de velocidade e operem com quantidade elevada de dados.</p>
					<br /> <br />
					<p>    Uma forma de trabalhar com o algoritmo Blubble Sort é comparando os elementos adjacentes (dois a dois), por exemplo: compara-se a primeira posição do vetor com a segunda, na segunda repetição, compara-se a segunda posição do vetor com a terceira, e assim sucessivamente. Com o algoritmo podemos ordenar o vetor de ordem crescente ou decrescente.</p>
					<br /> <br />
					<p>    Como exemplo, vamos ordenar um vetor em ordem crescente composto pelos elementos {8, 9, 3, 5, 1}.</p>
					<br /> <br />
					<p>    O algoritmo inicia comparando a primeira posição do vetor, que tem o elemento 8, com a segunda posição do vetor, que tem o elemento 9. Como o elemento 8 é menor que o elemento 9, não há troca de posição.</p>
					<br /> <br />
					<p>    Na próxima iteração, compara-se a segunda posição do vetor, que tem o elemento 9, comparando-o com a terceira posição do vetor, que tem o elemento 3. Como o elemento 9 é maior que o elemento 3 é feita a troca de posição e reordena-se o vetor.</p>
					<br /> <br />
					<p>    Compara-se a terceira posição do vetor, que agora tem o elemento 9 com a quarta posição do vetor, que tem o elemento 5 {8, 3, 9, 5, 1}.</p>
					<br /> <br />
					<p>    Onde novamente por obedecer o mesmo critério é feita nova troca de posição entre os vetores, após seguir com a ordenação, vamos ter a primeira iteração concluída, ou seja, o método percorreu todos os algarismos e alocou novas posição, assim nosso vetor ficará da seguinte maneira {8, 3, 5, 1, 9}.</p>
					<br /> <br />
					<p>    Como podemos verificar o elemento com maior valor “9” ficou na última posição do vetor, e então esse processo vai se repetir até que o vetor esteja completamente ordenado.</p>
					
					<br /><br />
					<hr />
					<br /><br />
					
					<p>Segue vídeo explicando como que funciona o algoritmo passo-a-passo.
					Todos os direitos são reservados ao 'Geeks for Geeks' e você pode encontrar
					 o vídeo original <a href="https://www.youtube.com/watch?v=nmhjrI-aW5o&feature=youtu.be" target="_blank">neste link.</a></p>
					<br /> <br />
					<center><video width="500" height="500" controls>
					  <source src="VIDEOS\bubble-sort.mp4" type="video/mp4">	 
					Este vídeo não é suportador pelo navegador.
					</video></center>
				</fieldset>
			</form>
		</main>
		
		<%@include file="footer.jsp" %>
	</body>
</html>
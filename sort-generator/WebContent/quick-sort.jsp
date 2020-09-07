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
					<legend><code>Quick Sort</code></legend>
					<p><a href="conteudos.jsp">Conteúdos</a> >> <a href="#">Quick Sort</a></p>
					
					<br /> <br />
					<p>O Quick Sort é um método de ordenação muito rápido e eficiente, inventado por C.A.R. Hoare em 1960, quando visitou a Universidade de Moscovo como estudante. Naquela época, Hoare trabalhou em um projeto de tradução de máquina para o National Physical Laboratory. Ele criou o quicksort ao tentar traduzir um dicionário de inglês para russo, ordenando as palavras. Tendo como objetivo reduzir o problema original em subproblemas que possam ser resolvidos mais fácil e rápido. Foi publicado em 1962 após uma série de refinamentos.</p>
					<br /> <br />
					<p>O Quick Sort é um algoritmo de ordenação por comparação não-estável e provavelmente o mais utilizado.</p>
					<br /> <br />
					<p>É um algoritmo de comparação que emprega a estratégia de “divisão e conquista”. A ideia básica é dividir o problema de ordenar um conjunto com n itens em dois problemas menores. Os problemas menores são ordenados independentemente e os resultados são combinados para produzir a solução final.</p>
					<br /> <br />
					<p>Basicamente a operação do algoritmo pode ser resumida na seguinte estratégia: divide sua lista de entrada em duas sub-listas a partir de um pivô, para em seguida realizar o mesmo procedimento nas duas listas menores até uma lista unitária.</p>
					<br /> <br />
					<p>Funcionamento do algoritmo:</p>
					
					<br /> <br />
					<ul>
						<li>Escolhe um elemento da lista chamado pivô;</li>
						<li>Reorganiza a lista de modo que os elementos menores que o pivô fique de um lado, e os maiores fiquem de outro. Esta operação é chamada de “particionamento”;</li>
						<li>Recursivamente ordena a sub-lista abaixo e acima do pivô.</li>
					</ul>
					
					<br /> <br />
					<p>O caso base da recursão são as listas de tamanho zero ou um, que estão sempre ordenadas. O processo é finito, pois a cada iteração pelo menos um elemento é posto em sua posição final e não será mais manipulado na iteração seguinte.</p>
					<br /> <br />
					<p>A escolha do pivô e os passos do particionamento podem ser feitos de diferentes formas e a escolha de uma implementação específica afeta fortemente a performance do algoritmo.</p>
					<br /> <br />
					<p>A principal desvantagem deste método é que ele possui uma implementação difícil e delicada, um pequeno engano pode gerar efeitos negativamente inesperados para determinadas entradas de dados.</p>
					
					<br /><br />
					<hr />
					<br /><br />
					
					<p>Segue vídeo explicando como que funciona o algoritmo passo-a-passo.
					Todos os direitos são reservados ao 'Geeks for Geeks' e você pode encontrar
					 o vídeo original <a href="https://www.youtube.com/watch?v=PgBzjlCcFvc&feature=youtu.be" target="_blank">neste link.</a></p>
					<br /> <br />
					<center><video width="500" height="500" controls>
					  <source src="VIDEOS\quick-sort.mp4" type="video/mp4">	 
					Este vídeo não é suportador pelo navegador.
					</video></center>
				</fieldset>
			</form>
		</main>
		
		<%@include file="footer.jsp" %>
	</body>
</html>
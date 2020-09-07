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
					<legend>Resultados</legend>
					<p><a href="conteudos.jsp">Conteúdos</a> >> <a href="#">Resultados</a></p>
					
					<br /><br />
					<hr />
					<br /><br />
				
					<h3>Resultados</h3>
					<br /><br />
					<p>Segue as vantagens e desvantagens dos métodos de ordenação utilizados 
					neste projeto. Vale salientar que cada um deles é destinado para uma 
					operação específica, logo, mesmo apresentando algumas desvantagens 
					significativas, suas vantagens podem favorecê-los sobre alguns casos 
					específicos.</p>
				
					<br /><br />
					<hr />
					<br /><br />
				
					<h3>Bubble Sort</h3>
					<br /><br />
					<h4>- Vantagens</h4>
					<br /> <br />
					<ul>
						<li>Não utiliza recursão, logo, economiza espaço de armazenamento 
						da memória RAM;</li>
						<li>Fácil compreensão e implementação (imagine bolhas subindo pelo ar, 
						quanto mais "alto" o dado, maior é o valor dele).</li>
					</ul>
					
					<br /> <br/>
					<h4>- Desvantagens</h4>
					<br /> <br />
					<ul>
						<li>Por utilizar dois laços "for" em seu processamento, seu tempo 
						de ordenação torna-se O(n²) para qualquer caso;</li>
						<li>Como sua assintótica é O(n²), acaba gastando muito tempo de 
						processamento e torna-se inviável em ordenações de grandes conjuntos
						de dados;</li>
						<li>Sua versão com laço "while", 
						<a href="https://www.geeksforgeeks.org/gnome-sort-a-stupid-one/" target="_blank">Gnome Sort</a>,
						possui o mesmo custo de processamento de sua versão orignaç, O(n²). Logo, 
						não faz diferença sobre qual meio utilizar.</li>
					</ul>
					
					<br /> <br />
					<h4>- Considerações</h4>
					<br /> <br />
					<ul>
						<li>Pequenos conjuntos de dados (até 10.000 elementos);</li>
						<li>Listas estáticas (diminuir tempo de procura dos dados na RAM).</li>
					</ul>
					
					<br /><br />
					<hr />
					<br /><br />
					
					<h3>Bucket Sort</h3>
					
					<br /><br />
					<h4>- Vantagens</h4>
					<br /> <br />
					<ul>
						<li>Divide conjunto de dados em pequenos fragmentos (baldes) 
						e ordena-os separadamente;</li>
						<li>Diminuição considerável do custo de processamento quando 
						comparado com Bubble / Gnome Sort: O(2 * n);</li>
						<li>Normalmente, não aplica recursão para partição e ordenação 
						dos dados, contudo, utiliza mais laços "for" (considere isto 
						como uma "faca de dois gumes").</li>
					</ul>
					
					<br /> <br/>
					<h4>- Desvantagens</h4>
					<br /> <br />
					<ul>
						<li>É preciso encontrar o maior valor armazenado dentro do 
						conjunto de dados, portanto, será preciso iplementar uma 
						função de busca que terá seu próprio custo de processamento 
						(Linear Search => O(n), Binary Search => O(log n));</li>
						<li>Difícil implementação para ordenar Strings, pois 
						a busca pelo maior dado armazenado deverá considerar 
						caractere por caractere de cada palavra comparada além 
						do tamanho delas.</li>
					</ul>
					
					<br /> <br />
					<h4>- Considerações</h4>
					<br /> <br />
					<ul>
						<li>Médios e grandes conjuntos de dados (até 1.000.000 elementos);</li>
						<li>Como realizar processo de partição, atua muito bem com listas 
						dinâmicas.</li>
					</ul>
					
					<br /><br />
					<hr />
					<br /><br />
					
					<h3>Quick Sort</h3>
					
					<br /><br />
					<h4>- Vantagens</h4>
					<br /> <br />
					<ul>
						<li>Assim como o Bucket Sort, divide o conjunto de dados em partições, 
						porém, a divisão é realizada até obter todos os elementos separados e 
						ordená-los em pares;</li>
						<li>Processo realizado via recursão a fim de diminuir a quantidade 
						de vezes que o algoritmo percorre um mesmo endereço de memória (
						uma das vantagens "herdadas" das Árvores Binárias);</li>
						<li>Diminuição significante do tempo de processamento para O(
						n logn).</li>
					</ul>
					
					<br /> <br/>
					<h4>- Desvantagens</h4>
					<br /> <br />
					<ul>
						<li>O uso de recursão pode consumir uma quantidade maior de 
						armazenamento da RAM e processamento da CPU.</li>
					</ul>
					
					<br /> <br />
					<h4>- Considerações</h4>
					<br /> <br />
					<ul>
						<li>Enormes conjuntos de dados (1.000.000 ou mais);</li>
						<li>Listas dinâmicas (no caso das listas estáticas, recomenda-se 
						aplicar o método 
						<a href="https://www.geeksforgeeks.org/merge-sort/" target="_blank">Merge Sort</a>);</li>
						<li>Mesmo a recursão sendo um problema geral, os hardwares da nova geração 
						estão suprindo tal desvantagem, principalmente os clusters.</li>
					</ul>
					
					<br /><br />
					<hr />
					<br /><br />
					
					<h3>Merge Sort</h3>
					
					<br /><br />
					<h4>- Vantagens</h4>
					<br /> <br />
					<ul>
						<li>Divide array em duas partições (metade esquerda e metade direita) 
						até não poder mais, depois, ordena cada partição separadamente;</li>
						<li>Partição realizada via recursão;</li>
						<li>Mesmo tempo de processamento do Quick Sort.</li>
					</ul>
					
					<br /> <br/>
					<h4>- Desvantagens</h4>
					<br /> <br />
					<ul>
						<li>O uso de recursão pode consumir uma quantidade maior de 
						armazenamento da RAM e processamento da CPU.</li>
					</ul>
					
					<br /> <br />
					<h4>- Considerações</h4>
					<br /> <br />
					<ul>
						<li>Enormes conjuntos de dados (1.000.000 ou mais);</li>
						<li>Listas estáticas (no caso das listas dinâmicas, recomenda-se 
						aplicar o <a href="https://www.geeksforgeeks.org/quick-sort/" target="_blank">Quick Sort)</a>;</li>
						<li>Mesmo a recursão sendo um problema geral, os hardwares da nova geração 
						estão suprindo tal desvantagem, principalmente os clusters.</li>
					</ul>
				</fieldset>
			</form>
		</main>
		
		<%@include file="footer.jsp" %>
	</body>
</html>
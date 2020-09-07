<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    	<!-- Inclusão do padrão "head" -->
    	<%@include file="head.jsp" %>
    </head>
    
    <body>
    	<!-- Inclusão de Menu -->
        <%@include file="menu.jsp" %>
        
        <!-- Conteúdo Principal -->
        <main class="mainContent">
        	<form>
        		<fieldset  class="refFieldSet">
        			<legend><code>Início</code></legend>
        			<p>WebSite desenvolvido para ordenação de dados em <acronym title="em programação: cadeia de caracteres, mas pode-se considerar como qualquer palavra do idioma (cachorro, arroz, Goku...)">Strings</acronym> 
        			e números inteiros, 
        			utilizando os métodos de ordenação Bubble Sort, Bucket Sort e Quick Sort.</p>
        			<br /><br />
        			<p><a href="satelite.jsp"><b>Satélite:</b></a> gráficos fictícios obtidos 
        			com a biblioteca <acronym title="biblioteca do JavaScript responsável pela criação de gráficos dinâmicos">JSChart</acronym>. 
        			Nele, consta o mapa múndi destacando os cinco maiores 
        			países em área territorial do planeta e a representação deles num gráfico de pizza. 
        			É necessária conexão om internet para o funcionamento da página.</p>
        			<br /> <br />
        			<p><a href="ordenacao-inteiro.jsp"><b>Ordenação de Inteiros</b></a>
        			e <a href="ordenacao-string.jsp"><b>Ordenação String:</b></a> 
        			páginas para ordenação de dados em números inteiros e strings respectivamente. 
        			Os dados podem ser obtidos tanto por importação de arquivos de texto, via input 
        			do usuário e geração de números randômicos.</p>
        			<br /> <br />
        			<p><a href="assintotica.jsp"><b>Assintótica:</b></a> gráfico de análise assintótica 
        			dos três algoritmos de ordenação. Tal foi criado via Python com a biblioteca 
        			<acronym title="biblioteca do Python usada para criação de gráficos estáticos">MatplotLib.</acronym></p>
        			<br /> <br />
        			<p><a href="conteudos.jsp"><b>Conteúdos:</b></a> explicações e vídeos sobre como funciona 
        			cada algoritmo de ordenação e análise sobre as vantagens/desvantagens e considerações 
        			sobre quando utilizar cada algoritmo (
        			<a href="bubble-sort.jsp"><b>Bubble Sort</b></a>, 
        			<a href="bucket-sort.jsp"><b>Bucket Sort</b></a>, 
        			<a href="quick-sort.jsp"><b>Quick Sort</b></a>, 
        			<a href="resultados.jsp"><b>Resultados</b></a>
        			)</p>
        			<br /> <br />
        			<p><a href="referencias.jsp"><b>Referências:</b></a> referências bibliográficas sobre 
        			alguns websites utilizados no estudo teórico e no desenvolvimento deste projeto.</p>
        		</fieldset>
        	</form>
        </main>
    </body>
</html>
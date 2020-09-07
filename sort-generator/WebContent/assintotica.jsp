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
        		<fieldset class="refFieldSet">
        			<legend><code>Assintótica</code></legend>
        			<center><img src="IMAGENS/analise.png" /></center>
        			<kbd>Análise Assintótica consiste em analisar os algoritmos a fim de 
        			definir custos de processamentos para eles. Nela, leva-se em consideração 
        			quantas vezes blocos iterativos (laços for, while, foreach...) são repetidos 
        			e quantas condicionais (if/else, switch) há, sempre considerando o pior caso 
        			(<acronym title="Big O -> pior caso, Big Theta -> caso médio, Big Ômega -> melhor caso">Big O</acronym>), 
        			ou seja, sempre levando em consideração de que os laços iterativos irão executar 
        			até o final sem interrupções e de que todas as condicionais serão verdadeiras.</kbd>
        			<br /> <br />
        			<hr />
        			<br /> <br />        			
        			<p>Para mais informações sobre o assunto, acesse 
        			<a href="https://pt.khanacademy.org/computing/computer-science/algorithms/asymptotic-notation/a/asymptotic-notation" target="_blank">este link</a>.</p>
        		</fieldset>
        		
        	</form>
        	
        </main>
        
        <!-- Inclusão do Rodapé -->
        <%@include file="footer.jsp" %>
    </body>
</html>
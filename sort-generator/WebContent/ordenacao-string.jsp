<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="JAVA/Funcoes.jsp" %>

<%!
    // Objetos
    Funcoes funcoes = new Funcoes();

    // Tempo da Ordenação (milissegundos)
    String tempoBubble = "0";
    String tempoBucket = "";
    String tempoQuick = "0";
    String tempoMerge = "0";
    
    Long tempoInicial;
    Long tempoFinal;
    
    // Arquivos
    String conteudo_arquivo = "";
    
    // Dados
    String retorno = "";

%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Inclusão do padrão "head" -->
        <%@include file="head.jsp" %>
        
        <!-- JQUERY -->
        <script src="BIBLIOTECAS\jquery.js"></script>
        
        
		<script>
		
		// Clique no Botão Ordenar
        $(function() {
            $("#ordenar").click(function() {
                // Zeramento do alerta
                $("#alertaDadosNaoOrdenados").html("");
                
                // Input não preenchido
                if (!$("#dadosNaoOrdenados").val()) {
                    $("#alertaDadosNaoOrdenados").html(
                            "Não há dados para ordenar digitados.");
                }
                
                // Input preenchido
                else {
                    <%
	                    if (request.getParameter("dadosNaoOrdenados") != null) {
	                   		// Bubble Sort
	                        tempoInicial = funcoes.Tempo();
	                        funcoes.OrdenarString(0, request.getParameter("dadosNaoOrdenados"));
	                        tempoFinal = funcoes.Tempo();
	                        tempoBubble = Long.toString(tempoFinal - tempoInicial + 1);
	                        
	                        // Bucket Sort
	                        /*tempoInicial = funcoes.Tempo();
	                        funcoes.OrdenarString(1, request.getParameter("dadosNaoOrdenados"));
	                        tempoFinal = funcoes.Tempo();
	                        tempoBucket = Long.toString(tempoFinal - tempoInicial + 1);*/
	                        
	                        // Quick Sort
	                        tempoInicial = funcoes.Tempo();
	                        funcoes.OrdenarString(2, request.getParameter("dadosNaoOrdenados"));
	                        tempoFinal = funcoes.Tempo();
	                        tempoQuick = Long.toString(tempoFinal - tempoInicial + 1);
	                        
	                        // Merge Sort
	                        tempoInicial = funcoes.Tempo();
	                        retorno = funcoes.OrdenarString(3, request.getParameter("dadosNaoOrdenados"));
	                        tempoFinal = funcoes.Tempo();
	                    	tempoMerge = Long.toString(tempoFinal - tempoInicial + 1);
	                    }
	                    
	                    else { 
	                        retorno = ""; 
	                    }             
                    %>
                }
  
            });
        });
			
			// Validação da Importação de Arquivo
	        $(function() {
	            $("#pImportar").click(function() {
	                // Zeramento do alerta
	                $("#alertaDiretorio").html("");
	                
	                // Input não preenchido
	                if (!$("#diretorio").val()) {
	                    $("#alertaDiretorio").html(
	                            "Diretório do arquivo não informado.");
	                }
	                
	                // Input preenchido GOKU
	                else {
	                	var input = document.getElementById("diretorio");
	                	var fReader = new FileReader();
	                	
	                	fReader.readAsText(input.files[0]);
	                	
	                	fReader.onload = function(event){
	                	    var conteudo = document.getElementById("dadosNaoOrdenados");
	                	    conteudo.value = event.target.result;
	                	}
	                }
	            });
	        });
		
			// Toggle dos Campos de Importação de Arquivos
	        $(function() {
	            $("#pImportarArquivo").click(function() {
	            	$("#labelImportarArquivo").slideToggle(500);
                    $("#diretorio").slideToggle(500);
                    
                    $("#alertaDiretorio").slideToggle(500);
                    $("#pImportar").slideToggle(500);
	            });
	        });
		
	    	// Seleção do tipo de dados
            // *Labels
            // **Inteiro
            $(function() {
                $("#labelInteiro").click(function() {
                    $("#valorTipoDado").val("0");
                });
            });
            
            // **String
            $(function() {
                $("#labelString").click(function() {
                    $("#valorTipoDado").val("1");
                });
            });
            
            // *Radios
            // **Inteiro
            $(function() {
                $("#inteiro").click(function() {
                    $("#valorTipoDado").val("0");
                });
            });
            
            // **String
            $(function() {
                $("#string").click(function() {
                    $("#valorTipoDado").val("1");
                });
            });
	
         // Armazenamento de Dados na Lista de Conjuntos
            $(function() {
                $("#salvarDados").click(function() {
                    var val = $("#dadosOrdenados").val();
                    
                    // Input Preenchido
                    if(val !== '') {
                        var elem = $("<li class='itemLista'></li>").text(val);
                        
                        $(elem).append("<p class='gravar'>V</p>");
                        $(elem).append("<p class='remover'>X</p>");
                        $("#lista").append(elem);
                        $("input").val("");
                        
                        $(".remover").on("click", function() {
                            if (confirm("Deseja excluir este registro?")) { 
                                $(this).parent().remove();
                            }
                        });
                        
                        $(".gravar").on("click", function() {
                            $("#dadosNaoOrdenados").val($(this).parent().text().replace("VX", ""));
                            $(this).parent().remove();
                        });
                    }
                });
            });
		</script>
    </head>
    
    <body>
        <!-- Inclusão de Menu -->
        <%@include file="menu.jsp" %>
        
        <!-- Conteúdo Principal -->
        <main class="mainContent">
        
            <form method="POST" action="ordenacao-string.jsp">
                <fieldset class="refFieldSet">
                    <legend><code>Ordenação - String</code></legend>
             
                    <!-- Importação de Arquivos -->
                    <center><p id="pImportarArquivo" class="botao">Importar Arquivos</p></center>
                    <label id="labelImportarArquivo" for="diretorio">Diretorio</label>
                    <input id="diretorio" name="diretorio" class="formFieldTwo" type="file" accept = "text/plain" multiple />
                    <p class="alerta" id="alertaDiretorio"></p>
                    
                    <br /> <br />
                    <p id="pImportar" class="botao">Ler</p>
                    <br /> <br />
                    <p class="alerta">OBS.: As palavras não devem possuir acentos e nem cê-cedilha (ç). 
                    Enter deve ser ignorado, ou seja, o arquivo não pode conter "Enteres". As palavras 
                    devem ser separadas por espaços. Letras maiúsculas e minúsculas não são diferenciadas.</p>
                    <br /> <br />
                    <hr />
                    <br /> <br />
                  
                    <!-- Dados Não Ordenados -->
                    <center><label for="dadosNaoOrdenados">Ordenação</label></center>
                    <textarea rows="15" cols="50" class="formField" id="dadosNaoOrdenados" name="dadosNaoOrdenados" placeholder="Digite os dados para ordenação separando-os por espaços..." required>
                    <%=conteudo_arquivo%>
                    </textarea>
                    <p class="alerta" id="alertaDadosNaoOrdenados"></p>
                    
                    <!-- Botão de Ordenação -->
                    <center><button id="ordenar" class="botao">Ordenar</button></center>

                    <!-- Dados Ordenados -->
                    <textarea rows="15" cols="50" class="formField" id="dadosOrdenados" name="dadosOrdenados" readonly> 
                    <%=retorno%>
                    </textarea>
                    
                    <!-- Botão para Salvar Dados em Arquivo TXT -->
                    <center><p id="salvarDados" class="botao">Salvar</p></center>
                    
                    <br /> <br />
                    <hr />
                    <br /> <br />
                    
                    <!-- Tempo de Ordenação (milissegundos) -->
                    <center><label class="tempo" for="milissegundos">Tempo (milissegundos)</label></center>
                    
                    <br /> <br />
                    
                    <label>Bubble Sort - <kbd>O(n²)</kbd></label>
                    <input id="milissegundos" name="milissegundos" class="formFieldTwo" type="number" value=<%=tempoBubble%> readonly  />
                    <br />
                    <label>Bucket Sort - <kbd>O(2 * n)</kbd> <span class="alerta"><acronym title="método não disponível para ordenação de Strings">TEMPORARIAMENTE INDISPONÍVEL</acronym></span></label>
                    <input id="milissegundos" name="milissegundos" class="formFieldTwo" type="number" value=<%=tempoBucket%> readonly  />
                    <br />
                    <label>Quick Sort - <kbd>O(n * log(n))</kbd></label>
                    <input id="milissegundos" name="milissegundos" class="formFieldTwo" type="number" value=<%=tempoQuick%> readonly  />
                     <br />
                    <label>Merge Sort - <kbd>O(n * log(n))</kbd></label>
                    <input id="milissegundos" name="milissegundos" class="formFieldTwo" type="number" value=<%=tempoMerge%> readonly  />
                    
                    <br /> <br />
                    <hr />
                    <br /> <br />
                    
                    <!-- Conjunto de Dados -->
                    <label>Conjunto de Dados</label>
                    <br /> <br />
                    <ol id="lista"></ol>
                </fieldset>
            </form>
        
        </main>
        
        <!-- Inclusão do Rodapé -->
        <%@include file="footer.jsp" %>
    </body>
</html>
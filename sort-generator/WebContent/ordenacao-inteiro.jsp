<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="JAVA/Funcoes.jsp" %>

<%!
    // Objetos
    Funcoes funcoes = new Funcoes();

    // Tempo da Ordenação (milissegundos)
    String tempoBubble = "0";
    String tempoBucket = "0";
    String tempoQuick = "0";
    String tempoMerge = "0";
    
    Long tempoInicial;
    Long tempoFinal;
    
    // Dados
    String retorno = "";
    String erro = "";

%>

<!DOCTYPE html>
<html>
    <head>
        <!-- Inclusão do padrão "head" -->
        <%@include file="head.jsp" %>
        
        <!-- JQUERY -->
        <script src="BIBLIOTECAS\jquery.js"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/0.2.0/Chart.min.js" type="text/javascript"></script>
    	<script src="https://jscharting.com/JSC15/jscharting.js" type="text/javascript"></script>
    	
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
	                    	try {
		                   		// Bubble Sort
		                        tempoInicial = funcoes.Tempo();
		                        funcoes.OrdenarInteiro(0, request.getParameter("dadosNaoOrdenados"));
		                        tempoFinal = funcoes.Tempo();
		                        tempoBubble = Long.toString(tempoFinal - tempoInicial + 1);
		                        
		                        // Bucket Sort
		                        tempoInicial = funcoes.Tempo();
		                        funcoes.OrdenarInteiro(1, request.getParameter("dadosNaoOrdenados"));
		                        tempoFinal = funcoes.Tempo();
		                        tempoBucket = Long.toString(tempoFinal - tempoInicial + 1);
		                        
		                        // Quick Sort
		                        tempoInicial = funcoes.Tempo();
		                        funcoes.OrdenarInteiro(2, request.getParameter("dadosNaoOrdenados"));
		                        tempoFinal = funcoes.Tempo();
		                        tempoQuick = Long.toString(tempoFinal - tempoInicial + 1);
		                        
		                        // Merge Sort
		                        tempoInicial = funcoes.Tempo();
		                        retorno = funcoes.OrdenarInteiro(3, request.getParameter("dadosNaoOrdenados"));
		                        tempoFinal = funcoes.Tempo();
		                        tempoMerge = Long.toString(tempoFinal - tempoInicial + 1);
	                    	}
	                    	
	                    	catch (Exception excecao) {
	                    		erro = excecao.toString() + " -- Verifique se há letras, caracteres ou" 
	                    				+ " números decimais nos dados.";
	                    	}
	                    }
	                    
	                    else { 
	                        retorno = ""; 
	                    }             
					%>
                }
  
            });
        });
		
			// Validação da Geração de Dados Aleatórios
	        $(function() {
	            $("#pGerarDadosAleatorios").click(function() {
	                // Zeramento dos alertas
	                $("#alertaQuantidadeDadosAleatorios").html("");
	                $("#alertaValorMinimo").html("");
	                $("#alertaValorMaximo").html("");
	                
	                // Inputs não preenchidos
	                if (!$("#quantidadeDadosAleatorios").val()
	                    || !$("#valorMinimo").val()
	                    || !$("#valorMaximo").val()) {
	                    
	                    // Quantidade de Dados a ser gerados não preenchido
	                    if (!$("#quantidadeDadosAleatorios").val()) {
	                        $("#alertaQuantidadeDadosAleatorios").html(
	                                "Quantidade de dados a serem gerados não preenchido.");
	                    }
	                    
	                    // Valor mínimo não preenchido
	                    if (!$("#valorMinimo").val()) {
	                        $("#alertaValorMinimo").html(
	                        "Limite mínimo não preenchido.");
	                    }
	                    
	                    // Valor máximo não preenchido
	                    if (!$("#valorMaximo").val()) {
	                        $("#alertaValorMaximo").html(
	                        "Limite máximo não preenchido.");
	                    }
	                }
	                
	                // Inputs preenchidos
	                else {
	                    // atributos
	                    var dadosAleatorios = "";
	                    var numero;
	                    
	                    // geração dos dados aleatórios
	                    for (var i = 0; i < $("#quantidadeDadosAleatorios").val(); i++) {
	                        numero = parseInt($("#valorMinimo").val(), 10)   
	                                + Math.floor(Math.random(i) * parseInt($("#valorMaximo").val()));
	                        dadosAleatorios += numero.toString() + " ";
	                    }
	                    
	                    // passagem dos dados no textarea de dados não ordenados
	                    $("#dadosNaoOrdenados").val(dadosAleatorios);
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
	                
	                // Input preenchido
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
		
			// Toggle dos Campos de Gerar Dados Aleatórios
	        $(function() {
	            $("#pDadosAleatorios").click(function() {
	                $(".labelDadosAleatorios").slideToggle(500);
	                
	                $("#quantidadeDadosAleatorios").slideToggle(500);
	                $("#valorMinimo").slideToggle(500);
	                $("#valorMaximo").slideToggle(500);
	                
	                $("#alertaQuantidadeDadosAleatorios").slideToggle(500);
	                $("#alertaValorMinimo").slideToggle(500);
	                $("#alertaValorMaximo").slideToggle(500);
	                
	                $("#pGerarDadosAleatorios").slideToggle(500);
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
        
            <form method="POST" action="ordenacao-inteiro.jsp">
                <fieldset class="refFieldSet">
                    <legend><code>Ordenação - Inteiro</code></legend>
                        
                    <!-- Dados Gerados Aleatoriamente -->
                    <center><p id="pDadosAleatorios" class="botao">Dados Aleatórios?!</p></center>
                    
                    <label class="labelDadosAleatorios" for="quantidadeDadosAleatorios">Quantidade</label>
                    <input id="quantidadeDadosAleatorios" name="quantidadeDadosAleatorios" class="formFieldTwo" type="number"  />
                    <p class="alerta" id="alertaQuantidadeDadosAleatorios"></p>
                    
                    <label class="labelDadosAleatorios" for="valorMinimo">Valor Mínimo</label>
                    <input id="valorMinimo" name="limiteMinimo" class="formFieldTwo" type="number" />
                    <p class="alerta" id="alertaValorMinimo"></p>
                    
                    <label class="labelDadosAleatorios" for="valorMaximo">Valor Máximo</label>
                    <input id="valorMaximo" name="valorMaximo" class="formFieldTwo" type="number" />
                    <p class="alerta" id="alertaValorMaximo"></p>
                    
                    <br /> <br />
                    <p id="pGerarDadosAleatorios" class="botao">Gerar!</p>
                    <br /> <br />
                    <hr />
                    <br /> <br />
                    
                    <!-- Importação de Arquivos -->
                    <center><p id="pImportarArquivo" class="botao">Importar Arquivos</p></center>
                    <label id="labelImportarArquivo" for="diretorio">Diretorio</label>
                    <input id="diretorio" name="diretorio" class="formFieldTwo" type="file" accept = "text/plain"  />
                    <p class="alerta" id="alertaDiretorio"></p>
                    
                    <br /> <br />
                    <p id="pImportar" class="botao">Ler</p>
                    <br /> <br />
                    <p class="alerta">OBS.: Não pode conter letras, caracteres especiais ou comuns e 
                    números decimais no conjunto de dados.</p>
                    
                    <br /> <br />
                    <hr />
                    <br /> <br />
                  
                    <!-- Dados Não Ordenados -->
                    <center><label for="dadosNaoOrdenados">Ordenação</label></center>
                    <textarea rows="15" cols="50" class="formField" id="dadosNaoOrdenados" name="dadosNaoOrdenados" placeholder="Digite os dados para ordenação separando-os por espaços..." required>
                   
                    </textarea>
                    <p class="alerta" id="alertaDadosNaoOrdenados"><%=erro%></p>
                    
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
                    <input id="tempoBubble" name="milissegundos" class="formFieldTwo" type="number" value=<%=tempoBubble%> readonly  />
                    <br />
                    <label>Bucket Sort - <kbd>O(2 * n)</kbd></label>
                    <input id="tempoBucket" name="milissegundos" class="formFieldTwo" type="number" value=<%=tempoBucket%> readonly  />
                    <br />
                    <label>Quick Sort - <kbd>O(n * log(n))</kbd></label>
                    <input id="tempoQuick" name="milissegundos" class="formFieldTwo" type="number" value=<%=tempoQuick%> readonly  />
                    <br />
                    <label>Merge Sort - <kbd>O(n * log(n))</kbd></label>
                    <input id="tempoQuick" name="milissegundos" class="formFieldTwo" type="number" value=<%=tempoMerge%> readonly  />
                    
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
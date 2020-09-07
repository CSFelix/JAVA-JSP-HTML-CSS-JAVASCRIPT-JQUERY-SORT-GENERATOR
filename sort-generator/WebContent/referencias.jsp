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
				<!-- Geeks for Geeks -->
				<fieldset class="refFieldSet">
					<legend><code>Geeks for Geeks</code></legend>
					<br /> <br />
					<label>
						<!-- target="_blank" : abre link em nova guia --> 
						<a target="_blank" href="https://www.geeksforgeeks.org/sorting-algorithms/">
							<span class="refNome">Sorting Algorithms:</span>
							<span class="refLink">https://www.geeksforgeeks.org/sorting-algorithms/</span>
						</a>
					</label>
					<br /> <br /> <br />
					
					<label>
						<!-- target="_blank" : abre link em nova guia --> 
						<a target="_blank" href="https://www.geeksforgeeks.org/bubble-sort/">
							<span class="refNome">Bubble Sort:</span>
							<span class="refLink">https://www.geeksforgeeks.org/bubble-sort/</span>
						</a>
					</label>
					<br /> <br />
					<label>
						<!-- target="_blank" : abre link em nova guia --> 
						<a target="_blank" href="https://www.geeksforgeeks.org/gnome-sort-a-stupid-one/">
							<span class="refNome">Gnome Sort:</span>
							<span class="refLink">https://www.geeksforgeeks.org/gnome-sort-a-stupid-one/</span>
						</a>
					</label>
					<br /> <br /> <br />
					
					<label>
						<!-- target="_blank" : abre link em nova guia --> 
						<a target="_blank" href="https://www.geeksforgeeks.org/bucket-sort-2/">
							<span class="refNome">Bucket Sort:</span>
							<span class="refLink">https://www.geeksforgeeks.org/bucket-sort-2/</span>
						</a>
					</label>
					<br /> <br /> <br />
					
					<label>
						<!-- target="_blank" : abre link em nova guia --> 
						<a target="_blank" href="https://www.geeksforgeeks.org/quick-sort/">
							<span class="refNome">Quick Sort:</span>
							<span class="refLink">https://www.geeksforgeeks.org/quick-sort/</span>
						</a>
					</label>
					<br /> <br />
					<label>
						<!-- target="_blank" : abre link em nova guia --> 
						<a target="_blank" href="https://www.geeksforgeeks.org/merge-sort/">
							<span class="refNome">Merge Sort:</span>
							<span class="refLink">https://www.geeksforgeeks.org/merge-sort/</span>
						</a>
					</label>

					
				</fieldset>
				
				<!-- Khan Academy -->
				<fieldset class="refFieldSet">
					<legend><code>Khan Academy</code></legend>
					<br /> <br />
					<label>
					<a target="_blank" href="https://pt.khanacademy.org/computing/computer-science/algorithms">
						<span class="refNome">Algoritmos:</span> 
						<span class="refLink">https://pt.khanacademy.org/computing/computer-science/algorithms</span>
					</a>
					</label>
					<br /> <br />
					<label>
						<a target="_blank" href="https://pt.khanacademy.org/computing/computer-science/algorithms/asymptotic-notation/a/asymptotic-notation">
						<span class="refNome">Funções Assintóticas:</span> 
						<span class="refLink">https://pt.khanacademy.org/computing/computer-science/algorithms/asymptotic-notation/a/asymptotic-notation</span>
						</a>
					</label>				
				</fieldset>
			</form>
		</main>
		
		<%@include file="footer.jsp" %>
	</body>
</html>
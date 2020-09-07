a<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Calendar" %>

<%!
	public class Funcoes {
		/* Classe contendo funções principais do projeto */
		public String OrdenarInteiro(int metodo, String dados) {
			/* Realiza ordenação dos dados
				metodo : 0 -> bubble sort
						 1 -> bucket sort
						 2 -> quick sort
						 3 -> merge sort
			*/
			// *Atributos
			ArrayList<Integer> listaDados = new ArrayList<Integer>();
			String retorno = "";
						 
			// *Bubble Sort
			if (metodo == 0) {
				// *Atributos
				Bubble bubble = new Bubble();
				String[] conjuntoDados = dados.split(" ");				
					
				// *Processamento
				for (String i : conjuntoDados) {
					if (i.equals("")) { continue; }
					else { listaDados.add(Integer.parseInt(i)); }
				}
					
				bubble.OrdenarInteiro(listaDados);
			}
						 
			// *Bucket Sort
			else if (metodo == 1) {
				Bucket bucket = new Bucket();
				String[] conjuntoDados = dados.split(" ");
				
				// *Processamento
				for (String i : conjuntoDados) {
					if (i.equals("")) { continue; }
					else { listaDados.add(Integer.parseInt(i)); }
				}
					
				bucket.OrdenarInteiro(listaDados);
			}
						 
			// *Quick Sort
			else if (metodo == 2) {
				Quick quick = new Quick();
				String[] conjuntoDados = dados.split(" ");				
				
				// *Processamento
				for (String i : conjuntoDados) {
					if (i.equals("")) { continue; }
					else { listaDados.add(Integer.parseInt(i)); }
				}
					
				quick.OrdenarInteiro(listaDados, 0, listaDados.size() - 1);
			}
			
			// *Merge Sort
			else if (metodo == 3) {
				Merge merge = new Merge();
				String[] conjuntoDados = dados.split(" ");				
				
				// *Processamento
				for (String i : conjuntoDados) {
					if (i.equals("")) { continue; }
					else { listaDados.add(Integer.parseInt(i)); }
				}
					
				merge.OrdenarInteiro(listaDados, 0, listaDados.size() - 1);
			}
			
			// *Conversão de Integer para String
			for (Integer i : listaDados) {
				retorno += Integer.toString(i) + " ";
			}

			
			// *Retorno
			return (retorno);
		}
		
		public String OrdenarString(int metodo, String dados) {
			/* Realiza ordenação dos dados
				metodo : 0 -> bubble sort
						 1 -> Bucket sort
						 2 -> quick sort
						 3 -> merge sort
			*/
			// *Atributos
			String retorno = "";
			ArrayList<String> listaDados = new ArrayList<String>();	
			
			// *Bubble Sort
			if (metodo == 0) {
				
				// *Atributos
				Bubble bubble = new Bubble();
				String[] conjuntoDados = dados.split(" ");				
					
				// *Processamento
				for (String i : conjuntoDados) {
					if (i.equals("")) { continue; }
					else { listaDados.add(i); }
				}
					
				bubble.OrdenarString(listaDados);
			}
						 
			// *Bucket Sort
			else if (metodo == 1) {
				
				// *Atributos
				Bucket bucket = new Bucket();
				String[] conjuntoDados = dados.split(" ");
				
				// *Processamento
				for (String i : conjuntoDados) {
					if (i.equals("")) { continue; }
					else { listaDados.add(i); }
				}
				
				//bucket.OrdenarString(listaDados);
			}
						 
			// *Quick Sort
			else if (metodo == 2) {
				
				// * Atributos
				Quick quick = new Quick();
				String[] conjuntoDados = dados.split(" ");
				
				// * Processamento
				for (String i : conjuntoDados) {
					if (i.equals("")) { continue; }
					else { listaDados.add(i); }
				}
				
				quick.OrdenarString(listaDados, 0, listaDados.size() - 1);
			}
			
			// *Merge Sort
			else if (metodo == 3) {
				// * Atributos
				Merge merge = new Merge();
				String[] conjuntoDados = dados.split(" ");
				
				// * Processamento
				for (String i : conjuntoDados) {
					if (i.equals("")) { continue; }
					else { listaDados.add(i); }
				}
				
				merge.OrdenarString(listaDados, 0, listaDados.size() - 1);
			}
	
			// *Preenchimento de Retorno
			for (String i : listaDados) {
				retorno += i + " ";
			}
			
			return (retorno);
		}
		
		public long Tempo() {
			/* Retorna tempo atual em milissegundos */
			
			// *Atributos
			Calendar data = Calendar.getInstance();
			long milis = data.getTimeInMillis();
	
			// *Retorno
			return (milis);
		}
	}
%>

<%!
	public class Bubble {
		public void OrdenarInteiro(ArrayList<Integer> array) {
			boolean troca;
			int auxiliar;
		
			for (int i = 0; i < array.size() - 1; i++) {
				troca = false;
				
				for (int j = 0; j < array.size() - 1 - i; j++) {
					if (array.get(j) > array.get(j+1)) {
						troca = true;
						auxiliar = array.get(j);
						array.set(j, array.get(j+1));
						array.set(j+1, auxiliar);
					}
				}
			
				if (!troca) {
					break;
				}
			}
		}
		
		public void OrdenarString(ArrayList<String> array) {
			boolean troca;
			String auxiliar;
		
			for (int i = 0; i < array.size() - 1; i++) {
				troca = false;
				
				for (int j = 0; j < array.size() - 1 - i; j++) {
					if (array.get(j).compareToIgnoreCase(array.get(j+1)) > 0) {
						troca = true;
						auxiliar = array.get(j);
						array.set(j, array.get(j+1));
						array.set(j+1, auxiliar);
					}
				}
			
				if (!troca) {
					break;
				}
			}
		}
	}

	public class Quick {
		 /*
		   array : dados a serem ordenados
		   menor : menor dado armazenado
		   maior : maior dado armazenado
		 */
		 private int ParticionarInteiro(ArrayList<Integer> array, int menor, int maior) { 
		        int pivo = array.get(maior);  
		        int i = menor - 1; // posição do menor elemento
		        
		        for (int j = menor; j < maior; j++) { 
		        	
		            // Caso o elemento da posição 'j' for menor do que o 'pivô'
		            // a troca é realizada
		            if (array.get(j) < pivo) { 
		                i++; 
		  
		                // Troca entre os elementos das posições 'i' e 'j' 
		                int auxiliar = array.get(i); 
		                array.set(i, array.get(j)); 
		                array.set(j, auxiliar); 
		            } 
		        } 
		  
		        // Troca entre os elementos das posições 'i+1' e 'maior'
		        int auxiliar = array.get(i+1); 
		        array.set(i+1, array.get(maior)); 
		        array.set(maior, auxiliar); 
		  
		        return i+1; 
		    } 
	
		  /*
		   array : dados a serem ordenados
		   menor : menor dado armazenado
		   maior : maior dado armazenado
		  */
		  public void OrdenarInteiro(ArrayList<Integer> array, int menor, int maior) { 
		        if (menor < maior) { 
		            /* realização das partições recursivas */
		            int particao = ParticionarInteiro(array, menor, maior); 
		  
		            // Recursively sort elements before 
		            // partition and after partition 
		            OrdenarInteiro(array, menor, particao-1); 
		            OrdenarInteiro(array, particao+1, maior); 
		        } 
		  }
		    
		  /*
		   array : dados a serem ordenados
		   menor : menor dado armazenado
		   maior : maior dado armazenado
		 */
		 private int ParticionarString(ArrayList<String> array, int menor, int maior) { 
		       	String pivo = array.get(maior);  
		        int i = menor - 1; // posição do menor elemento
		        
		        for (int j = menor; j < maior; j++) { 
		        	
		            // Caso o elemento da posição 'j' for menor do que o 'pivô'
		            // a troca é realizada
		            if (array.get(j).compareToIgnoreCase(pivo) < 0) { 
		                i++; 
		  
		                // Troca entre os elementos das posições 'i' e 'j' 
		                String auxiliar = array.get(i); 
		                array.set(i, array.get(j)); 
		                array.set(j, auxiliar); 
		            } 
		        } 
		  
		        // Troca entre os elementos das posições 'i+1' e 'maior'
		        String auxiliar = array.get(i+1); 
		        array.set(i+1, array.get(maior)); 
		        array.set(maior, auxiliar); 
		  
		        return i+1; 
		    } 
	
		  /*
		   array : dados a serem ordenados
		   menor : menor dado armazenado
		   maior : maior dado armazenado
		  */
		  public void OrdenarString(ArrayList<String> array, int menor, int maior) { 
		        if (menor < maior) { 
		            /* realização das partições recursivas */
		            int particao = ParticionarString(array, menor, maior); 
		  
		            // Recursively sort elements before 
		            // partition and after partition 
		            OrdenarString(array, menor, particao-1); 
		            OrdenarString(array, particao+1, maior); 
		        } 
		  } 	
	}
	
	public class Bucket {
		/* array : array de dados
		   maior : maior dado armazenado
		*/
		public void OrdenarInteiro(ArrayList<Integer> array) {
			  int maximo = ValorMaximo(array);
		      int [] bucket = new int[maximo+1];
		 
		      for (int i = 0; i < bucket.length; i++) {
		         bucket[i] = 0;
		      }
		 
		      for (int i = 0; i < array.size(); i++) {
		         bucket[array.get(i)]++;
		      }
		 
		      int auxiliar = 0;
		      
		      for (int i = 0; i < bucket.length; i++) {
		         for (int j = 0; j < bucket[i]; j++) {
		             array.set(auxiliar++, i);
		         }
		      }
		}
		
		private int ValorMaximo(ArrayList<Integer> array) {
			
		    int maior = Integer.MIN_VALUE; // recebe menor valor possível para um inteiro
		    for (Integer auxiliar : array) {
		    	if (auxiliar > maior) { maior = auxiliar; }
		    }
		   
		    return maior;
		}
		
	}

	public class Merge {
	    private void ParticionarInteiro(ArrayList<Integer> array, int esquerda, int meio, int direita) { 
	        // Encontra tamanho das duas metades do Array de dados
	        int n1 = meio - esquerda + 1; 
	        int n2 = direita - meio; 
	  
	        // Criação dos arrays temporários para armazenar as duas metades
	        int Esquerda[] = new int [n1]; 
	        int Direita[] = new int [n2]; 
	  
	        // Passsagem de dados para os arrays temporários
	        for (int i = 0; i < n1; ++i) { Esquerda[i] = array.get(esquerda + i); } 
	        for (int j = 0; j < n2; ++j) { Direita[j] = array.get(meio + 1+ j); }	             
	  
	        // Índices que identificam posição dos elementos em cada array temporário
	        // i -> Esquerda, j -> Direita
	        int i = 0, j = 0; 
	  
	        //  Ordenação do array em ordem crescente
	        int k = esquerda; 
	        
	        while (i < n1 && j < n2) { 
	            if (Esquerda[i] <= Direita[j]) { 
	                array.set(k, Esquerda[i]); 
	                i++; 
	            }
	            
	            else { 
	                array.set(k, Direita[j]); 
	                j++; 
	            } 
	            
	            k++; 
	        } 
	  
	        // Verificação se algum elemento ficou para trás
	        // caso ficou, ele é adicionado no final do array
	        while (i < n1) { 
	            array.set(k, Esquerda[i]); 
	            i++; 
	            k++; 
	        } 
	  
	        while (j < n2) { 
	            array.set(k, Direita[j]); 
	            j++; 
	            k++; 
	        } 
	    } 
	   
	    public void OrdenarInteiro(ArrayList<Integer> array, int esquerda, int direita) { 
	        if (esquerda < direita) { 
	            // Encontra posição do meio do array 
	            int meio = (esquerda + direita) / 2; 
	  
	            // Divisão do array até não poder mai= (recursão)
	            OrdenarInteiro(array, esquerda, meio); 
	            OrdenarInteiro(array, meio + 1, direita); 
	  
	            // Ordenação do array
	            ParticionarInteiro(array, esquerda, meio, direita); 
	        } 
	    }
	    
	    private void ParticionarString(ArrayList<String> array, int esquerda, int meio, int direita) { 
	        // Encontra tamanho das duas metades do Array de dados
	        int n1 = meio - esquerda + 1; 
	        int n2 = direita - meio; 
	  
	        // Criação dos arrays temporários para armazenar as duas metades
	        String Esquerda[] = new String [n1]; 
	        String Direita[] = new String [n2]; 
	  
	        // Passsagem de dados para os arrays temporários
	        for (int i = 0; i < n1; ++i) { Esquerda[i] = array.get(esquerda + i); } 
	        for (int j = 0; j < n2; ++j) { Direita[j] = array.get(meio + 1+ j); }	             
	  
	        // Índices que identificam posição dos elementos em cada array temporário
	        // i -> Esquerda, j -> Direita
	        int i = 0, j = 0; 
	  
	        //  Ordenação do array em ordem crescente
	        int k = esquerda; 
	        
	        while (i < n1 && j < n2) { 
	            if (Esquerda[i].compareToIgnoreCase(Direita[j]) < 0) { 
	                array.set(k, Esquerda[i]); 
	                i++; 
	            }
	            
	            else { 
	                array.set(k, Direita[j]); 
	                j++; 
	            } 
	            
	            k++; 
	        } 
	  
	        // Verificação se algum elemento ficou para trás
	        // caso ficou, ele é adicionado no final do array
	        while (i < n1) { 
	            array.set(k, Esquerda[i]); 
	            i++; 
	            k++; 
	        } 
	  
	        while (j < n2) { 
	            array.set(k, Direita[j]); 
	            j++; 
	            k++; 
	        } 
	    } 
	   
	    public void OrdenarString(ArrayList<String> array, int esquerda, int direita) { 
	        if (esquerda < direita) { 
	            // Encontra posição do meio do array 
	            int meio = (esquerda + direita) / 2; 
	  
	            // Divisão do array até não poder mai= (recursão)
	            OrdenarString(array, esquerda, meio); 
	            OrdenarString(array, meio + 1, direita); 
	  
	            // Ordenação do array
	            ParticionarString(array, esquerda, meio, direita); 
	        } 
	    } 
	}
%>

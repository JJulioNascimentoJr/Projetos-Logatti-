package br.com.revista.entidade;

public class Consulta {
	
	private String nome;
	
	public Consulta(String nome){
		this.nome=nome;
	}
	
	public Consulta(){
		
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}

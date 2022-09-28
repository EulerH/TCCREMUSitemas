package com.crudfinalizado.bean;



public class Produto {
	private int id;
	private String nome;
	private String fornecedor;
	private String grupo;
	private Double preco;
	private int estoque;
	private String imagem;
	private int codigo_barra;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getFornecedor() {
		return fornecedor;
	}

	public void setFornecedor(String fornecedor) {
		this.fornecedor = fornecedor;
	}

	public String getGrupo() {
		return grupo;
	}

	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	public Double getPreco() {
		return preco;
	}

	public void setPreco(Double preco) {
		this.preco = preco;
	}

	public int getEstoque() {
		return estoque;
	}

	public void setEstoque(int estoque) {
		this.estoque = estoque;
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public int getCodigo_barra() {
		return codigo_barra;
	}

	public void setCodigo_barra(int codigo_barra) {
		this.codigo_barra = codigo_barra;
	}

		
	

}

package com.crudfinalizado.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.crudfinalizado.bean.Produto;


public class ProdutoDao {

	public static Connection getConnection() {
		Connection con = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crudfinalizado", "root", "");

		} catch (Exception e) {
			System.out.println(e);
		}
		return con;

	}

	// Metodo para deletar produto.
	public static int deleteProduto(Produto p) {

		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("Delete from produto where id=?");
			ps.setInt(1, p.getId());
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}

	// Metodo para salvar produto.
	public static int salvarProduto(Produto p) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("INSERT INTO produto"
					+ "(nome, grupo, fornecedor, preco, estoque) " 
					+ "VALUES (?,?,?,?,?) ");


			ps.setString(1, p.getNome());
			ps.setString(2, p.getGrupo());
			ps.setString(3, p.getFornecedor());
			ps.setDouble(4, p.getPreco());
			ps.setInt(5, p.getEstoque());
			
			status = ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	// Metodo para atualizar produto
	
	public static int updateproduto(Produto p) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE produto SET nome=?, grupo=?, fornecedor=?,preco=?,"
							+ "estoque=? where id=?");

			ps.setString(1, p.getNome());
			ps.setString(2, p.getGrupo());
			ps.setString(3, p.getFornecedor());
			ps.setDouble(4, p.getPreco());
			ps.setInt(5, p.getEstoque());
			ps.setInt(6, p.getId());

			status = ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
	
	
	
	
	/*public static int updateproduto(Produto p) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("UPDATE produto SET nome=?, grupo=?, fornecedor=?,preco=?,"
							+ "estoque=? where id=?");

			ps.setString(1, p.getNome());
			ps.setString(2, p.getGrupo());
			ps.setString(3, p.getFornecedor());
			ps.setDouble(4, p.getPreco());
			ps.setInt(5, p.getEstoque());
			ps.setInt(6, p.getId());

			status = ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;*/

	

	// metodo para registrar o produto
	public static Produto getRegistroById(int id) {
		Produto produto = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("Select * from produto where id =? ");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				produto = new Produto();

				produto.setId(rs.getInt("id"));
				produto.setNome(rs.getString("nome"));
				produto.setGrupo(rs.getString("grupo"));
				produto.setFornecedor(rs.getString("fornecedor"));
				produto.setPreco(rs.getDouble("preco"));
				produto.setEstoque(rs.getInt("estoque"));
				produto.setImagem(rs.getString("imagem"));
				produto.setCodigo_barra(rs.getInt("codigo_barra"));

			}

		} catch (Exception e) {
			System.out.println(e);
		}
		return produto;
	}

	public static List<Produto> getAllProduto() {
		List<Produto> list = new ArrayList<Produto>();
		try {
			Connection con = getConnection();

			PreparedStatement ps = (PreparedStatement) con.prepareStatement("Select * from produto");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Produto produto = new Produto();

				produto.setId(rs.getInt("id"));
				produto.setNome(rs.getString("nome"));
				produto.setGrupo(rs.getString("grupo"));
				produto.setFornecedor(rs.getString("fornecedor"));
				produto.setPreco(rs.getDouble("preco"));
				produto.setEstoque(rs.getInt("estoque"));
				produto.setImagem(rs.getString("imagem"));
				produto.setCodigo_barra(rs.getInt("codigo_barra"));

				list.add(produto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	//metodo para buscar grupo de cerveja
	public static List<Produto> getAllCerveja() {
		List<Produto> list = new ArrayList<Produto>();
		try {
			Connection con = getConnection();

			PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM produto WHERE grupo = 'cerveja'");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Produto produto = new Produto();

				produto.setId(rs.getInt("id"));
				produto.setNome(rs.getString("nome"));
				produto.setGrupo(rs.getString("grupo"));
				produto.setFornecedor(rs.getString("fornecedor"));
				produto.setPreco(rs.getDouble("preco"));
				produto.setEstoque(rs.getInt("estoque"));
				produto.setImagem(rs.getString("imagem"));
				produto.setCodigo_barra(rs.getInt("codigo_barra"));

				list.add(produto);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	//metodo para buscar grupo de Refrigerante
		public static List<Produto> getAllRefrigerante() {
			List<Produto> list = new ArrayList<Produto>();
			try {
				Connection con = getConnection();

				PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM produto WHERE grupo = 'refrigerante'");
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					Produto produto = new Produto();

					produto.setId(rs.getInt("id"));
					produto.setNome(rs.getString("nome"));
					produto.setGrupo(rs.getString("grupo"));
					produto.setFornecedor(rs.getString("fornecedor"));
					produto.setPreco(rs.getDouble("preco"));
					produto.setEstoque(rs.getInt("estoque"));
					produto.setImagem(rs.getString("imagem"));
					produto.setCodigo_barra(rs.getInt("codigo_barra"));

					list.add(produto);
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return list;
		}

		//metodo para buscar grupo de Porção
				public static List<Produto> getAllAlimento() {
					List<Produto> list = new ArrayList<Produto>();
					try {
						Connection con = getConnection();

						PreparedStatement ps = (PreparedStatement) con.prepareStatement("SELECT * FROM produto WHERE grupo = 'alimento'");
						ResultSet rs = ps.executeQuery();
						while (rs.next()) {
							Produto produto = new Produto();

							produto.setId(rs.getInt("id"));
							produto.setNome(rs.getString("nome"));
							produto.setGrupo(rs.getString("grupo"));
							produto.setFornecedor(rs.getString("fornecedor"));
							produto.setPreco(rs.getDouble("preco"));
							produto.setEstoque(rs.getInt("estoque"));
							produto.setImagem(rs.getString("imagem"));
							produto.setCodigo_barra(rs.getInt("codigo_barra"));

							list.add(produto);
						}
					} catch (Exception e) {
						System.out.println(e);
					}
					return list;
				}
			
		
		
	
}

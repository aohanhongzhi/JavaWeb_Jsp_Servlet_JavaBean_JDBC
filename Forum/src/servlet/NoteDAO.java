package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class NoteDAO {
	public Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/forumdemo", "root", "newpass");
		return connection;

	}

	public List<Note> findAll() throws Exception {
		Connection connection = getConnection();
		String sql = "select id,title,content,author,create_time from notes";
		Statement sta = connection.createStatement();
		ResultSet resultset = sta.executeQuery(sql);
		List<Note> notes = new ArrayList<Note>();
		System.out.println("start search datas from mysql");
		while (resultset.next()) {
			Note tn = new Note();
			tn.setId(resultset.getInt("id"));
			tn.setTitle(resultset.getString("title"));
			tn.setContent(resultset.getString("content"));
			tn.setAuthor(resultset.getString("author"));
			tn.setCreateTime(resultset.getTimestamp("create_time"));
			notes.add(tn);
			System.out.println("add datas from mysql");
		}
		connection.close();
		return notes;
	}

}

package master.dao;
import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import master.dto.OrderDto;
import master.utilities.ConnectionFactory;

public class OrderDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String insert_sql="insert into order_dtls(fid,qty,uname) values(?,?,?)";
	public void insertData(OrderDto odao)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
		 ps.setString(1,odao.getFid());
		 ps.setInt(2,odao.getQty());
		 ps.setString(3,odao.getUname());
		 ps.executeUpdate();
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public ResultSet billing(String uname)
	{
		String sql="select * from billing where uname='"+uname+"'";
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
}

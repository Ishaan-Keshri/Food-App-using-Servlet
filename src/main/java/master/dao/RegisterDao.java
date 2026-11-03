package master.dao;
import java.sql.*;

import master.dto.RegisterDto;
import master.utilities.ConnectionFactory;
public class RegisterDao {
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String insert_sql="insert into register values(?,?,?)";
	public void insertData(RegisterDto rdao)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps=cn.prepareStatement(insert_sql);
		 ps.setString(1,rdao.getUname());
		 ps.setString(2,rdao.getPass());
		 ps.setString(3,rdao.getNm());
		 ps.executeUpdate();
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public boolean CheckLogin(String uname,String pass)
	{
		boolean flag=false;
		String sql=" select * from register where uname='"+uname+"' and pass='"+pass+"'";
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next())
			{
				flag=true;
			}
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return flag;
	}
}

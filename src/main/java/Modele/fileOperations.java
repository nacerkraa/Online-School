package Modele;



	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.sql.Statement;

	import DAO.User;
	import DAO.FileUpload;

	public class fileOperations {

		private static ConnexionBase con;
		private static Connection Connect;

		public fileOperations() {
			con = new ConnexionBase();
			Connect = con.getConnection();
		}

		public boolean cheakFile(FileUpload x) {
			String query = "select * from files where file_name = ? and file_desc = ?";
			PreparedStatement st = null;
			ResultSet r = null;
			boolean b=false;
			try {
				st = this.Connect.prepareStatement(query);
				st.setString(1, x.getFileName());
				st.setString(2, x.getFileDescription());

				r = st.executeQuery();
				if (r.next())
					b = true;
				st.close();
				r.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return b;
		}

		public boolean saveFile(FileUpload x) {
			String query = "insert into files(file_name, file_desc) values (?, ?)";
			PreparedStatement st = null;
			int r = 0;
			boolean b= false;
			try {
				if(!cheakFile(x)) {
				st = this.Connect.prepareStatement(query);
				st.setString(1, x.getFileName());
				st.setString(2, x.getFileDescription());
				
				r = st.executeUpdate();
				st.close();
				b=true;
			}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				return b;
		}
		
		// add cv formateur
				public boolean addfile(FileUpload x) {
					String query = "update utilisateur set file = '"+x.getFileName()+"' where E_mail= '"+x.getFileDescription()+"'";
					
					PreparedStatement st = null;
					int r = 0;
					boolean b= false;
					try {
						
						st = this.Connect.prepareStatement(query);
						r = st.executeUpdate();
						st.close();
						b=true;
					
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
						return b;
				}
		
		}




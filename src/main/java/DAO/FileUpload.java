package DAO;

	 
	public class FileUpload {
	 
	    private byte[] data;
	    private String fileName, fileDescription;
	 
	    public String getFileName() {
	        return fileName;
	    }
	 
	    public void setFileName(String fileName) {
	        this.fileName = fileName;
	    }
	 
	    public String getFileDescription() {
	        return fileDescription;
	    }
	 
	    public void setFileDescription(String fileDescription) {
	        this.fileDescription = fileDescription;
	    }
	 
	    public byte[] getData() {
	        return data;
	    }
	 
	    public void setData(byte[] data) {
	        this.data = data;
	    } 
	}


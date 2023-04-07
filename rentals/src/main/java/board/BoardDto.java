package board;

public class BoardDto {
	private int postNo;
	private String clientId;
	private String clientName;
	private String postTitle;
	private String contents;
	private String dateTime;
	private int postType;
	
	public BoardDto(int postNo,String clientId,String clientName,String postTitle,String contents,String dateTime,int postType) {
		this.postNo = postNo;
		this.clientId = clientId;
		this.clientName = clientName;
		this.postTitle = postTitle;
		this.contents = contents;
		this.dateTime = dateTime;
		this.postType = postType;
	}
	public BoardDto(String clientId,String postTitle,String contents,String dateTime,int postType) {
		
		this.clientId = clientId;
		this.postTitle = postTitle;
		this.contents = contents;
		this.dateTime = dateTime;
		this.postType = postType;
	}
	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public int getPostType() {
		return postType;
	}

	public void setPostType(int postType) {
		this.postType = postType;
	}
	
}

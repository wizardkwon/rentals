package board;

public class Board {
	private int postNo;
	private String clientId;
	private String clientName;
	private String postTitle;
	private String contents;
	private String dateTime;
	private int postType;
	
	public Board(int postNo,String clientId,String clientName,String postTitle,String contents,String dateTime,int postType) {
		this.postNo = postNo;
		this.clientId = clientId;
		this.clientName = clientName;
		this.postTitle = postTitle;
		this.contents = contents;
		this.dateTime = dateTime;
		this.postType = postType;
	}
	
	public Board(BoardDto boardDto) {
		this.postNo = boardDto.getPostNo();
		this.clientId = boardDto.getClientId();
		this.clientName = boardDto.getClientName();
		this.postTitle = boardDto.getPostTitle();
		this.contents = boardDto.getContents();
		this.dateTime = boardDto.getDateTime();
		this.postType = boardDto.getPostType();
	}

	public int getPostNo() {
		return postNo;
	}

	public String getClientId() {
		return clientId;
	}

	public String getClientName() {
		return clientName;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public String getContents() {
		return contents;
	}

	public String getDateTime() {
		return dateTime;
	}

	public int getPostType() {
		return postType;
	}
	
	
}

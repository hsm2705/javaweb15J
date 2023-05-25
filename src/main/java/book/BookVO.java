package book;

public class BookVO {
	
	private String bookCode;
	private String bookName;
	private String genre;
	private String author;
	private String bookInfor;
	private String pub;
	private String pubDate;
	
	public BookVO() {
		super();
	}
	
	public BookVO(String bookCode, String bookName, String genre) {
		this.bookCode = bookCode;
		this.bookName = bookName;
		this.genre = genre;
	}
	
	public String getBookCode() {
		return bookCode;
	}
	public void setBookCode(String bookCode) {
		this.bookCode = bookCode;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getBookInfor() {
		return bookInfor;
	}
	public void setBookInfor(String bookInfor) {
		this.bookInfor = bookInfor;
	}
	public String getPub() {
		return pub;
	}
	public void setPub(String pub) {
		this.pub = pub;
	}
	public String getPubDate() {
		return pubDate;
	}
	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}
	@Override
	public String toString() {
		return "BookVO [bookCode=" + bookCode + ", bookName=" + bookName + ", genre=" + genre + ", author=" + author
				+ ", bookInfor=" + bookInfor + ", pub=" + pub + ", pubDate=" + pubDate + "]";
	}
	
	
}

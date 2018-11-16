package entity;

public class Contact {
	private int id;
	private String name;
	private String email;
	private String title;
	private String content;

	public Contact() {
		super();
	}

	public Contact(int id, String name, String email, String title, String content) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.title = title;
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}

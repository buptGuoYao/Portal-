package java;

import java.io.Serializable;

public class article {

	public int id;
	public String title;
	public String body;
	public int getId(){
		return id;
	}
	public String getTitle(){
		return title;
	}
	public String getBody(){
		return body;
	}
	public void setId(int id){
		this.id = id;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public void setBody(String body){
		this.body = body;
	}

}
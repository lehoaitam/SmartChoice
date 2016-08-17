package mum.edu.smartchoice.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Cart implements Serializable {

	@Id
	@GeneratedValue
	Long id;

	Date creationDate=new Date();

	@OneToMany(cascade=CascadeType.ALL)
	List<LineItem> items;

	Double totalamout;
	
	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}

	public List<LineItem> getItems() {
		return items;
	}

	public void setItems(List<LineItem> items) {
		this.items = items;
	}

	
	public Double getTotalamout() {
		return totalamout;
	}

	public void setTotalamout(Double totalamout) {
		this.totalamout = totalamout;
	}
}

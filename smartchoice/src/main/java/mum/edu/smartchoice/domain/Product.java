package mum.edu.smartchoice.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import mum.edu.smartchoice.validator.Productcode;


@Entity
public class Product {

	@Id
	@GeneratedValue
	private Long id;
	
	@Size(min=3,max=5,message="ProductCode must be greater that 3 and less than equals to 5")
	
	@Productcode
	private String productcode;
	
	@NotEmpty
	private String name;
	@NotEmpty
	private String description;

	private String image;

	@Transient
	private String imageFile;
	@NotNull
	private int quantity;
	@NotNull
	private Double unitPrice;

	@Lob
	@Column(name = "cover_image")
	private byte[] coverImage;
	
	@ManyToOne
	private Category category;

	@Transient
	private MultipartFile productImage;

	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProductcode() {
		return productcode;
	}

	public void setProductcode(String productcode) {
		this.productcode = productcode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public MultipartFile getProductImage() {
		return productImage;
	}

	public void setProductImage(MultipartFile productImage) {
		this.productImage = productImage;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	public String getImageFile() {
		return imageFile;
	}

	public void setImageFile(String imageFile) {
		this.imageFile = imageFile;
	}

	public byte[] getCoverImage() {
		return coverImage;
	}
	public void setCoverImage(byte[] coverImage) {
		this.coverImage = coverImage;
	}
	
}


package customer;

public class Customer {
    private String fullName;
    private String birthday;
    private String address;
    private String image;

    public Customer(){
    }

    public Customer(String fullName, String birthday, String address, String image) {
        this.fullName = fullName;
        this.birthday = birthday;
        this.address = address;
        this.image = image;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}


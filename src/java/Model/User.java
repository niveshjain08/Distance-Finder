package Model;

public class User {
    int userId;
    String hash, email, password, preHash;

    public User(int userId, String email, String password, String preHash) {
        this.userId = userId;
        this.email = email;
        this.password = password;
        this.preHash = preHash;
        this.hash = this.toString().hashCode()+"";
    }

    
    
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getHash() {
        return hash;
    }

    public void setHash() {
        this.hash = this.toString().hashCode()+"";
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPreHash() {
        return preHash;
    }

    public void setPreHash(String preHash) {
        this.preHash = preHash;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", hash=" + hash + ", email=" + email + ", password=" + password + ", preHash=" + preHash + '}';
    }
    

}

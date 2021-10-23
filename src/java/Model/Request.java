package Model;

public class Request {
    String hash, someone, dt, preHash;
    int requestid, userid;

    public Request( String someone, String dt, String preHash, int requestid, int userid) {
        this.requestid = requestid;
        this.someone = someone;
        this.dt = dt;
        this.preHash = preHash;
        this.userid = userid;
        this.hash = this.toString().hashCode()+"";
    }

    public Request() {
    }
    
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    
    @Override
    public String toString() {
        return "Request{" + "hash=" + hash + ", someone=" + someone + ", dt=" + dt + ", preHash=" + preHash + ", requestid=" + requestid + ", userid=" + userid + '}';
    }
    
    
    
    
    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public String getSomeone() {
        return someone;
    }

    public void setSomeone(String someone) {
        this.someone = someone;
    }

    public String getDt() {
        return dt;
    }

    public void setDt(String dt) {
        this.dt = dt;
    }

    public String getPreHash() {
        return preHash;
    }

    public void setPreHash(String preHash) {
        this.preHash = preHash;
    }

    public int getRequestid() {
        return requestid;
    }

    public void setRequestid(int requestid) {
        this.requestid = requestid;
    }

    
    
}

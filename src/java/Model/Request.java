package Model;

public class Request {
    String hash, someone, dt, preHash;
    int requestid;

    public Request( String someone, String dt, String preHash, int requestid) {
        this.requestid = requestid;
        this.someone = someone;
        this.dt = dt;
        this.preHash = preHash;
        this.hash = this.toString().hashCode()+"";
    }
    
    
    @Override
    public String toString() {
        return "Request{" + "hash=" + hash + ", someone=" + someone + ", dt=" + dt + ", preHash=" + preHash + ", requestid=" + requestid + '}';
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

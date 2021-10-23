package Model;

public class Accept {
        String hash, ip, preHash, dt;
        int requestid;

    public Accept(String ip, String preHash, String dt, int requestid) {
        this.ip = ip;
        this.preHash = preHash;
        this.dt = dt;
        this.requestid = requestid;
        this.hash = this.toString().hashCode()+"";
    }

    @Override
    public String toString() {
        return "Accept{" + "hash=" + hash + ", ip=" + ip + ", preHash=" + preHash + ", dt=" + dt + ", requestid=" + requestid + '}';
    }

        
    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getPreHash() {
        return preHash;
    }

    public void setPreHash(String preHash) {
        this.preHash = preHash;
    }

    public String getDt() {
        return dt;
    }

    public void setDt(String dt) {
        this.dt = dt;
    }

    public int getRequestid() {
        return requestid;
    }

    public void setRequestid(int requestid) {
        this.requestid = requestid;
    }
        
}

package Models;

import java.util.Date;

public class Hoadon {
    private int idhd;
    private Date ngxuathd;
    private int iduser;
    private float trigia;

    public Hoadon() {
    }

    public Hoadon(int idhd, Date ngxuathd, int iduser, float trigia) {
        this.idhd = idhd;
        this.ngxuathd = ngxuathd;
        this.iduser = iduser;
        this.trigia = trigia;
    }

    public int getIdhd() {
        return idhd;
    }

    public void setIdhd(int idhd) {
        this.idhd = idhd;
    }

    public Date getNgxuathd() {
        return ngxuathd;
    }

    public void setNgxuathd(Date ngxuathd) {
        this.ngxuathd = ngxuathd;
    }

    public int getIduser() {
        return iduser;
    }

    public void setIduser(int iduser) {
        this.iduser = iduser;
    }

    public float getTrigia() {
        return trigia;
    }

    public void setTrigia(float trigia) {
        this.trigia = trigia;
    }
}

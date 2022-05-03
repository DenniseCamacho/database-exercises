import java.io.Serializable;
import java.util.Date;

public class Album implements Serializable {
    private int id;
    private String artist;
    private String albumName;
    private String genre;
    private Date release_date;
    private float sales;

    public Album(int id, String artist, String albumName, String genre, Date release_date, float sales){
        this.id = id;
        this.artist = artist;
        this.albumName = albumName;
        this.genre = genre;
        this.release_date = release_date;
        this.sales = sales;
    }

    public int getId() {
        return id;
    }
    public String getArtist() {
        return artist;
    }
    public String getAlbumName() {
        return albumName;
    }
    public String getGenre() {
        return genre;
    }
    public Date getRelease_date() {
        return release_date;
    }
    public float getSales() {
        return sales;
    }

    public void setId(int id) {
        this.id = id;
    }
    public void setArtist(String artist) {
        this.artist = artist;
    }
    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }
    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }
    public void setSales(float sales) {
        this.sales = sales;
    }
}

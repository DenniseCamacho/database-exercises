import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ListAlbumsDao implements Albums{
    private List<Album> albums;
    @Override
    public List<Album> all() {
        if(albums == null) {
            albums = generateAlbums();
        }
        return albums;
    }
    private List<Album> generateAlbums() {
        List<Album> albums = new ArrayList<>();
        albums.add(new Album(1,"Michael Jackson", "Thriller", "Pop", new Date(05/15/98), 1_000_000_000));
    return albums;
    }

}

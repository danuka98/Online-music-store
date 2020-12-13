package MusicStore;

public class TrendingDetails {

	int trendingID;
	String artistName;
	String songName;
	public TrendingDetails(int trendingID, String artistName, String songName) {
		this.trendingID = trendingID;
		this.artistName = artistName;
		this.songName = songName;
	}
	public int getTrendingID() {
		return trendingID;
	}
	public String getArtistName() {
		return artistName;
	}
	public String getSongName() {
		return songName;
	}
	
}

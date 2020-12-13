package MusicStore;

public class MostPopularDetails {
	
	int popularID;
	String artistName;
	String songName;
	public MostPopularDetails(int popularID, String artistName, String songName) {
		this.popularID = popularID;
		this.artistName = artistName;
		this.songName = songName;
	}
	public int getPopularID() {
		return popularID;
	}
	public String getArtistName() {
		return artistName;
	}
	public String getSongName() {
		return songName;
	}
	
}

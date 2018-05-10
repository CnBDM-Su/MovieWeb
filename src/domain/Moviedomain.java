package domain;

public class Moviedomain implements java.io.Serializable {
	
	private String Movieid;
	private String Moviename;
	private String Performer;
	private String Director;
	private String Country;
	private String Poster;
	private String Releasetime;
	private String Rate;
	private String Description;
	private String Type;
	
	public void setDescription(String Description) {
		this.Description = Description;
	}

	public String getDescription() {
		return Description;
	}
	public void setType(String Type) {
		this.Type = Type;
	}

	public String getType() {
		return Type;
	}
	public String getMovieid() {
		return Movieid;
	}
	public String getMoviename() {
		return Moviename;
	}
	public void setMovieid(String Movieid) {
		this.Movieid = Movieid;
	}
	public void setMoviename(String Moviename) {
		this.Moviename = Moviename;
	}
	
	public String getPerformer() {
		return Performer;
	}
	public String getDirector() {
		return Director;
	}
	public String getCountry() {
		return Country;
	}
	public void setPerformer(String Performer) {
		this.Performer = Performer;
	}
	public void setDirector(String Director) {
		this.Director = Director;
	}
	public void setCountry(String Country) {
		this.Country = Country;
	}

	public String getPoster() {
		return Poster;
	}
	public String getReleasetime() {
		return Releasetime;
	}
	public String  getRate() {
		return Rate;
	}
	public void setPoster(String Poster) {
		this.Poster = Poster;
	}
	public void setReleasetime(String Releasetime) {
		this.Releasetime = Releasetime;
	}
	public void setRate(String Rate) {
		this.Rate = Rate;
	}
	
}

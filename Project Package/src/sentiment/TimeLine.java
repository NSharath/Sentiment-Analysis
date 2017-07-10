package sentiment;

public class TimeLine {
	
	public String month;
	public String event;
	public String mostPositiveTweet;
	
	
	public String getMostPositiveTweet() {
		return this.mostPositiveTweet;
	}

	public void setMostPositiveTweet(String mostPositiveTweet) {
		this.mostPositiveTweet = mostPositiveTweet;
	}

	public String getMonth() {
		return this.month;
	}
	
	public void setMonth(String month) {
		this.month = month;
	}
	
	public String getEvent() {
		return this.event;
	}
	
	public void setEvent(String event) {
		this.event = event;
	}
	

}

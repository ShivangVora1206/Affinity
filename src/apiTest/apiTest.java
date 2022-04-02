package apiTest;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.annotation.*;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

 class APOD {
    public final String copyright;
    public final String date;
    public final String explanation;
    public final String hdUrl;
    public final String mediaType;
    public final String serviceVersion;
    public final String title;
    public final String url;

    public APOD(@JsonProperty("copyright") String copyright,
                @JsonProperty("date") String date,
                @JsonProperty("explanation") String explanation,
                @JsonProperty("hdurl") String hdUrl,
                @JsonProperty("media_type") String mediaType,
                @JsonProperty("service_version") String serviceVersion,
                @JsonProperty("title") String title,
                @JsonProperty("url") String url) {
        this.copyright = copyright;
        this.date = date;
        this.explanation = explanation;
        this.hdUrl = hdUrl;
        this.mediaType = mediaType;
        this.serviceVersion = serviceVersion;
        this.title = title;
        this.url = url;
    }
}


public class apiTest {

	public static void main(String[] args) {
		try{
		URL url = new URL("http://127.0.0.1:5000/email=%22"+"shiv@vora.com"+"%22&uid="+"2"+"&q1=3.0&q2=5.0&q3=3.0&q4=4.0&q5=3.0&q6=3.0&q7=2.0&q8=5.0&q9=1.0&q10=5.0&q11=2.0&q12=3.0&q13=4.0&q14=1.0&q15=3.0&q16=1.0&q17=2.0&q18=1.0&q19=3.0&q20=1.0&q21=1.0&q22=4.0&q23=1.0&q24=5.0&q25=1.0&q26=5.0&q27=3.0&q28=4.0&q29=5.0&q30=3.0&q31=3.0&q32=2.0&q33=5.0&q34=3.0&q35=3.0&q36=1.0&q37=3.0&q38=3.0&q39=5.0&q40=3.0&q41=1.0&q42=2.0&q43=4.0&q44=2.0&q45=3.0&q46=1.0&q47=4.0&q48=2.0&q49=5.0&q50=3.0");

		// Open a connection(?) on the URL(??) and cast the response(???)
		HttpURLConnection connection = (HttpURLConnection) url.openConnection();

		// Now it's "open", we can set the request method, headers etc.
		connection.setRequestProperty("accept", "application/json");

		// This line makes the request
		InputStream responseStream = connection.getInputStream();

		// Manually converting the response body InputStream to APOD using Jackson
		ObjectMapper mapper = new ObjectMapper();
		APOD apod = mapper.readValue(responseStream, APOD.class);

		// Finally we have the response{"\"word\"": "a pronounceable series of letters having a distinct meaning especially in a particular field "}
		
		
		System.out.println(apod.title);
		}catch(Exception e){
			System.out.println("EXECUTION COMPLETED");;
			
		}
		
	}

}

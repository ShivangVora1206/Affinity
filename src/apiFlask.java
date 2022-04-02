import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.annotation.*;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import Credentials.Creds;
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


public class apiFlask {

	static void callApi() {
		try{
			String email = Creds.getEmail();
			int userid = Creds.getUserid();
		URL url = new URL("http://127.0.0.1:5000/email=%22"+email+"%22&uid="+userid
																			+"&q1="+Creds.getQ1()
																			+"&q2="+Creds.getQ2()
																			+"&q3="+Creds.getQ3()
																			+"&q4="+Creds.getQ4()
																			+"&q5="+Creds.getQ5()
																			+"&q6="+Creds.getQ6()
																			+"&q7="+Creds.getQ7()
																			+"&q8="+Creds.getQ8()
																			+"&q9="+Creds.getQ9()
																			+"&q10="+Creds.getQ10()
																			+"&q11="+Creds.getQ11()
																			+"&q12="+Creds.getQ12()
																			+"&q13="+Creds.getQ13()
																			+"&q14="+Creds.getQ14()
																			+"&q15="+Creds.getQ15()
																			+"&q16="+Creds.getQ16()
																			+"&q17="+Creds.getQ17()
																			+"&q18="+Creds.getQ18()
																			+"&q19="+Creds.getQ19()
																			+"&q20="+Creds.getQ20()
																			+"&q21="+Creds.getQ21()
																			+"&q22="+Creds.getQ22()
																			+"&q23="+Creds.getQ23()
																			+"&q24="+Creds.getQ24()
																			+"&q25="+Creds.getQ25()
																			+"&q26="+Creds.getQ26()
																			+"&q27="+Creds.getQ27()
																			+"&q28="+Creds.getQ28()
																			+"&q29="+Creds.getQ29()
																			+"&q30="+Creds.getQ30()
																			+"&q31="+Creds.getQ31()
																			+"&q32="+Creds.getQ32()
																			+"&q33="+Creds.getQ33()
																			+"&q34="+Creds.getQ34()
																			+"&q35="+Creds.getQ35()
																			+"&q36="+Creds.getQ36()
																			+"&q37="+Creds.getQ37()
																			+"&q38="+Creds.getQ38()
																			+"&q39="+Creds.getQ39()
																			+"&q40="+Creds.getQ40()
																			+"&q41="+Creds.getQ41()
																			+"&q42="+Creds.getQ42()
																			+"&q43="+Creds.getQ43()
																			+"&q44="+Creds.getQ44()
																			+"&q45="+Creds.getQ45()
																			+"&q46="+Creds.getQ46()
																			+"&q47="+Creds.getQ47()
																			+"&q48="+Creds.getQ48()
																			+"&q49="+Creds.getQ49()
																			+"&q50="+Creds.getQ50()
																			);

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
			System.out.println("EXECUTION COMPLETED");
			
		}
		
	}

}

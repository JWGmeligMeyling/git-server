package nl.tudelft.ewi.git.client;

import java.net.URLEncoder;

import javax.ws.rs.ClientErrorException;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.WebTarget;


import lombok.SneakyThrows;

class Backend {

	static interface Request<T> {
		T perform(WebTarget target);
	}

	private final String host;
	protected final Client client;

	Backend(Client client, String host) {
		this.host = host;
		this.client = client;
	}

	String getHost() {
		return host;
	}

	@SneakyThrows
	String encode(String value) {
		return URLEncoder.encode(value, "UTF-8");
	}

	<T> T perform(Request<T> action) {
		try {
			WebTarget target = client.target(host);
			return action.perform(target);
		}
		catch (ClientErrorException e) {
			throw e;
		}
	}

}

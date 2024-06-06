package com.foti_java.utils;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ApiUtil {
	public static List<Object[]> postApi(String url, JSONObject json, Object... params)
			throws ClientProtocolException, IOException {
		CloseableHttpClient httpClient = HttpClients.createDefault();

		HttpPost httpPost = new HttpPost(url);
		StringEntity entity = new StringEntity(json.toString(), ContentType.APPLICATION_JSON);

		httpPost.setEntity(entity);
		httpPost.setHeader("Token", "87b48598-2325-11ef-a951-76299e96dead");
		httpPost.setHeader("Content-type", "application/json");
		ObjectMapper objectMapper = new ObjectMapper();

		CloseableHttpResponse response = httpClient.execute(httpPost);
		List<Object[]> list = new ArrayList<>();
		JsonNode jsonNode = objectMapper.readTree(EntityUtils.toString(response.getEntity()));
		JsonNode data = jsonNode.get("data");
		for (int i = 0; i < data.size(); i++) {
			Object[] object = new Object[params.length];
			for (int j = 0; j < params.length; j++) {
				object[j] = data.get(i).get(params[j].toString());
			}
			list.add(object);
		}
		return list;

	}
}

package examples.features.utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;


import java.util.Map;
import java.util.stream.Collectors;


public class jsonutils {
    // this will work for simple json object
     public static String removeNullKeys(Map<String, Object> jsonObject) throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> jsonWithoutNull = jsonObject
                .entrySet()
                .stream()
                .filter(entry -> entry.getValue() != null && entry.getValue() != "")
                .collect(Collectors.toMap(entry -> entry.getKey(), entry -> entry.getValue()));
        return objectMapper.writeValueAsString(jsonWithoutNull);
    }
    //for nested json object/or complex we pass string but for use we need to convert thst into map 
    public static String removeNullKeys(String jsonObject) throws JsonProcessingException {
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> jsonWithoutNull = objectMapper.readValue(jsonObject, new TypeReference<Map<String,Object>>() {
                })
                .entrySet()
                .stream()
                .filter(entry -> entry.getValue() != null && entry.getValue() != "")
                .collect(Collectors.toMap(entry -> entry.getKey(), entry -> entry.getValue()));
        return objectMapper.writeValueAsString(jsonWithoutNull);
    }

    public static boolean wannaRetry(String response){
        System.out.println("Retrying>>>>>>");
        return false;
    }
    //if we return true it will no retry
    //thatwhy we need to use false there for retry according to define


}

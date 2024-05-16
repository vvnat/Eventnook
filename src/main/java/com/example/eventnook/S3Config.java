package com.example.eventnook;

import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.client.builder.AwsClientBuilder;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class S3Config {

    @Value("${aws.access.key}")
    private String apiKey;

    @Value("${aws.secret.key}")
    private String secretKey;

    @Value("${aws.s3.endpoint}")
    private String r2Endpoint;

    @Bean
    public AmazonS3 s3Client() {

        BasicAWSCredentials credentials = new BasicAWSCredentials(apiKey, secretKey);

        return AmazonS3ClientBuilder.standard()
                .withEndpointConfiguration(new AwsClientBuilder.EndpointConfiguration(r2Endpoint, "weur"))
                .withCredentials(new AWSStaticCredentialsProvider(credentials)).build();
    }
}
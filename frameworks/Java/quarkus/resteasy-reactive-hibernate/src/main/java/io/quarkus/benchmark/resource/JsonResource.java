package io.quarkus.benchmark.resource;

import io.smallrye.common.annotation.NonBlocking;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/json")
public class JsonResource {
    private static final String HELLO = "Hello, World!";

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @NonBlocking
    public Message json() {
        return new Message(HELLO);
    }
}


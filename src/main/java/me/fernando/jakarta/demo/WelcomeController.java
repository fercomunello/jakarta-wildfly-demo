package me.fernando.jakarta.demo;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Inject;
import jakarta.mvc.Controller;
import jakarta.mvc.Models;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.QueryParam;
import jakarta.ws.rs.core.Response;

import java.time.LocalDate;

@Controller
@RequestScoped
@Path("welcome")
public class WelcomeController {

    @Inject
    private Models models;

    @GET
    public Response welcome(@QueryParam("user") String user) {
        var currentDate = LocalDate.now();

        this.models.put("currentDate", currentDate);
        this.models.put("user", user != null && !user.isBlank() ? user : "Guest");

        return Response.ok().entity("welcome.jsp").build();
    }

}

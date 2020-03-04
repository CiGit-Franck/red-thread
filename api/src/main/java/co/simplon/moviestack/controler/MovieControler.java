/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.simplon.moviestack.controler;

import co.simplon.moviestack.model.Movie;
import co.simplon.moviestack.service.MovieService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 *
 * @author franck
 */
@RestController
@RequestMapping("/api/movies")
public class MovieControler {

    private MovieService movieService;

    /**
     * Constructor
     *
     * @param movieService
     */
    public MovieControler(MovieService movieService) {
        this.movieService = movieService;
    }

    /**
     * Get full movie
     *
     * @return
     */
    @GetMapping()
    public List<Movie> getMovies() {
        return movieService.getMovies();
    }

    /**
     * Get movie with movieId
     *
     * @param movieId
     * @return
     */
    @GetMapping("/{movieId}")
    public Movie getMovieById(@PathVariable Long movieId) {
        return movieService.getMovieById(movieId);
    }

    /**
     * Create a movie
     *
     * @param newMovie
     * @return
     */
    @PostMapping()
    public Movie createMovie(@RequestBody @Valid Movie newMovie) {
        return movieService.createMovie(newMovie);
    }

    /**
     * Update a movie
     *
     * @param updMovie
     * @return
     */
    @PutMapping()
    public Movie updateMovie(@RequestBody @Valid Movie updMovie) {
        return movieService.updateMovie(updMovie);
    }
}

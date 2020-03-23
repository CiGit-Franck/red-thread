import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { MovieService } from '../../service/movie.service';
import { Movie } from '../../model/movie';


@Component({
  selector: 'app-movie-sheet',
  templateUrl: './movie-sheet.component.html',
  styleUrls: ['./movie-sheet.component.css']
})
export class MovieSheetComponent implements OnInit {

  public movie: Movie = new Movie();
  public maxActor = 8;
  public maxGenre = 3;

  constructor(
    private route: ActivatedRoute,
    private movieService: MovieService
  ) {
  }

  ngOnInit() {
    this.route.paramMap.subscribe(params =>
      this.movieService.getMovieById(params.get('movieId')).subscribe(
        movieServer => {
          this.movie = movieServer;
          console.log('Init');
          console.log(this.movie);
        }
      )
    );
  }

  refreshMovieInfo(idImdb: string) {
    this.movieService.getMovieFromTMDBById(idImdb).subscribe(
      movieServer => {
        this.movie = movieServer;
        console.log('Refresh : ' + idImdb);
      }
    );
  }
}

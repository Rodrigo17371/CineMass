//TMDB
//https://api.themoviedb.org/3/movie/upcoming?api_key=607a22ee6ed0f9f8c1d9e46ad960175f&language=es-ES&page=1&region=PE
//https://api.themoviedb.org/3/discover/movie?api_key=607a22ee6ed0f9f8c1d9e46ad960175f&include_adult=false&include_video=false&language=es-MX&sort_by=popularity.desc&with_release_type=2|3&release_date.gte={12-06-2024}&release_date.lte={max_date}&include_image_language=es,null&page=1

//Ejemplo de solicitud de una pelicula en especifico, en este caso Deadpool y Wolverine
//https://api.themoviedb.org/3/movie/533535/images?api_key=607a22ee6ed0f9f8c1d9e46ad960175f&include_image_language=es&language=es-MX
//https://image.tmdb.org/t/p/w500/ffe0lQcydsBctSD40RTJVAHF2xt.jpg


const BASE_URL = 'https://api.themoviedb.org/3';
const API_KEY = 'api_key=607a22ee6ed0f9f8c1d9e46ad960175f'; 
const API_URL = BASE_URL + '/movie/upcoming?' + API_KEY + '&language=es-MX&page=1';

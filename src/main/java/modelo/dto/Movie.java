package modelo.dto;

public class Movie {
    private String title;
    private String imageUrl;
    private String rating;
    private String releaseDate;

    public Movie(String title, String imageUrl, String rating, String releaseDate) {
        this.title = truncateTitle(title);
        this.imageUrl = imageUrl;
        this.rating = rating;
        this.releaseDate = releaseDate;
    }

    // Método para truncar el título si excede 33 caracteres
    private String truncateTitle(String title) {
        if (title.length() > 39) {
            return title.substring(0, 36) + "...";
        } else {
            return title;
        }
    }
    
    // Getters y setters
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = truncateTitle(title); }
    public String getImageUrl() { return imageUrl; }
    public void setImageUrl(String imageUrl) { this.imageUrl = imageUrl; }
    public String getRating() { return rating; }
    public void setRating(String rating) { this.rating = rating; }
    public String getReleaseDate() { return releaseDate; }
    public void setReleaseDate(String releaseDate) { this.releaseDate = releaseDate; }
}

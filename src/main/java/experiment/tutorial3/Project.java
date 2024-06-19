package experiment.tutorial3;

// Class for the Project
public class Project {
    String id;
    String title;
    String image;
    String description;
    String myPart;
    String learned;
    String[] technologies;

    public Project(String id, String title, String image, String description, String myPart, String learned, String[] technologies) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.description = description;
        this.myPart = myPart;
        this.learned = learned;
        this.technologies = technologies;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMyPart() {
        return myPart;
    }

    public void setMyPart(String myPart) {
        this.myPart = myPart;
    }

    public String getLearned() {
        return learned;
    }

    public void setLearned(String learned) {
        this.learned = learned;
    }

    public String[] getTechnologies() {
        return technologies;
    }

    public void setTechnologies(String[] technologies) {
        this.technologies = technologies;
    }
}

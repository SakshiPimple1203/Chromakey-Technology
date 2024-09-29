package feedback;

public class Feedbacks {
    private String full_name;
    private String email;
    private String message;

    public Feedbacks(String full_name, String email, String message) {
        this.full_name = full_name;
        this.email = email;
        this.message = message;
    }

    public String getfull_name() {
        return full_name;
    }

    public String getEmail() {
        return email;
    }

    public String getmessage() {
        return message;
    }
}

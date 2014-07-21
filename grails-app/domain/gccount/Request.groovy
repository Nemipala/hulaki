package gccount

class Request {
    String name;
    String request;
    String response;
    String username;

    static mapWith="mongo"
    static constraints = {
        response type : 'text'
    }
}

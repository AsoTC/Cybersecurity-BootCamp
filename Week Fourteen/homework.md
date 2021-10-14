#### HTTP Requests and Responses
##### Answer the following questions about the HTTP request and response process.


What type of architecture does the HTTP request and response process occur in? Layer 7 : Application


What are the different parts of an HTTP request? 
- Request Line
- Headers
- Request Body


Which part of an HTTP request is optional?
- Request Body


What are the three parts of an HTTP response?
- Status Line
- Header
- Response body


Which number class of status codes represents errors?
- HTTP 500 are server errors
- HTTP 400 are client side errors


What are the two most common request methods that a security professional will encounter?
- HTTP Get
- HTTP Post

Which type of HTTP request method is used for sending data?
- HTTP Post

Which part of an HTTP request contains the data being sent to the server?
- Request Body

In which part of an HTTP response does the browser receive the web code to generate and style a web page?
- Response Body



#### Using curl
##### Answer the following questions about curl:


What are the advantages of using curl over the browser? Allows you to quickly and easily test HTTP requests and can be used to automate calls to a website/webservice


Which curl option is used to change the request method?
- -X or --request <command>


Which curl option is used to set request headers? -H


Which curl option is used to view the response header? -I


Which request method might an attacker use to figure out which HTTP requests an HTTP server will accept? Options



### Sessions and Cookies
#### Recall that HTTP servers need to be able to recognize clients from one another. They do this through sessions and cookies.
#### Answer the following questions about sessions and cookies:


Which response header sends a cookie to the client?
```
    HTTP/1.1 200 OK
    Content-type: text/html
    Set-Cookie: cart=Bob
```
<b>Set-Cookie: cart=Bob</b> - This sets the client cookie


Which request header will continue the client's session?
```
    GET /cart HTTP/1.1
    Host: www.example.org
    Cookie: cart=Bob
```
<b>Cookie: cart=Bob</b> - The cookie will be used to pull back up the users session

Example HTTP Requests and Responses
Look through the following example HTTP request and response and answer the following questions:
```
    HTTP Request
    POST /login.php HTTP/1.1
    Host: example.com
    Accept-Encoding: gzip, deflate, br
    Connection: keep-alive
    Content-Type: application/x-www-form-urlencoded
    Content-Length: 34
    Upgrade-Insecure-Requests: 1
    User-Agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Mobile Safari/537.36

    username=Barbara&password=password
```

What is the request method? Post


Which header expresses the client's preference for an encrypted response? Upgrade-Insecure-Requests


Does the request have a user session associated with it? This header doesn't have a session associated to it since there is no session cookie in the header.


What kind of data is being sent from this request body? application/x-www-form-urlencoded

```
    HTTP Response
    HTTP/1.1 200 OK
    Date: Mon, 16 Mar 2020 17:05:43 GMT
    Last-Modified: Sat, 01 Feb 2020 00:00:00 GMT
    Content-Encoding: gzip
    Expires: Fri, 01 May 2020 00:00:00 GMT
    Server: Apache
    Set-Cookie: SessionID=5
    Content-Type: text/html; charset=UTF-8
    Strict-Transport-Security: max-age=31536000; includeSubDomains
    X-Content-Type: NoSniff
    X-Frame-Options: DENY
    X-XSS-Protection: 1; mode=block

    [page content]
```

What is the response status code? HTTP 200


What web server is handling this HTTP response? Apache


Does this response have a user session associated to it? Yes - (SessionID=5)


What kind of content is likely to be in the [page content] response body? HTML


If your class covered security headers, what security request headers have been included? 
- Strict-Transport-Security
- X-Content-Type
- X-Frame-Options
- X-XSS_Protection

## Monoliths and Microservices
#### Answer the following questions about monoliths and microservices:


What are the individual components of microservices called? containers


What is a service that writes to a database and communicates to other services? API


What type of underlying technology allows for microservices to become scalable and have redundancy? containerization



#### Deploying and Testing a Container Set
#### Answer the following questions about multi-container deployment:


What tool can be used to deploy multiple containers at once? Docker Compose


What kind of file format is required for us to deploy a container set? YAML



Databases
Which type of SQL query would we use to see all of the information within a table called customers? 
```SQL
     SELECT * FROM Customers
```
Which type of SQL query would we use to enter new data into a table? (You don't need a full query, just the first part of the statement.)
```SQL
     INSERT INTO TABLENAME (data1,data2,data3) VALUES (value1, value2, value3)
```
Why would we never run DELETE FROM <table-name>; by itself? 
- Without a WHERE clause the DELETE statement will remove all the data in the table. Then you get to go talk to the DBA about restoring data from trasnaction logs and making them grumpy.










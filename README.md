# login-app
Basic Maven Login Application to understand the cookies

Prerequisites to test the application

    1.  Apache Tomcat installed.
    2.  Maven installed.
    3.  Configure SSL on Apache Tomcat.
    4.  Configure Tomcat and Maven to deploy Maven projects to Tomcat.
    5.  You are done! Get the source code and play with it!
    
    How to deploy and run?
        git clone https://github.com/mifrazmurthaja/login-app.git
        cd login-app/login-app
        mvn package tomcat:redeploy
          You should not get any errors if you have done all the above procedures (1-4) correctly.
          If not you should probably be missed something in step 4.
        
        Done! Now open the browser and go to http://localhost/login-app
        


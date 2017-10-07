# login-app
Basic Maven Login Application to understand the cookies

Prerequisites to test the application

    1.  Apache Tomcat installed.
            https://mrzportal.blogspot.com/2017/08/install-apache-tomcat-on-debian-kali.html?view=sidebar
            
    2.  Maven installed.
            https://mrzportal.blogspot.com/2017/08/install-maven-on-debian-kali-linux.html?view=sidebar
    
    3.  Configure SSL on Apache Tomcat.
            https://mrzportal.blogspot.com/2017/09/add-ssl-self-signed-certificate-to.html?view=sidebar
    
    4.  Configure Tomcat and Maven to deploy Maven projects to Tomcat.
            https://mrzportal.blogspot.com/2017/09/run-your-maven-web-app-on-apache-tomcat.html?view=sidebar
    
    5.  You are done! Get the source code and play with it!
            git clone https://github.com/mifrazmurthaja/login-app.git
            cd login-app/login-app
            mvn package tomcat:redeploy
              You should not get any errors if you have done all the above procedures (1-4) correctly.
              If not you should probably be missed something in step 4.
        
        Done! Now open the browser and go to http://localhost/login-app
        
        To understand how it works,
            https://mrzportal.blogspot.com/2017/10/simple-login-application-to-understand_7.html?view=sidebar
        


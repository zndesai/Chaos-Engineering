# HW4

## Steps for Implementation

    1. Following services are created
          - Api Service
          - Ratings service
          
    2. Four routes have been defined in the Api service.
          - /gateway
          - /api --> According to the topology 99% of the request should be redirected to this route.
          - /apicontrol --> According to the topology 0.5% of the request should be redirected to this route.
          - /apiExp --> According to the topology 0.5% of the request should be redirected to this route
           
     3. Ratings service 
          - /ratings --> a simple html message "We are in the rating server"
         
         Ratings server will be gracefully handled when the server is down. This is done by proper error message response
         by the three routes /api,/apicontrol,/apiExp instead of a stack error.
    
## Experiment
    
    For the purpose of the experiment I have created two bash scripts. 
    
        1. The first bash script generates a report showing the distribution of the request between /api,/apicontrol,/apiExp.
           The script would run with the command: ./report.sh NoofRequest
           Report generated with the name report.txt
        
        2. The second bash script generates a report that highlights the graceful handle when the ratings server goes down.
           The shell script would run with the command: ./generareReport NoofRequest ServerDownRequest ServerUpRequest.
           Report generated with the name generateReport.txt
    
    Following are the experiments performed:
    
        1. Initially the request is send for 100 times. For all the request the ratings server is up. 
           Run command bash : ./report.sh 100
           The report is generated in the file as below.
    
        2. In this experiment,100 request is sent with the ratings server down from request 50 to 70. 
           After 50th request ratings server went down.
           After 70th request ratings server was up.
           The report generated is as follows.
           Run command bash: ./generateReport.sh 100 50 70
   
        3. The experiment is repeated for 1000 request with the ratings server up. The report generated is as follows.
           Run command bash: ./report.sh 1000
      
        4. In this experiment,1000 request is sent with the ratings server down from request 500 to 625. 
           After 500th request ratings server went down.
           After 625th request ratings server was up.
           The report generated is as follows.
           Run command bash: ./generateReport.sh 1000 500 625
         
## Observations 

     1. This experiment of Chaos Engineering is useful to handle the damage when the servers go down. Handling of this error
        important in production environment as failing to handle would have lead to a "page not displayed". 
        
     2. 
    

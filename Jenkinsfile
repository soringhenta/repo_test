pipeline {
    // 1. runs in any agent, otherwise specify a slave node
    agent any
    //parameters {
     //   choice(choices: '1\n2\n3\n4\n5\n6', description: 'Are you sure you want to execute this test?', name: 'run_test_only')
     //   choice(choices: 'yes\nno', description: 'Archived war?', name: 'archive_war')
      //  string(defaultValue: "your.email@gmail.com", description: 'email for notifications', name: 'notification_email')
   //}
environment {
firstEnvVar= 'FIRST_VAR'
secondEnvVar= 'SECOND_VAR'
thirdEnvVar= 'THIRD_VAR'
}
    stages {
        stage('Test'){
             //conditional for parameter
            //when {
            //    environment name: 'run_test_only', value: 'yes'
            //}
            steps{
                script{
                    sshagent (credentials: ['jenkins']) {
    
    sh '''
    ssh -o StrictHostKeyChecking=no ocadmin@10.230.170.129 "cd /var/opt/OC/simulator/tomcat-simulator_0/bin && ./shutdown.sh
    sleep 20
    ./startup.sh
    "
    '''
  }
                  }
            }
        }
    }
}

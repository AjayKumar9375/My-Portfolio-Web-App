pipeline{
    agent any
    
    
    stages{
    //     stage("Checkout"){
    //         steps{
    //             git url: 'https://github.com/AjayKumar9375/My-Portfolio-Web-App.git', branch: 'master'
        
    //         }
    //     }
        
        stage("Build"){
            steps{
                bat 'docker build -t portfolio-app .'
            }
        }
        stage("Deploy"){
            steps{
                script {
                    withCredentials([usernamePassword(credentialsId: 'DockerHub_Pass', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                        // Use the variables to log into a registry, for example:
                        bat 'docker login -u %DOCKER_USER% -p %DOCKER_PASS%'
                        // bat 'docker push ajaykumar9375/ansible_managed_node:latest'
                        def imageTag = "${env.BUILD_NUMBER}"
                        bat "docker tag portfolio-app ajaykumar9375/portfolio-app:v.${imageTag}"
                        bat "docker push ajaykumar9375/portfolio-app:v.${imageTag}"
                    }
                }
            }
        }
    }
}
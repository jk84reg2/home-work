pipline {
  agent {
    docker {
      image 'jk84reg2/boxfuse:v1'
    }
  }
    stages {
       stage ('Get prod app image container ubuntu20.04_prod_boxfuse-app') {
            steps {
                git 'https://github.com/jk84reg2/home-work.git'
            }
       }
       stage ('Get project Boxfuse') {
            steps {
                git 'https://github.com/boxfuse/boxfuse-sample-java-war-hello.git'
            }
        }
        stage ('Build Boxfuse') {
            steps {
                sh 'cd boxfuse-sample-java-war-hello && mvn package'
            }
        }
        stage ('Create docker prod image container') {
            steps {
		sh 'cp /root/boxfuse-sample-java-war-hello/target/hello-1.0.war /root/home-work/DZ-11'
                sh 'cd /root/home-work/DZ-11 && docker build -t ubuntu18.04_prod_boxfuse-app -f HW-11__prod.Dockerfile .'
                sh 'docker image tag ubuntu18.04_prod_boxfuse-app jk84reg2/boxfuse && docker login && docker push jk84reg2/boxfuse'
            }
        }
        stage ('Run prod image container on prod node') {
            steps {
                sh 'ssh root@vm-prod && docker pull jk84reg/boxfuse && docker run -d -p 8080:8080 ubuntu18.04_prod_boxfuse-app'
            }
        }
    }
}
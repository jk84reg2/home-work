pipline {
  agent {
    docker {
      image 'Путь до DockerHub, в котором размещен образ контейнера для сборки артифакта - ubuntu20.04_build_java'
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
                sh 'cd /boxfuse-sample-java-war-hello && mvn package'
            }
        }
        stage ('Create docker prod image container') {
            steps {
                sh 'cd /jk84reg2/home-work/DZ-11 && build -t ubuntu20.04_prod_boxfuse-app -f HW-11__prod.Dockerfile .'
                sh 'docker image tag ubuntu20.04_prod_boxfuse-app jk84reg/boxfuse && docker login && docker push ubuntu20.04_prod_boxfuse-app'
            }
        }
        stage ('Run prod image container on prod node') {
            steps {
                sh 'ssh root@vm-prod && docker pull jk84reg/Boxfuse && docker run -d -p 8080:8080 ubuntu20.04_prod_boxfuse-app'
            }
        }
  }
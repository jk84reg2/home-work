pipline {
  agent {
    docker {
      image 'ubuntu20.04_build_java_template'
    }
  }
    stages {
        stage ('Get project Boxfuse') {
            steps {
                git ' https://github.com/boxfuse/boxfuse-sample-java-war-hello.git'
            }
        }
        stage ('Build Boxfuse') {
            steps {
                sh 'mvn package'
            }
        }
        stage ('Create docker image') {
            steps {
                # скопировать артефакт в образ контейнера
		        # собрать обращ контейнера docker build -t ubuntu20.04_prod_boxfuse-app
		        # передать контейнер в докерхаб

            }
        }

        }

    }

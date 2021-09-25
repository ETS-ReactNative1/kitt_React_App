pipeline {
   agent any
    }
  stages {
    stage('Clone') {
      steps {
        git 'https://github.com/BorhenHammami/kilt_react.git'
   
      }
    
    }
    stage('Install Packages') {
      steps {
        sh 'npm install npm@latest -g'
      }
    }
    stage('Test and Build') {
      parallel {
        stage('Run Tests') {
          steps {
            sh 'npm run test'
          }
        }
        stage('Create Build Artifacts') {
          steps {
            sh 'npm run build'
          }
       }
       
      }
    }
    }    
}

pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git 'https://github.com/BorhenHammami/kilt_react.git'
   
      }
    
    }
    stage('Install Packages') {
      steps {
        sh 'npm install --legacy-peer-deps'
      }
    }
       
        stage('Create Build Artifacts') {
          steps {
            sh 'npm run build'
          }
       }
    
     
        stage('ZIP and Deploy') {
          steps {
             sh '/var/lib/jenkins/workspace/copy.sh' 
      
      }
    }
    
    }    
}

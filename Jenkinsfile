pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git 'https://github.com/BorhenHammami/React_project'
   
      }
    
    }
    stage('Install Packages') {
      steps {
        sh 'npm install'
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
       stage('ZIP') {
          steps {
            sh 'zip -r build.zip ./build'
        }
         }
        stage('Upload') {
          steps {
            sh '''#!/bin/bash
                 sudo scp -i Machine1.pem /var/lib/jenkins/workspace/kitt/build.zip ubuntu@3.144$

      
      }
       }
      }
    }
    }    
}

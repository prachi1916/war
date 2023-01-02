pipeline{
   agent{
       label{
            label "built-in"
           customWorkspace "/mnt/project/"
}
}
    stages{
      stage ('git clone'){
         steps {
           sh "rm -rf war"
           sh "git clone https://github.com/prachi1916/war.git"
           sh "chmod -R 777 war"
}
}
      stage ('create image & contanainer'){
        steps {
           dir ('/mnt/project/war/'){
          sh "docker build -t mytomcat:1.0 ."
          sh "docker run -itdp 8082:8080 --name test mytomcat:1.0"
}
}
}

}

}

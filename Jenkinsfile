node{
    stage('checkout')
    {
        checkout scm
    }
    stage('execute shell script')
    {
        try{
            sh 'chmod +x curl.sh'
            sh './curl.sh Akhila 119394570c4249a12fdd6a1da337a57c1d'
        }catch(Exception ex)
        {
            echo ex.getMessage()
        }

    }
}
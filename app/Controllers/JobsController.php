<?php

namespace App\Controllers;

use App\Models\Job;
use Respect\Validation\Validator as v;

class JobsController extends BaseController
{

    public function getAddJobAction($request)
    {
        $responseMessage = '';

        if ($request->getMethod() == 'POST') {

            $postData = $request->getParsedBody();
            $jobValidator = v::key('title', v::stringType()->notEmpty())
                ->key('description', v::stringType()->notEmpty());       

            try {
                $jobValidator->assert($postData);
                $postData = $request->getParsedBody();

                $files=$request->getUploadedFiles();
                $logo= $files['logo'];

                if ($logo->getError()==UPLOAD_ERR_OK){
                    // $fileName = $logo->getClientFilename();
                    $fileName = $postData['filename'];
                    $logo->moveTo("uploads/$fileName".".jpg");
                }
                
                $job = new Job();
                $job->title = $postData['title'];
                $job->description = $postData['description'];
                $job->logo = $postData['filename'];
                $job->save();

                $responseMessage='Saved';
            } catch (\Exception $e) {
                $responseMessage=$e->getMessage();
            }

            return $this->renderHTML('addJob.twig',['responseMessage'=>$responseMessage]);

            //    var_dump(); // true

            // $postData=$request->getParsedBody();
            // $job = new Job();
            // $job->title = $postData['title'];
            // $job->description = $postData['description'];
            // $job->save();
        }


        return $this->renderHTML('addJob.twig');
    }
}

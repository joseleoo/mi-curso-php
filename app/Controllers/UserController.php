<?php

namespace App\Controllers;

use App\Models\User;
use Respect\Validation\Validator as v;

class UserController extends BaseController
{

    public function getAddUserAction($request)
    {
        $responseMessage = '';

        if ($request->getMethod() == 'POST') {

            $postData = $request->getParsedBody();
            $userValidator = v::key('name', v::stringType()->notEmpty())
                ->key('password', v::stringType()->notEmpty());       

            try {
                $userValidator->assert($postData);
                $postData = $request->getParsedBody();
                          
                $user = new User();
                $user->name = $postData['name'];
                $user->password = password_hash($postData['password'], PASSWORD_DEFAULT);             
                $user->save();

                $responseMessage='User saved';
            } catch (\Exception $e) {
                $responseMessage=$e->getMessage();
            }

            return $this->renderHTML('addUser.twig',['responseMessage'=>$responseMessage]);

            //    var_dump(); // true

            // $postData=$request->getParsedBody();
            // $job = new Job();
            // $job->title = $postData['title'];
            // $job->description = $postData['description'];
            // $job->save();
        }


        return $this->renderHTML('addUser.twig');
    }
}

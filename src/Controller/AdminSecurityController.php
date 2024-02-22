<?php

namespace App\Controller;

use App\Entity\Admin;
use App\Form\LoginType;
use App\Form\RegisterAdminType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class AdminSecurityController extends AbstractController
{
    /**
     * @Route("/login", name="app_login")
     */
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        // if ($this->getUser()) {
        //     return $this->redirectToRoute('target_path');
        // }

        $form = $this->createForm(LoginType::class);

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', 
        [
        'last_username' => $lastUsername, 
        'error' => $error,
        'form' => $form->createView()
    ]);
    }

     /**
     * @Route("/register", name="app_register")
     */
    public function register(Request $request, UserPasswordHasherInterface $encoder, EntityManagerInterface $em): Response
    {
        $admin = new Admin();
        $form = $this->createForm(RegisterAdminType::class, $admin);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Encode the plain password
            $password = $encoder->hashPassword($admin, $admin->getPassword());

            $roles = ["ROLE_ADMIN"];
            $admin->setRoles($roles);

            $admin->setPassword($password);

            // Persist the admin
            $em->persist($admin);
            $em->flush();

            //message flash
            $message = "Votre inscription a bien été enregistrée, vous pouvez connecter maintenant, merci pour votre confiance!!!";
            $this->addFlash(
                'success',
                $message
            );

            // Redirect to some success page
            return $this->redirectToRoute('app_login');
        }

        return $this->render('security/register.html.twig', [
            'form' => $form->createView(),

        ]);
    }

    /**
     * @Route("/logout", name="app_logout")
     */
    public function logout(): void
    {
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }
}

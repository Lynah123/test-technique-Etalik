<?php

namespace App\DataFixtures;

use Faker\Factory;
use App\Entity\Admin;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class AppFixtures extends Fixture
{
    private $passwordEncoder;

    public function __construct(UserPasswordHasherInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }

    
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create('fr-FR');

        $admin = new Admin();
        $password = $this->passwordEncoder->hashPassword($admin, 'admin123');
        $admin->setFirstName('Administrateur')
              ->setLastName('Administrateur')
              ->setEmail('admin@example.com')
              ->setPassword($password)
              ->setRoles(['ROLE_ADMIN']);

        $manager->persist($admin);

        $manager->flush();
    }
}

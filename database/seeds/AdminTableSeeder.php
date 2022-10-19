<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Spatie\Permission\PermissionRegistrar;
use App\User;

class AdminTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        app()[PermissionRegistrar::class]->forgetCachedPermissions();
        $user = User::create(array(
            'name' => 'Administrador del sistema',
            'email' => 'admin@localhost.com',
            'password' => bcrypt('123456'),
        ));

        $role = Role::create(['name' => 'admin']);
        $permissions = Permission::create(['name' => 'admin']);
        $user->assignRole($role);
        $user->givePermissionTo($permissions);
        
        $user1 = User::create(array(
            'name' => 'Operaraio',
            'email' => 'operario@localhost.com',
            'password' => bcrypt('123456')
        ));
        $role1 = Role::create(['name' => 'operario']);
        $permissions = Permission::create(['name' => 'ver'],['name' => 'escribir']);
        $role->syncPermissions($permissions);
        $user1->assignRole($role1);
    }
}

@extends('adminlte::page')
<!-- , ['iFrameEnabled' => true] -->
@section('title', 'Listado de usuario')

@section('content_header')

<h1>Listado de usuarios</h1>

@stop

@section('content')
<section class="content">
  <div class="row">
    <div class="col-md-12">
      <div class="card card-info">
        <!-- <div class="card-header"> -->
        <!-- <h3 class="card-title">Listado de usuarios</h3> -->

        <!-- <div class="card-tools">
      <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
        <i class="fas fa-minus"></i>
      </button>
    </div>
  </div> -->
        <div class="card-body p-0" style="display: block;">
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th>Nombre</th>
                  <th>Email</th>
                  <th>Rol</th>
                  <th>Usuario creación</th>
                  <th>Fecha creación</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                @foreach($users as $user)
                <tr>
                  <td>{{$user->name}}</td>
                  <td>{{$user->email}}</td>
                  <td>
                    @foreach($user->roles as $role)
                    {{$role->name}},
                    @endforeach
                  </td>
                  <td>{{$user->usuacreacion}}</td>
                  <td>{{$user->created_at}}</td>
                  <td class="text-right py-0 align-middle">
                    <div class="btn-group btn-group-sm">
                      <button class="btn btn-primary" onclick="editUser({{$user}})" type="button"><i class="fas fa-edit"></i></button>
                      <button class="btn btn-info" onclick="showUser({{$user}})" type="button"><i class="fas fa-eye"></i></button>
                      <button class="btn btn-danger" onclick="deleteUser({{$user->id}})" type="button"><i class="fas fa-trash"></i></button>

                    </div>
                  </td>
                </tr>
                @endforeach
              </tbody>
            </table>
          </div>
        </div>
        <!-- /.card-body -->
      </div>
    </div>
  </div>
</section>
@stop
@include('admin.users.asset.form')
@section('js')
<script src="{{asset('js/plugins/sweetalert.min.js')}}"> </script>
<script src="{{asset('js/admin/admin.js')}}"> </script>
<script src="{{asset('js/util.js')}}"> </script>
@stop

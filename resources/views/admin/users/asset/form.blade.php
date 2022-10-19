@extends('layouts.modal')
@section('form')
<form class="form-send-admin">
    <div class="row">
        <div class="col-6">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Nombre" name="name" id="name">
            </div>
        </div>
        <div class="col-6">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Email" name="email" id="email">
            </div>
        </div>
        <div class="col-6">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Contraseña" name="password" id="passwprd">
            </div>
        </div>
        <div class="col-6">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Confirmar contraseña" name="password_confirmed" id="password_confirmed">
            </div>
        </div>
        <div class="col-6">
            <button class="btn btn-success" onclick="sendUser()">Guardar</button>
        </div>
    </div>

</form>


@endsection
@extends('adminlte::page')
<!-- , ['iFrameEnabled' => true] -->
@section('title', 'Dashboard')

@section('content_header')
<h1>Dashboard</h1>
@stop

@section('content')
<p>Welcome to this beautiful admin panel.</p>
@stop

@section('css')
<link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
<script src="{{asset('js/plugins/sweetalert.min.js')}}"> </script>
<script src="{{asset('js/admin/admin.js')}}"> </script>
<script src="{{asset('js/util.js')}}"> </script>
@stop
@include('layouts.modal')
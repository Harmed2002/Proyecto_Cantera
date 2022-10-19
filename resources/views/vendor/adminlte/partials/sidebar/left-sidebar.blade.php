<aside class="main-sidebar {{ config('adminlte.classes_sidebar', 'sidebar-dark-primary elevation-4') }}">

	{{-- Sidebar brand logo --}}
	@if(config('adminlte.logo_img_xl'))
	@include('adminlte::partials.common.brand-logo-xl')
	@else
	@include('adminlte::partials.common.brand-logo-xs')
	@endif

	{{-- Sidebar menu --}}
	<div class="sidebar">
		<nav class="pt-2">
			<ul class="nav nav-pills nav-sidebar flex-column " data-widget="treeview" role="menu">
				<li class="nav-header ">
					MENÚ
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">
						<i class="fas fa-boxes "></i>
						<p>
							Inventario
						</p>
					</a>
				</li>
				@if($user->hasAllDirectPermissions(['all']))
				<li class="nav-item has-treeview ">
					<a class="nav-link  " href="">
						<i class="fas fa-user-lock "></i>
						<p>
							Administrador
							<i class="fas fa-angle-left right"></i>
						</p>
					</a>
					<ul class="nav nav-treeview">
						<li class="nav-item has-treeview ">
							<a class="nav-link  " href="">
								<i class="fas fa-user-friends "></i>
								<p>
									Usuarios
									<i class="fas fa-angle-left right"></i>
								</p>
							</a>
							<ul class="nav nav-treeview">
								<li class="nav-item">
									<a class="nav-link" href="{{route('listUsers')}}">
										<i class="fas fa-list-ul "></i>
										<p>
											Listado de usuarios
										</p>
									</a>
								</li>
							</ul>
						</li>
						<li class="nav-item has-treeview ">
							<a class="nav-link  " href="">
								<i class="fas fa-user-check "></i>
								<p>
									Permisos
									<i class="fas fa-angle-left right"></i>
								</p>
							</a>
							<ul class="nav nav-treeview">
								<li class="nav-item">
									<a class="nav-link  " href="{{route('listPermissions')}}">
										<i class="fas fa-list-ul "></i>
										<p>
											Listado de permisos
										</p>
									</a>
								</li>
							</ul>

						</li>
						<li class="nav-item has-treeview ">
							<a class="nav-link  " href="">
								<i class="fas fa-user-tag "></i>
								<p>
									Roles
									<i class="fas fa-angle-left right"></i>
								</p>
							</a>
							<ul class="nav nav-treeview">
								<li class="nav-item">
									<a class="nav-link  " href="{{route('listRoles')}}">
										<i class="fas fa-list-ul "></i>
										<p>
											Listado de roles
										</p>
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				@endif
			</ul>
		</nav>
	</div>

</aside>
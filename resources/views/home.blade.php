@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    {{ __('You are logged in!') }}
                    <br />
                    <a href="{{route('category.index') }}" style="font-size: 25px;">Manage Category</a><br/>
                    <a href="{{route('blog.index') }}" style="font-size: 25px;">Manage Blog</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
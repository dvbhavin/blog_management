@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Manage Blog</div>
                <div class="card-body">
                    <a  href="{{route('blog.create')}}" class="btn btn-success" style="float:right;margin-bottom:5px;">Add Blog</a>    
                    <a  href="{{route('home')}}" class="btn btn-default" style="float:right;margin-bottom:5px;">Back Main Menu</a>    
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>Name</th>                                
                                <th>Category</th>                                
                                <th width="280px">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($blog as $row)
                            <tr>
                                <td>{{ $row->id }}</td>
                                <td>{{ $row->title }}</td>                                
                                <td>{{ $row->category->name }}</td>                                
                                <td>
                                    <form action="{{ route('blog.destroy',$row->id) }}" method="Post">
                                        <a class="btn btn-primary" href="{{ route('blog.edit',$row->id) }}">Edit</a>
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger">Delete</button>
                                    </form>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection